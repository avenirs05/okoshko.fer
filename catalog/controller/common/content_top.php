<?php
class ControllerCommonContentTop extends Controller {
	public function index($data) { 
    
    return $this->load->view('common/content_top', $data);
	}
}
