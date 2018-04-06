<?php
class ControllerCommonHeader extends Controller {
	public function index() {
    
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
    
    // Analytics
		$this->load->model('extension/extension');
    
		$data['analytics'] = array();    
		$analytics = $this->model_extension_extension->getExtensions('analytics');

		foreach ($analytics as $analytic) {
			if ($this->config->get($analytic['code'] . '_status')) {
				$data['analytics'][] = $this->load->controller('extension/analytics/' . $analytic['code'], $this->config->get($analytic['code'] . '_status'));
			}
		}
        
    if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
      $server = $this->config->get('config_ssl');
    } else {
      $server = $this->config->get('config_url');
    }

    if (is_file(DIR_IMAGE . $this->config->get('config_icon'))) {
			$this->document->addLink($server . 'image/' . $this->config->get('config_icon'), 'icon');
		}

		// Мои стили
		$this->document->addStyle(DIR_ACT_THEME . 'css/bootstrap.min.css');
		$this->document->addStyle(DIR_ACT_THEME . 'css/style.css');
		$this->document->addStyle(DIR_ACT_THEME . 'css/moskit.css');
		$this->document->addStyle(DIR_ACT_THEME . 'css/pushy.css');		
	
		$data['title'] = $this->document->getTitle();
		$data['base'] = $server;
		$data['description'] = $this->document->getDescription();
		$data['keywords'] = $this->document->getKeywords();
		$data['links'] = $this->document->getLinks();
		$data['styles'] = $this->document->getStyles();
		$data['scripts'] = $this->document->getScripts();
		$data['lang'] = $this->language->get('code');
		$data['direction'] = $this->language->get('direction');
    $data['name'] = $this->config->get('config_name');

		if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
			$data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$data['logo'] = '';
		}

		$this->load->language('common/header');
		$data['og_url'] = (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1')) ? HTTPS_SERVER : HTTP_SERVER) . substr($this->request->server['REQUEST_URI'], 1, (strlen($this->request->server['REQUEST_URI'])-1));
		$data['og_image'] = $this->document->getOgImage();

		$data['text_home'] = $this->language->get('text_home');

		// Wishlist
		if ($this->customer->isLogged()) {
			$this->load->model('account/wishlist');

			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), $this->model_account_wishlist->getTotalWishlist());
		} else {
			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));
		}

    $data['text_home'] = $this->language->get('text_home');
    $data['text_catalog'] = $this->language->get('text_catalog');
    $data['text_enter'] = $this->language->get('text_enter');
    $data['text_good_quantity'] = $this->language->get('text_good_quantity');
    $data['text_register'] = $this->language->get('text_register');

    $data['home'] = $this->url->link('common/home');
		$data['wishlist'] = $this->url->link('account/wishlist', '', true);
		$data['logged'] = $this->customer->isLogged();
		$data['account'] = $this->url->link('account/account', '', true);
		$data['register'] = $this->url->link('account/register', '', true);
		$data['login'] = $this->url->link('account/login', '', true);
		$data['order'] = $this->url->link('account/order', '', true);
		$data['transaction'] = $this->url->link('account/transaction', '', true);
		$data['download'] = $this->url->link('account/download', '', true);
		$data['logout'] = $this->url->link('account/logout', '', true);
		$data['shopping_cart'] = $this->url->link('checkout/cart');
		$data['checkout'] = $this->url->link('checkout/checkout', '', true);
		$data['contact'] = $this->url->link('information/contact');
		$data['telephone'] = $this->config->get('config_telephone');

		// Menu
		$this->load->model('catalog/category');
		$this->load->model('catalog/product');
		$data['categories'] = array();
		$categories = $this->model_catalog_category->getCategories(0);

		foreach ($categories as $category) {
				// Level 1
				$data['categories'][] = array(
					'name' => $category['name'],
					'href' => $this->url->link('product/category', 'path=' . $category['category_id'])
      );			
		}

		$data['language'] = $this->load->controller('common/language');
		$data['currency'] = $this->load->controller('common/currency');
		$data['search'] = $this->load->controller('common/search');
		$data['cart'] = $this->load->controller('common/cart');  
    
		return $this->load->view('common/header', $data);
	}
}
