<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index()
	{
	    $data[title] = 'Homepage Pricing'; 
	    
		$this->load->view('frontend/layouts/_header.php', $data);
		$this->load->view('frontend/layouts/_sidebar.php');
		$this->load->view('frontend/home/index.php');
		$this->load->view('frontend/layouts/_footer.php');
	}
}
