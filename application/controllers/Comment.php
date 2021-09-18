<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Contact extends MY_Controller
{
    
    public function __construct()
	{
		parent::__construct();
		$this->load->model('comment_model');
	}

	public function index($page = null)
	{

		{
		if (!$_POST) {
			$input	= (object) $this->comment_model->getDefaultValues();
		} else {
			$input	= (object) $this->input->post(null, true);
		}

		if (!$this->comment_model->validate()) {
			$data['input']			= $input;
			$data['form_action']	= base_url('blog/detail');

			$this->load->view('layouts/_header', $data);
		    $this->load->view('layouts/_navbar', $data);
		    $this->load->view('pages/blog/detail', $data);
		    $this->load->view('layouts/_footer');
			return;
		}

		if ($this->comment_model->create($input)) {
			$this->session->set_flashdata('success', 'Pesan anda telah kami terima, Terima Kasih atas Feedback yang anda berikan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('blog/detail'));
	    }
	
	}
	
}

/* End of file Contact.php */