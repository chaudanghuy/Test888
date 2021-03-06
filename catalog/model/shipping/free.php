<?php
class ModelShippingFree extends Model {
	function getQuote($address) {
		$this->load->language('shipping/free');

		if ($this->config->get('free_status')) {
      		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone_to_geo_zone WHERE geo_zone_id = '" . (int)$this->config->get('free_geo_zone_id') . "' AND country_id = '" . (int)$address['country_id'] . "' AND (zone_id = '" . (int)$address['zone_id'] . "' OR zone_id = '0')");

      		if (!$this->config->get('free_geo_zone_id')) {
        		$status = TRUE;
      		} elseif ($query->num_rows) {
        		$status = TRUE;
      		} else {
        		$status = FALSE;
      		}
			
			// If any products in the cart are not eligible for this shipping, then don't show free shipping option
			if ($this->config->get('free_product')) {
				$products = unserialize($this->config->get('free_product'));

				foreach ($this->cart->getProducts() as $product) {
					if (!in_array($product['product_id'], $products)) {
						if ($this->config->get('free_inclusive')) {
							$status = false;
							break;
						} else {
							$status = true;
						}
					} else {
						if ($this->config->get('free_inclusive')) {
							$status = true;
						} else {
							$status = false;
							break;
						}
					}
				}
			}
		
			if ($this->cart->getSubTotal() < $this->config->get('free_total')) {
				$status = FALSE;
			}
			
		} else {
			$status = FALSE;
		}
				
		$method_data = array();

		if ($status) {
			$quote_data = array();

      		$quote_data['free'] = array(
        		'id'           => 'free.free',
        		'title'        => $this->language->get('text_description'),
        		'cost'         => 0.00,
        		'tax_class_id' => 0,
				'text'         => $this->currency->format(0.00)
      		);

      		$method_data = array(
        		'id'         => 'free',
        		'title'      => $this->language->get('text_title'),
        		'quote'      => $quote_data,
				'sort_order' => $this->config->get('free_sort_order'),
        		'error'      => FALSE
      		);
		}

		return $method_data;
	}
}
?>