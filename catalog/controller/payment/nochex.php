<?php
// Nochex via form will work for both simple "Seller" account and "Merchant" account holders
// Nochex via APC maybe only avaiable to "Merchant" account holders only - site docs a bit vague on this point
class ControllerPaymentNochex extends Controller {
	
	protected function index() {
		
		$this->load->language('payment/nochex');
		
		$this->data['button_confirm']       = $this->language->get('button_confirm');
		$this->data['button_back']          = $this->language->get('button_back');

        $this->data['action']               = 'https://secure.nochex.com/'; // This is a constant for both test and live

		$this->load->model('checkout/order');

		$order_info                         = $this->model_checkout_order->getOrder($this->session->data['order_id']);

		$this->data['error'] = (isset($this->session->data['error'])) ? $this->session->data['error'] : NULL;
		unset($this->session->data['error']);
				
		$this->data['fields'] = array();
		
        // Nochex minimum requirements
        // The merchant ID is usually your Nochex registered email address but can be altered for "Merchant" accounts see below
        $this->data['fields']['merchant_id']          = $this->config->get('nochex_email');
       
	   	if ($this->config->get('nochex_email') != $this->config->get('nochex_merchant')){ // This MUST be changed on your Nochex account!!!!
            $this->data['fields']['merchant_id']      = $this->config->get('nochex_merchant');
        }
        
        $this->data['fields']['amount']               = $this->currency->format($order_info['total'], 'GBP', FALSE, FALSE);
        // End minimum requirements

        $this->data['fields']['order_id']             = $this->session->data['order_id'];
        $this->data['fields']['description']          = (($this->config->get('config_name')) ? $this->config->get('config_name') : $this->config->get('config_store'));

		$this->data['fields']['billing_fullname']     = $order_info['payment_firstname'] . ' ' . $order_info['payment_lastname'];
        if ($order_info['payment_address_2']) {
            $this->data['fields']['billing_address']  = $order_info['payment_address_1'] . "\r\n" . $order_info['payment_address_2'] . "\r\n" . $order_info['payment_city'] . "\r\n" . $order_info['payment_zone'] . "\r\n";
        } else {
            $this->data['fields']['billing_address']  = $order_info['payment_address_1'] . "\r\n" . $order_info['payment_city'] . "\r\n" . $order_info['payment_zone'] . "\r\n";
        }
        $this->data['fields']['billing_postcode']     = $order_info['payment_postcode'];

        $this->data['fields']['delivery_fullname']    = $order_info['shipping_firstname'] . ' ' . $order_info['shipping_lastname'];
        if ($order_info['shipping_address_2']) {
            $this->data['fields']['fields']['delivery_address'] = $order_info['shipping_address_1'] . "\r\n" . $order_info['shipping_address_2'] . "\r\n" . $order_info['shipping_city'] . "\r\n" . $order_info['shipping_zone'] . "\r\n";
        } else {
            $this->data['fields']['delivery_address'] = $order_info['shipping_address_1'] . "\r\n" . $order_info['shipping_city'] . "\r\n" . $order_info['shipping_zone'] . "\r\n";
        }
        $this->data['fields']['delivery_postcode']    = $order_info['shipping_postcode'];
        
        $this->data['fields']['email_address']        = $order_info['email'];
        $this->data['fields']['customer_phone_number']= $order_info['telephone'];
        
		$this->data['fields']['hide_billing_details'] = 'true'; // So customer can't change address settings

        $this->data['fields']['success_url']        = HTTPS_SERVER . 'index.php?route=checkout/success';
        $this->data['fields']['cancel_url']         = HTTPS_SERVER . 'index.php?route=checkout/payment';
        $this->data['fields']['declined_url']       = HTTPS_SERVER . 'index.php?route=payment/nochex/callback&method=decline';
        $this->data['fields']['callback_url']       = HTTPS_SERVER . ('index.php?route=payment/nochex/callback&order=' . $this->session->data['order_id']);

        if ($this->config->get('nochex_test')) {
			$this->data['fields']['test_transaction'] = '100';
			$this->data['fields']['test_success_url'] = HTTPS_SERVER . 'index.php?route=checkout/success';
		}
        
		if ($this->request->get['route'] != 'checkout/guest/confirm') {
			$this->data['back'] = HTTPS_SERVER . 'index.php?route=checkout/payment';
		} else {
			$this->data['back'] = HTTPS_SERVER . 'index.php?route=checkout/guest';
		}
		
		$this->id = 'payment';

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/nochex.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/payment/nochex.tpl';
		} else {
			$this->template = 'default/template/payment/nochex.tpl';
		}	
		
		$this->render();
	}

	public function confirm() {
		
	}
	
	public function callback() {
				
		$this->load->language('payment/nochex');
		
		if (isset($this->request->get['method']) && $this->request->get['method'] == 'decline') {
			$this->session->data['error'] = $this->language->get('error_declined');
			$this->redirect((isset($this->session->data['guest'])) ? (HTTPS_SERVER . 'index.php?route=checkout/guest_step_3') : (HTTPS_SERVER . 'index.php?route=checkout/confirm')); 
		}
		
		if (isset($this->request->post['order_id'])) {
			$order_id = $this->request->post['order_id'];
		} else {
			$order_id = 0;
		}

		$this->load->model('checkout/order');
				
		$order_info = $this->model_checkout_order->getOrder($order_id);
		
		if (!$order_info) {
			$this->session->data['error'] = $this->language->get('error_no_order');
			$this->redirect((isset($this->session->data['guest'])) ? (HTTPS_SERVER . 'index.php?route=checkout/guest_step_3') : (HTTPS_SERVER . 'index.php?route=checkout/confirm')); 
		}
		
		// Fraud Verification Step.
		$request = '';
	
		foreach ($this->request->post as $key => $value) {
			$request .= '&' . $key . '=' . urlencode(stripslashes($value));
		}

		$ch = curl_init('https://www.nochex.com/nochex.dll/apc/apc');

		curl_setopt($ch, CURLOPT_POST, true);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $request);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_HEADER, false);
		curl_setopt($ch, CURLOPT_TIMEOUT, 30);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

		$response = curl_exec($ch);
		
		curl_close($ch);
				
		if (strcmp($response, 'AUTHORISED') == 0) {
			$this->model_checkout_order->confirm($order_id, $this->config->get('pp_standard_order_status_id'));
		} else {
			$this->model_checkout_order->confirm($order_id, $this->config->get('config_order_status_id'), 'Auto-Verification step failed. Manually check the transaction.');
		}
		
		// Since it returned, the customer should see success.
		// It's up to the store owner to manually verify payment.
		$this->redirect(HTTPS_SERVER  . 'index.php?route=checkout/success');
	}
}
?>