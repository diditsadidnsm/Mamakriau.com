<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Brief extends MY_Controller
{
    
    private $id;

	public function __construct()
	{
		parent::__construct();
		$is_login	= $this->session->userdata('is_login');
		$this->id	= $this->session->userdata('id');

		if (! $is_login) {
			redirect(base_url());
			return;
		}
	}

	public function index($page = null)
	{

		{
		if (!$_POST) {
			$input	= (object) $this->brief->getDefaultValues();
		} else {
			$input	= (object) $this->input->post(null, true);
		}
		
		if (!empty($_FILES) && $_FILES['image']['name'] !== '') {
			$imageName	= url_title($input->fullname, '-', true) . '-' . date('YmdHis');
			$upload		= $this->brief->uploadImage('image', $imageName);
			if ($upload) {
				$input->image	= $upload['file_name'];
			} else {
				redirect(base_url('pages/brief/index'));
			}
		}

		if (!$this->brief->validate()) {
			$data['title']			= 'Creative Brief from Mamak Riau';
			$data['input']			= $input;
			$data['form_action']	= base_url('brief');

		    $this->load->view('pages/brief/index', $data);
			return;
		}

		if ($this->brief->create($input)) {
			$this->session->set_flashdata('success', 'Brief anda telah kami terima, Terima Kasih atas brief yang anda berikan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('brief/summary'));
	    }
	
	}
	
	public function summary($page = null)
	{
		
		$data['title']	    = $this->session->userdata('name');
		$data['content']	= $this->brief->where('id_user', $this->id)->get();
		
		$this->load->view('pages/brief/summary', $data);
	}

}