<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Design extends MY_Controller
{

	public function index($page = null)
	{
		$data['title']	= 'Get Your Design Here';
		
		
		$this->load->view('layouts/_header', $data);
		$this->load->view('layouts/_navbar', $data);
		$this->load->view('pages/design/index', $data);
		$this->load->view('layouts/_footer');
	}
    

}

/* End of file Design.php */