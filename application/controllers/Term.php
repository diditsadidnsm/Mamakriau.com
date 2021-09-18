<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Term extends CI_Controller {

	public function index()
	{
		$this->load->view('layouts/_header', $data);
		$this->load->view('layouts/_navbar', $data);
		$this->load->view('pages/term/index', $data);
		$this->load->view('layouts/_footer');
	}
}
