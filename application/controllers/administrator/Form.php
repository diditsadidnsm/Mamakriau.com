<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Form extends MY_Controller
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
		$data['title']		= 'Admin Page: Manage Primary Produk';
		$data['content']	= $this->form->select(
			[
				'form.id', 'form.title', 'form.sub', 'form.url', 'form.image'
			]
		)
			->paginate($page)
			->get();
		$data['total_rows']	= $this->form->count();
		$data['pagination']	= $this->form->makePagination(
			base_url('administrator/form'),
			2,
			$data['total_rows']
		);
		
		
		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar', $data);
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_form');
		$this->load->view('administrator/material/nsm_footer');
	}

	public function search($page = null)
	{
		if (isset($_POST['keyword'])) {
			$this->session->set_userdata('keyword', $this->input->post('keyword'));
		} else {
			redirect(base_url('administrator/form'));
		}

		$keyword	= $this->session->userdata('keyword');
		$data['title']		= 'Admin Page: Manage Primary Produk';
		$data['content']	= $this->form->select(
			[
				'form.id', 'form.title', 'form.sub', 'form.url', 'form.image'
			]
		)
			->paginate($page)
			->get();
		$data['total_rows']	= $this->form->count();
		$data['pagination']	= $this->form->makePagination(
			base_url('administrator/form/search'),
			3,
			$data['total_rows']
        );
        
		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar', $data);
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_form');
		$this->load->view('administrator/material/nsm_footer');
	}

	public function create()
	{
		if (!$_POST) {
			$input	= (object) $this->form->getDefaultValues();
		} else {
			$input	= (object) $this->input->post(null, true);
		}

		if (!empty($_FILES) && $_FILES['image']['name'] !== '') {
			$imageName	= url_title($input->title, '-', true) . '-' . date('YmdHis');
			$upload		= $this->form->uploadImage('image', $imageName);
			if ($upload) {
				$input->image	= $upload['file_name'];
			} else {
				redirect(base_url('administrator/form/create'));
			}
		}

		if (!$this->form->validate()) {
			$data['title']			= 'Admin Page: Create Primary Produk';
			$data['input']			= $input;
			$data['form_action']	= base_url('administrator/form/create');

			$this->load->view('administrator/material/nsm_header', $data);
		    $this->load->view('administrator/material/nsm_navbar', $data);
		    $this->load->view('administrator/material/nsm_sidebar');
		    $this->load->view('administrator/form/f_form');
		    $this->load->view('administrator/material/nsm_footer');
			return;
		}

		if ($this->form->create($input)) {
			$this->session->set_flashdata('success', 'Data berhasil disimpan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('administrator/form'));
	}

	public function edit($id)
	{
		$data['content'] = $this->form->where('id', $id)->first();

		if (!$data['content']) {
			$this->session->set_flashdata('warning', 'Maaf, data tidak dapat ditemukan');
			redirect(base_url('administrator/form'));
		}

		if (!$_POST) {
			$data['input']	= $data['content'];
		} else {
			$data['input']	= (object) $this->input->post(null, true);
		}

		if (!empty($_FILES) && $_FILES['image']['name'] !== '') {
			$imageName	= url_title($data['input']->title, '-', true) . '-' . date('YmdHis');
			$upload		= $this->form->uploadImage('image', $imageName);
			if ($upload) {
				if ($data['content']->image !== '') {
					$this->form->deleteImage($data['content']->image);
				}
				$data['input']->image	= $upload['file_name'];
			} else {
				redirect(base_url("administrator/form/edit/$id"));
			}
		}

		if (!$this->form->validate()) {
			$data['title']			= 'Admin Page: Edit Primary Produk';
			$data['form_action']	= base_url("administrator/form/edit/$id");

			$this->load->view('administrator/material/nsm_header', $data);
		    $this->load->view('administrator/material/nsm_navbar', $data);
		    $this->load->view('administrator/material/nsm_sidebar');
		    $this->load->view('administrator/form/f_form');
		    $this->load->view('administrator/material/nsm_footer');
			return;
		}


		if ($this->form->where('id', $id)->update($data['input'])) {
			$this->session->set_flashdata('success', 'Data berhasil disimpan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('administrator/form'));
	}

	public function delete($id)
	{
		if (!$_POST) {
			redirect(base_url('administrator/form'));
		}

		$form = $this->form->where('id', $id)->first();

		if (!$form) {
			$this->session->set_flashdata('warning', 'Maaf, data tidak dapat ditemukan');
			redirect(base_url('administrator/form'));
		}

		if ($this->form->where('id', $id)->delete()) {
			$this->form->deleteImage($form->image);
			$this->session->set_flashdata('success', 'Data sudah berhasil dihapus!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan!');
		}

        redirect(base_url('administrator/form'));
    }
}

/* End of file form.php */