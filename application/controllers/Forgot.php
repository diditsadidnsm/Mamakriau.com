<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Forgot extends MY_Controller
{

	public function index($page = null)
	{
		$data['title'] = 'Recover Passowrd';
		
		$this->load->view('pages/auth/forgot', $data);
	}
    

}

/* End of file Forgot.php */