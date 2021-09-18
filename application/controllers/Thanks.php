<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Thanks extends CI_Controller {
    
	public function index()
	{
		$this->load->view('pages/thanks/index');
	}
}
