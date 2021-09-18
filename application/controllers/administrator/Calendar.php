<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Calendar extends MY_Controller
{

	public function __construct()
	{
		parent::__construct();
		$role = $this->session->userdata('role');
		if ($role != 'admin') {
			redirect(base_url('/'));
			return;
		}
	}

	public function index()
	{
        $data['title'] = 'Administrator Area';
		
		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar');
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_calendar');
		$this->load->view('administrator/material/nsm_footer');
	}
    
}

/* End of file Dashboard.php */