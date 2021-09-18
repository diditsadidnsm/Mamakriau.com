<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Promote extends MY_Controller
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
		$data['content']	= $this->promote->select(
			[
				'promote.id', 'promote.title', 'promote.image'
			]
		)
			->paginate($page)
			->get();
		$data['total_rows']	= $this->promote->count();
		$data['pagination']	= $this->promote->makePagination(
			base_url('administrator/promote'),
			2,
			$data['total_rows']
		);
		
		
		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar', $data);
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_promote');
		$this->load->view('administrator/material/nsm_footer');
	}

	public function search($page = null)
	{
		if (isset($_POST['keyword'])) {
			$this->session->set_userdata('keyword', $this->input->post('keyword'));
		} else {
			redirect(base_url('administrator/promote'));
		}

		$keyword	= $this->session->userdata('keyword');
		$data['title']		= 'Admin Page: Manage Primary Produk';
		$data['content']	= $this->promote->select(
			[
				'promote.id', 'promote.title', 'promote.image'
			]
		)
			->paginate($page)
			->get();
		$data['total_rows']	= $this->promote->count();
		$data['pagination']	= $this->promote->makePagination(
			base_url('administrator/promote/search'),
			3,
			$data['total_rows']
        );
        
		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar', $data);
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_promote');
		$this->load->view('administrator/material/nsm_footer');
	}

	public function create()
	{
		if (!$_POST) {
			$input	= (object) $this->promote->getDefaultValues();
		} else {
			$input	= (object) $this->input->post(null, true);
		}

		if (!empty($_FILES) && $_FILES['image']['name'] !== '') {
			$imageName	= url_title($input->title, '-', true) . '-' . date('YmdHis');
			$upload		= $this->promote->uploadImage('image', $imageName);
			if ($upload) {
				$input->image	= $upload['file_name'];
			} else {
				redirect(base_url('administrator/promote/create'));
			}
		}

		if (!$this->promote->validate()) {
			$data['title']			= 'Admin Page: Create Primary Produk';
			$data['input']			= $input;
			$data['form_action']	= base_url('administrator/promote/create');

			$this->load->view('administrator/material/nsm_header', $data);
		    $this->load->view('administrator/material/nsm_navbar', $data);
		    $this->load->view('administrator/material/nsm_sidebar');
		    $this->load->view('administrator/form/f_promote');
		    $this->load->view('administrator/material/nsm_footer');
			return;
		}

		if ($this->promote->create($input)) {
			$this->session->set_flashdata('success', 'Data berhasil disimpan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('administrator/promote'));
	}

	public function edit($id)
	{
		$data['content'] = $this->promote->where('id', $id)->first();

		if (!$data['content']) {
			$this->session->set_flashdata('warning', 'Maaf, data tidak dapat ditemukan');
			redirect(base_url('administrator/promote'));
		}

		if (!$_POST) {
			$data['input']	= $data['content'];
		} else {
			$data['input']	= (object) $this->input->post(null, true);
		}

		if (!empty($_FILES) && $_FILES['image']['name'] !== '') {
			$imageName	= url_title($data['input']->title, '-', true) . '-' . date('YmdHis');
			$upload		= $this->promote->uploadImage('image', $imageName);
			if ($upload) {
				if ($data['content']->image !== '') {
					$this->promote->deleteImage($data['content']->image);
				}
				$data['input']->image	= $upload['file_name'];
			} else {
				redirect(base_url("administrator/promote/edit/$id"));
			}
		}

		if (!$this->promote->validate()) {
			$data['title']			= 'Admin Page: Edit Primary Produk';
			$data['form_action']	= base_url("administrator/promote/edit/$id");

			$this->load->view('administrator/material/nsm_header', $data);
		    $this->load->view('administrator/material/nsm_navbar', $data);
		    $this->load->view('administrator/material/nsm_sidebar');
		    $this->load->view('administrator/form/f_promote');
		    $this->load->view('administrator/material/nsm_footer');
			return;
		}


		if ($this->promote->where('id', $id)->update($data['input'])) {
			$this->session->set_flashdata('success', 'Data berhasil disimpan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('administrator/promote'));
	}

	public function delete($id)
	{
		if (!$_POST) {
			redirect(base_url('administrator/promote'));
		}

		$promote = $this->promote->where('id', $id)->first();

		if (!$promote) {
			$this->session->set_flashdata('warning', 'Maaf, data tidak dapat ditemukan');
			redirect(base_url('administrator/promote'));
		}

		if ($this->promote->where('id', $id)->delete()) {
			$this->promote->deleteImage($promote->image);
			$this->session->set_flashdata('success', 'Data sudah berhasil dihapus!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan!');
		}

        redirect(base_url('administrator/promote'));
    }
}

/* End of file promote.php */