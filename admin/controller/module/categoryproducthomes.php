<?php
class ControllerModulecategoryproducthomes extends Controller {
	private $error = array(); 
	
	public function index() {   
		$this->load->language('module/categoryproducthomes');

		$this->document->title = $this->language->get('heading_title');
		
		$this->load->model('setting/setting');
		$this->load->model('catalog/category');
				
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
			$this->model_setting_setting->editSetting('categoryproducthomes', $this->request->post);		
					
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->redirect(HTTPS_SERVER . 'index.php?route=extension/module&token=' . $this->session->data['token']);
		}
				
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_left'] = $this->language->get('text_left');
		$this->data['text_right'] = $this->language->get('text_right');
		
		$this->data['entry_position'] = $this->language->get('entry_position');
		$this->data['entry_category'] = $this->language->get('entry_category');
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_limit'] = $this->language->get('entry_limit');
		$this->data['entry_headingtitle'] = $this->language->get('entry_headingtitle');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
		
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		
		
		
		$results = $this->model_catalog_category->getCategories(0);

		foreach ($results as $result) {
							
			$this->data['categories'][] = array(
				'category_id' => $result['category_id'],
				'name'        => $result['name']
			);
		}
		
		
		
		

 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

  		$this->document->breadcrumbs = array();

   		$this->document->breadcrumbs[] = array(
       		'href'      => HTTPS_SERVER . 'index.php?route=common/home&token=' . $this->session->data['token'],
       		'text'      => $this->language->get('text_home'),
      		'separator' => FALSE
   		);

   		$this->document->breadcrumbs[] = array(
       		'href'      => HTTPS_SERVER . 'index.php?route=extension/module&token=' . $this->session->data['token'],
       		'text'      => $this->language->get('text_module'),
      		'separator' => ' :: '
   		);
		
   		$this->document->breadcrumbs[] = array(
       		'href'      => HTTPS_SERVER . 'index.php?route=module/categoryproducthomes&token=' . $this->session->data['token'],
       		'text'      => $this->language->get('heading_title'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = HTTPS_SERVER . 'index.php?route=module/categoryproducthomes&token=' . $this->session->data['token'];
		
		$this->data['cancel'] = HTTPS_SERVER . 'index.php?route=extension/module&token=' . $this->session->data['token'];

		if (isset($this->request->post['categoryproducthomes_position'])) {
			$this->data['categoryproducthomes_position'] = $this->request->post['categoryproducthomes_position'];
		} else {
			$this->data['categoryproducthomes_position'] = $this->config->get('categoryproducthomes_position');
		}
		
		if (isset($this->request->post['categoryproducthomes_category'])) {
			$this->data['categoryproducthomes_category'] = $this->request->post['categoryproducthomes_category'];
		} else {
			$this->data['categoryproducthomes_category'] = $this->config->get('categoryproducthomes_category');
		}
		
		if (isset($this->request->post['categoryproducthomes_heading'])) {
			$this->data['categoryproducthomes_heading'] = $this->request->post['categoryproducthomes_heading'];
		} else {
			$this->data['categoryproducthomes_heading'] = $this->config->get('categoryproducthomes_heading');
		}
		
		if (isset($this->request->post['categoryproducthomes_limit'])) {
			$this->data['categoryproducthomes_limit'] = $this->request->post['categoryproducthomes_limit'];
		} else {
			$this->data['categoryproducthomes_limit'] = $this->config->get('categoryproducthomes_limit');
		}
		
		
		if (isset($this->request->post['categoryproducthomes_status'])) {
			$this->data['categoryproducthomes_status'] = $this->request->post['categoryproducthomes_status'];
		} else {
			$this->data['categoryproducthomes_status'] = $this->config->get('categoryproducthomes_status');
		}
		
		if (isset($this->request->post['categoryproducthomes_sort_order'])) {
			$this->data['categoryproducthomes_sort_order'] = $this->request->post['categoryproducthomes_sort_order'];
		} else {
			$this->data['categoryproducthomes_sort_order'] = $this->config->get('categoryproducthomes_sort_order');
		}				
		
		$this->template = 'module/categoryproducthomes.tpl';
		$this->children = array(
			'common/header',	
			'common/footer'	
		);
		
		$this->response->setOutput($this->render(TRUE), $this->config->get('config_compression'));
	}
	
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/categoryproducthomes')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}	
	}
}
?>