<?php
class ControllerCommonHeader extends Controller {
	public function index($data) {

		// Мои стили
		$this->document->addStyle(DIR_ACT_THEME . 'css/bootstrap.min.css');
		$this->document->addStyle(DIR_ACT_THEME . 'css/style.css');
		$this->document->addStyle(DIR_ACT_THEME . 'css/moskit.css');
		$this->document->addStyle(DIR_ACT_THEME . 'css/pushy.css');		
    
    $data['og_url'] = (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1')) ? HTTPS_SERVER : HTTP_SERVER) . substr($this->request->server['REQUEST_URI'], 1, (strlen($this->request->server['REQUEST_URI']) - 1));
    $data['og_image'] = $this->document->getOgImage();
    $data['title'] = $this->document->getTitle();		
		$data['description'] = $this->document->getDescription();
		$data['keywords'] = $this->document->getKeywords();
		$data['links'] = $this->document->getLinks();
		$data['styles'] = $this->document->getStyles();
		$data['scripts'] = $this->document->getScripts();
		$data['lang'] = $this->language->get('code');
    $data['name'] = $this->config->get('config_name');

    if (is_file(DIR_IMAGE . $this->config->get('config_icon'))) {
      $this->document->addLink($data['server'] . 'image/' . $this->config->get('config_icon'), 'icon');
    }

    if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
			$data['logo'] = $data['server'] . 'image/' . $this->config->get('config_logo');
		} else {
			$data['logo'] = '';
		}
    
		return $this->load->view('common/header', $data);
	}
}
