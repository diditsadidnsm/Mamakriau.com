<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Files extends MY_Controller 
{

	private $id;

	public function __construct()
	{
		parent::__construct();
		$role = $this->session->userdata('role');
		if ($role != 'member') {
			redirect(base_url('/'));
			return;
		}
	}

	public function index()
	{
        $data['title'] = $this->session->userdata('name');
		
		$this->load->view('member/material/nam_header', $data);
		$this->load->view('member/material/nam_topbar');
		$this->load->view('member/material/nam_navbar', $data);
		$this->load->view('member/pages/nsm_dashboard');
		$this->load->view('member/material/nam_footer');
	}

}

/* End of file Files.php */
