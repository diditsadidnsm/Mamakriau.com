<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Support extends MY_Controller
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
		$data['content']	= $this->support->select(
			[
				'support.id', 'support.title', 'support.url', 'support.image'
			]
		)
			->paginate($page)
			->get();
		$data['total_rows']	= $this->support->count();
		$data['pagination']	= $this->support->makePagination(
			base_url('administrator/support'),
			2,
			$data['total_rows']
		);
		
		
		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar', $data);
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_support');
		$this->load->view('administrator/material/nsm_footer');
	}

	public function search($page = null)
	{
		if (isset($_POST['keyword'])) {
			$this->session->set_userdata('keyword', $this->input->post('keyword'));
		} else {
			redirect(base_url('administrator/support'));
		}

		$keyword	= $this->session->userdata('keyword');
		$data['title']		= 'Admin Page: Manage Primary Produk';
		$data['content']	= $this->support->select(
			[
				'support.id', 'support.title', 'support.image'
			]
		)
			->paginate($page)
			->get();
		$data['total_rows']	= $this->support->count();
		$data['pagination']	= $this->support->makePagination(
			base_url('administrator/support/search'),
			3,
			$data['total_rows']
        );
        
		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar', $data);
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_support');
		$this->load->view('administrator/material/nsm_footer');
	}

	public function create()
	{
		if (!$_POST) {
			$input	= (object) $this->support->getDefaultValues();
		} else {
			$input	= (object) $this->input->post(null, true);
		}

		if (!empty($_FILES) && $_FILES['image']['name'] !== '') {
			$imageName	= url_title($input->title, '-', true) . '-' . date('YmdHis');
			$upload		= $this->support->uploadImage('image', $imageName);
			if ($upload) {
				$input->image	= $upload['file_name'];
			} else {
				redirect(base_url('administrator/support/create'));
			}
		}

		if (!$this->support->validate()) {
			$data['title']			= 'Admin Page: Create Primary Produk';
			$data['input']			= $input;
			$data['form_action']	= base_url('administrator/support/create');

			$this->load->view('administrator/material/nsm_header', $data);
		    $this->load->view('administrator/material/nsm_navbar', $data);
		    $this->load->view('administrator/material/nsm_sidebar');
		    $this->load->view('administrator/form/f_support');
		    $this->load->view('administrator/material/nsm_footer');
			return;
		}

		if ($this->support->create($input)) {
			$this->session->set_flashdata('success', 'Data berhasil disimpan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('administrator/support'));
	}

	public function edit($id)
	{
		$data['content'] = $this->support->where('id', $id)->first();

		if (!$data['content']) {
			$this->session->set_flashdata('warning', 'Maaf, data tidak dapat ditemukan');
			redirect(base_url('administrator/support'));
		}

		if (!$_POST) {
			$data['input']	= $data['content'];
		} else {
			$data['input']	= (object) $this->input->post(null, true);
		}

		if (!empty($_FILES) && $_FILES['image']['name'] !== '') {
			$imageName	= url_title($data['input']->title, '-', true) . '-' . date('YmdHis');
			$upload		= $this->support->uploadImage('image', $imageName);
			if ($upload) {
				if ($data['content']->image !== '') {
					$this->support->deleteImage($data['content']->image);
				}
				$data['input']->image	= $upload['file_name'];
			} else {
				redirect(base_url("administrator/support/edit/$id"));
			}
		}

		if (!$this->support->validate()) {
			$data['title']			= 'Admin Page: Edit Primary Produk';
			$data['form_action']	= base_url("administrator/support/edit/$id");

			$this->load->view('administrator/material/nsm_header', $data);
		    $this->load->view('administrator/material/nsm_navbar', $data);
		    $this->load->view('administrator/material/nsm_sidebar');
		    $this->load->view('administrator/form/f_support');
		    $this->load->view('administrator/material/nsm_footer');
			return;
		}


		if ($this->support->where('id', $id)->update($data['input'])) {
			$this->session->set_flashdata('success', 'Data berhasil disimpan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('administrator/support'));
	}

	public function delete($id)
	{
		if (!$_POST) {
			redirect(base_url('administrator/support'));
		}

		$support = $this->support->where('id', $id)->first();

		if (!$support) {
			$this->session->set_flashdata('warning', 'Maaf, data tidak dapat ditemukan');
			redirect(base_url('administrator/support'));
		}

		if ($this->support->where('id', $id)->delete()) {
			$this->support->deleteImage($support->image);
			$this->session->set_flashdata('success', 'Data sudah berhasil dihapus!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan!');
		}

        redirect(base_url('administrator/support'));
    }
}

/* End of file Support.php */