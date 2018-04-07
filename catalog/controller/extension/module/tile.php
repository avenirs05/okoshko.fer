<?php
class ControllerExtensionModuleTile extends Controller {
	public function index($data) {
		$this->load->language('extension/module/tile');

		$data['heading_title'] = $this->language->get('heading_title');

		return $this->load->view('extension/module/tile', $data);
	}
}