<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Mockup extends MY_Controller
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
		$data['title']		= 'Admin Page: Manage mockup Product';
		$data['content']	= $this->mockup->paginate($page)->get();
		$data['total_rows']	= $this->mockup->count();
		$data['pagination']	= $this->mockup->makePagination(
			base_url('administrator/mockup'),
			2,
			$data['total_rows']
		);

		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar', $data);
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_mockup');
		$this->load->view('administrator/material/nsm_footer');
	}

	public function search($page = null)
	{
		if (isset($_POST['keyword'])) {
			$this->session->set_userdata('keyword', $this->input->post('keyword'));
		} else {
			redirect(base_url('administrator/mockup'));
		}

		$keyword	= $this->session->userdata('keyword');
		$data['title']		= 'Admin Page: Manage mockup Product';
		$data['content']	= $this->mockup->like('title', $keyword)->paginate($page)->get();
		$data['total_rows']	= $this->mockup->like('title', $keyword)->count();
		$data['pagination']	= $this->mockup->makePagination(
			base_url('administrator/mockup/search'),
			3,
			$data['total_rows']
		);

		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar', $data);
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_mockup');
		$this->load->view('administrator/material/nsm_footer');
	}

	public function create()
	{
		if (!$_POST) {
			$input	= (object) $this->mockup->getDefaultValues();
		} else {
			$input	= (object) $this->input->post(null, true);
        }
        
        if (!empty($_FILES) && $_FILES['image']['name'] !== '') {
			$imageName	= url_title($input->title, '-', true) . '-' . date('YmdHis');
			$upload		= $this->mockup->uploadImage('image', $imageName);
			if ($upload) {
				$input->image	= $upload['file_name'];
			} else {
				redirect(base_url('administrator/mockup/create'));
			}
		}

		if (!$this->mockup->validate()) {
			$data['title']			= 'Admin Page: Create mockup Product';
			$data['input']			= $input;
			$data['form_action']	= base_url('administrator/mockup/create');

			$this->load->view('administrator/material/nsm_header', $data);
		    $this->load->view('administrator/material/nsm_navbar', $data);
		    $this->load->view('administrator/material/nsm_sidebar');
		    $this->load->view('administrator/form/f_mockup');
		    $this->load->view('administrator/material/nsm_footer');
			return;
		}

		if ($this->mockup->create($input)) {
			$this->session->set_flashdata('success', 'Data berhasil disimpan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('administrator/mockup'));
	}

	public function edit($id)
	{
		$data['content'] = $this->mockup->where('id', $id)->first();

		if (!$data['content']) {
			$this->session->set_flashdata('warning', 'Maaf! Data tidak ditemukan!');
			redirect(base_url('administrator/mockup'));
		}

		if (!$_POST) {
			$data['input']	= $data['content'];
		} else {
			$data['input']	= (object) $this->input->post(null, true);
        }
        
        if (!empty($_FILES) && $_FILES['image']['name'] !== '') {
			$imageName	= url_title($data['input']->title, '-', true) . '-' . date('YmdHis');
			$upload		= $this->mockup->uploadImage('image', $imageName);
			if ($upload) {
				if ($data['content']->image !== '') {
					$this->mockup->deleteImage($data['content']->image);
				}
				$data['input']->image	= $upload['file_name'];
			} else {
				redirect(base_url("administrator/mockup/edit/$id"));
			}
		}

		if (!$this->mockup->validate()) {
			$data['title']			= 'Admin Page: Edit mockup Product';
			$data['form_action']	= base_url("administrator/mockup/edit/$id");

			$this->load->view('administrator/material/nsm_header', $data);
		    $this->load->view('administrator/material/nsm_navbar', $data);
		    $this->load->view('administrator/material/nsm_sidebar');
		    $this->load->view('administrator/form/f_mockup');
		    $this->load->view('administrator/material/nsm_footer');
			return;
		}

		if ($this->mockup->where('id', $id)->update($data['input'])) {
			$this->session->set_flashdata('success', 'Data berhasil diperbaharui!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan.');
		}

		redirect(base_url('administrator/mockup'));
	}

	public function delete($id)
	{
		if (!$_POST) {
			redirect(base_url('administrator/mockup'));
		}

		if (!$this->mockup->where('id', $id)->first()) {
			$this->session->set_flashdata('warning', 'Maaf! Data tidak ditemukan.');
			redirect(base_url('administrator/mockup'));
		}

		if ($this->mockup->where('id', $id)->delete()) {
			$this->session->set_flashdata('success', 'Data sudah berhasil dihapus!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan.');
		}

		redirect(base_url('administrator/mockup'));
	}

	public function unique_slug()
	{
		$slug		= $this->input->post('slug');
		$id			= $this->input->post('id');
		$mockup	= $this->mockup->where('slug', $slug)->first();

		if ($mockup) {
			if ($id == $mockup->id) {
				return true;
			}
			$this->load->library('form_validation');
			$this->form_validation->set_message('unique_slug', '%s sudah digunakan!');
			return false;
		}

		return true;
	}
}

/* End of file mockup.php */