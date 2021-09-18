<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Word extends MY_Controller
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


	public function index($page = null)
	{
		$data['title']		= 'Admin Page: Manage Category Product';
		$data['content']	= $this->word->paginate($page)->get();
		$data['total_rows']	= $this->word->count();
		$data['pagination']	= $this->word->makePagination(
			base_url('administrator/word'),
			2,
			$data['total_rows']
		);

		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar', $data);
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_word');
		$this->load->view('administrator/material/nsm_footer');
	}

	public function search($page = null)
	{
		if (isset($_POST['keyword'])) {
			$this->session->set_userdata('keyword', $this->input->post('keyword'));
		} else {
			redirect(base_url('administrator/word'));
		}

		$keyword	= $this->session->userdata('keyword');
		$data['title']		= 'Admin Page: Manage Category Product';
		$data['content']	= $this->word->like('title', $keyword)->paginate($page)->get();
		$data['total_rows']	= $this->word->like('title', $keyword)->count();
		$data['pagination']	= $this->word->makePagination(
			base_url('administrator/word/search'),
			3,
			$data['total_rows']
		);

		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar', $data);
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_word');
		$this->load->view('administrator/material/nsm_footer');
	}

	public function create()
	{
		if (!$_POST) {
			$input	= (object) $this->word->getDefaultValues();
		} else {
			$input	= (object) $this->input->post(null, true);
        }
        
        if (!empty($_FILES) && $_FILES['image']['name'] !== '') {
			$imageName	= url_title($input->title, '-', true) . '-' . date('YmdHis');
			$upload		= $this->word->uploadImage('image', $imageName);
			if ($upload) {
				$input->image	= $upload['file_name'];
			} else {
				redirect(base_url('administrator/word/create'));
			}
		}

		if (!$this->word->validate()) {
			$data['title']			= 'Admin Page: Create Category Product';
			$data['input']			= $input;
			$data['form_action']	= base_url('administrator/word/create');

			$this->load->view('administrator/material/nsm_header', $data);
		    $this->load->view('administrator/material/nsm_navbar', $data);
		    $this->load->view('administrator/material/nsm_sidebar');
		    $this->load->view('administrator/form/f_word');
		    $this->load->view('administrator/material/nsm_footer');
			return;
		}

		if ($this->word->create($input)) {
			$this->session->set_flashdata('success', 'Data berhasil disimpan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('administrator/word'));
	}

	public function edit($id)
	{
		$data['content'] = $this->word->where('id', $id)->first();

		if (!$data['content']) {
			$this->session->set_flashdata('warning', 'Maaf! Data tidak ditemukan!');
			redirect(base_url('administrator/word'));
		}

		if (!$_POST) {
			$data['input']	= $data['content'];
		} else {
			$data['input']	= (object) $this->input->post(null, true);
        }
        
        if (!empty($_FILES) && $_FILES['image']['name'] !== '') {
			$imageName	= url_title($data['input']->title, '-', true) . '-' . date('YmdHis');
			$upload		= $this->word->uploadImage('image', $imageName);
			if ($upload) {
				if ($data['content']->image !== '') {
					$this->word->deleteImage($data['content']->image);
				}
				$data['input']->image	= $upload['file_name'];
			} else {
				redirect(base_url("administrator/word/edit/$id"));
			}
		}

		if (!$this->word->validate()) {
			$data['title']			= 'Admin Page: Edit Category Product';
			$data['form_action']	= base_url("administrator/word/edit/$id");

			$this->load->view('administrator/material/nsm_header', $data);
		    $this->load->view('administrator/material/nsm_navbar', $data);
		    $this->load->view('administrator/material/nsm_sidebar');
		    $this->load->view('administrator/form/f_word');
		    $this->load->view('administrator/material/nsm_footer');
			return;
		}

		if ($this->word->where('id', $id)->update($data['input'])) {
			$this->session->set_flashdata('success', 'Data berhasil diperbaharui!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan.');
		}

		redirect(base_url('administrator/word'));
	}

	public function delete($id)
	{
		if (!$_POST) {
			redirect(base_url('administrator/word'));
		}

		if (!$this->word->where('id', $id)->first()) {
			$this->session->set_flashdata('warning', 'Maaf! Data tidak ditemukan.');
			redirect(base_url('administrator/word'));
		}

		if ($this->word->where('id', $id)->delete()) {
			$this->session->set_flashdata('success', 'Data sudah berhasil dihapus!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan.');
		}

		redirect(base_url('administrator/word'));
	}

}

/* End of file Word.php */