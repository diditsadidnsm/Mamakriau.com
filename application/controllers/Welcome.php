<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {
    
    public function __construct()
	{
		parent::__construct();
		$is_login	= $this->session->userdata('is_login');

		if (! $is_login) {
			redirect(base_url());
			return;
		}
	}
    
	public function index()
	{
		$this->load->view('pages/welcome/index');
	}
}
