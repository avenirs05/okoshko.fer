<?php
class ControllerCommonHome extends Controller {
	public function index() {
    
    $this->load->language('common/header');

    $data['text_home'] = $this->language->get('text_home');
    $data['text_home'] = $this->language->get('text_home');
    $data['text_catalog'] = $this->language->get('text_catalog');
    $data['text_enter'] = $this->language->get('text_enter');
    $data['text_good_quantity'] = $this->language->get('text_good_quantity');
    $data['text_register'] = $this->language->get('text_register');

    $data['home'] = $this->url->link('common/home');
    $data['account'] = $this->url->link('account/account', '', true);
    $data['register'] = $this->url->link('account/register', '', true);
    $data['login'] = $this->url->link('account/login', '', true);
    $data['logout'] = $this->url->link('account/logout', '', true);

    
    // Определение корня сайта
    if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
      $data['server'] = $this->config->get('config_ssl');
    } else {
      $data['server'] = $this->config->get('config_url');
    }  

    $this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));    

		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}   
  
    // Раздел "Статьи" в админке
    $this->load->model('catalog/information');
    $informations = $this->model_catalog_information->getInformations();

    foreach ($informations as $information) {
      $clean = strip_tags(html_entity_decode($information['description']));
      $data['informations'][$information['title']] = $clean;
    }

    $data['subtitle'] = $data['informations']['Подзаголовок на Главной'];
    $data['phone_first'] = $data['informations']['Телефон_1'];
    $data['phone_second'] = $data['informations']['Телефон_2'];
    
    
    // Категории
    $this->load->model('catalog/category');
    $this->load->model('catalog/product');
    $data['categories'] = array();
    $categories = $this->model_catalog_category->getCategories(0);

    foreach ($categories as $category) {
      $data['categories'][] = array(
          'name' => $category['name'],
          'image' => $category['image'],
          'href' => $this->url->link('product/category', 'path=' . $category['category_id'])
      );
    }
    
    
    // Подконтроллеры
    $data['header'] = $this->load->controller('common/header', $data);
    $data['content_top'] = $this->load->controller('common/content_top', $data); 
    $data['footer'] = $this->load->controller('common/footer');
		
    $this->response->setOutput($this->load->view('common/home', $data));
	}
}
