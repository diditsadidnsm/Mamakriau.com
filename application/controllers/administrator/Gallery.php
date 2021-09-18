<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Gallery extends MY_Controller
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
		$data['content']	= $this->gallery->select(
			[
				'gallery.id', 'gallery.title', 'gallery.image'
			]
		)
			->orderBy('gallery.id', 'asc')
			->paginate($page)
			->get();
		$data['total_rows']	= $this->gallery->count();
		$data['pagination']	= $this->gallery->makePagination(
			base_url('administrator/gallery'),
			2,
			$data['total_rows']
		);
		
		
		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar', $data);
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_gallery');
		$this->load->view('administrator/material/nsm_footer');
	}

	public function create()
	{
		if (!$_POST) {
			$input	= (object) $this->gallery->getDefaultValues();
		} else {
			$input	= (object) $this->input->post(null, true);
		}
		
		if (!empty($_FILES) && $_FILES['image']['name'] !== '') {
			$imageName	= url_title($input->title, '-', true) . '-' . date('YmdHis');
			$upload		= $this->gallery->uploadImage('image', $imageName);
			if ($upload) {
				$input->image	= $upload['file_name'];
			} else {
				redirect(base_url('administrator/gallery/create'));
			}
		}

		if (!$this->gallery->validate()) {
			$data['title']			= 'Admin Page: Create Primary Produk';
			$data['input']			= $input;
			$data['form_action']	= base_url('administrator/gallery/create');

			$this->load->view('administrator/material/nsm_header', $data);
		    $this->load->view('administrator/material/nsm_navbar', $data);
		    $this->load->view('administrator/material/nsm_sidebar');
		    $this->load->view('administrator/form/f_gallery');
		    $this->load->view('administrator/material/nsm_footer');
			return;
		}

		if ($this->gallery->create($input)) {
			$this->session->set_flashdata('success', 'Data berhasil disimpan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('administrator/gallery'));
	}

	public function edit($id)
	{
		$data['content'] = $this->gallery->where('id', $id)->first();

		if (!$data['content']) {
			$this->session->set_flashdata('warning', 'Maaf, data tidak dapat ditemukan');
			redirect(base_url('administrator/gallery'));
		}

		if (!$_POST) {
			$data['input']	= $data['content'];
		} else {
			$data['input']	= (object) $this->input->post(null, true);
		}
		
		if (!empty($_FILES) && $_FILES['image']['name'] !== '') {
			$imageName	= url_title($input->title, '-', true) . '-' . date('YmdHis');
			$upload		= $this->gallery->uploadImage('image', $imageName);
			if ($upload) {
				$input->image	= $upload['file_name'];
			} else {
				redirect(base_url('administrator/gallery/create'));
			}
		}

		if (!$this->gallery->validate()) {
			$data['title']			= 'Admin Page: Edit Primary Produk';
			$data['form_action']	= base_url("administrator/gallery/edit/$id");

			$this->load->view('administrator/material/nsm_header', $data);
		    $this->load->view('administrator/material/nsm_navbar', $data);
		    $this->load->view('administrator/material/nsm_sidebar');
		    $this->load->view('administrator/form/f_gallery');
		    $this->load->view('administrator/material/nsm_footer');
			return;
		}


		if ($this->gallery->where('id', $id)->update($data['input'])) {
			$this->session->set_flashdata('success', 'Data berhasil disimpan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('administrator/gallery'));
	}

	public function delete($id)
	{
		if (!$_POST) {
			redirect(base_url('administrator/gallery'));
		}

		$gallery = $this->gallery->where('id', $id)->first();

		if (!$gallery) {
			$this->session->set_flashdata('warning', 'Maaf, data tidak dapat ditemukan');
			redirect(base_url('administrator/gallery'));
		}

		if ($this->gallery->where('id', $id)->delete()) {
			$this->gallery->deleteImage($gallery->image);
			$this->session->set_flashdata('success', 'Data sudah berhasil dihapus!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan!');
		}

		redirect(base_url('administrator/gallery'));
	}
}

/* End of file gallery.php */