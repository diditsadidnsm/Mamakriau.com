<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Kategori extends MY_Controller
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
		$data['title']		= 'Admin Page: Manage kategori Blog';
		$data['content']	= $this->kategori->paginate($page)->get();
		$data['total_rows']	= $this->kategori->count();
		$data['pagination']	= $this->kategori->makePagination(
			base_url('administrator/kategori'),
			2,
			$data['total_rows']
		);

		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar', $data);
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_kategori');
		$this->load->view('administrator/material/nsm_footer');
	}

	public function search($page = null)
	{
		if (isset($_POST['keyword'])) {
			$this->session->set_userdata('keyword', $this->input->post('keyword'));
		} else {
			redirect(base_url('administrator/kategori'));
		}

		$keyword	= $this->session->userdata('keyword');
		$data['title']		= 'Admin Page: Manage kategori Product';
		$data['content']	= $this->kategori->like('title', $keyword)->paginate($page)->get();
		$data['total_rows']	= $this->kategori->like('title', $keyword)->count();
		$data['pagination']	= $this->kategori->makePagination(
			base_url('administrator/kategori/search'),
			3,
			$data['total_rows']
		);

		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar', $data);
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_kategori');
		$this->load->view('administrator/material/nsm_footer');
	}

	public function create()
	{
		if (!$_POST) {
			$input	= (object) $this->kategori->getDefaultValues();
		} else {
			$input	= (object) $this->input->post(null, true);
        }

		if (!$this->kategori->validate()) {
			$data['title']			= 'Admin Page: Create kategori Product';
			$data['input']			= $input;
			$data['form_action']	= base_url('administrator/kategori/create');

			$this->load->view('administrator/material/nsm_header', $data);
		    $this->load->view('administrator/material/nsm_navbar', $data);
		    $this->load->view('administrator/material/nsm_sidebar');
		    $this->load->view('administrator/form/f_kategori');
		    $this->load->view('administrator/material/nsm_footer');
			return;
		}

		if ($this->kategori->create($input)) {
			$this->session->set_flashdata('success', 'Data berhasil disimpan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('administrator/kategori'));
	}

	public function edit($id)
	{
		$data['content'] = $this->kategori->where('id', $id)->first();

		if (!$data['content']) {
			$this->session->set_flashdata('warning', 'Maaf! Data tidak ditemukan!');
			redirect(base_url('administrator/kategori'));
		}

		if (!$_POST) {
			$data['input']	= $data['content'];
		} else {
			$data['input']	= (object) $this->input->post(null, true);
        }

		if (!$this->kategori->validate()) {
			$data['title']			= 'Admin Page: Edit kategori Product';
			$data['form_action']	= base_url("administrator/kategori/edit/$id");

			$this->load->view('administrator/material/nsm_header', $data);
		    $this->load->view('administrator/material/nsm_navbar', $data);
		    $this->load->view('administrator/material/nsm_sidebar');
		    $this->load->view('administrator/form/f_kategori');
		    $this->load->view('administrator/material/nsm_footer');
			return;
		}

		if ($this->kategori->where('id', $id)->update($data['input'])) {
			$this->session->set_flashdata('success', 'Data berhasil diperbaharui!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan.');
		}

		redirect(base_url('administrator/kategori'));
	}

	public function delete($id)
	{
		if (!$_POST) {
			redirect(base_url('administrator/kategori'));
		}

		if (!$this->kategori->where('id', $id)->first()) {
			$this->session->set_flashdata('warning', 'Maaf! Data tidak ditemukan.');
			redirect(base_url('administrator/kategori'));
		}

		if ($this->kategori->where('id', $id)->delete()) {
			$this->session->set_flashdata('success', 'Data sudah berhasil dihapus!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan.');
		}

		redirect(base_url('administrator/kategori'));
	}

	public function unique_slug()
	{
		$slug		= $this->input->post('slug');
		$id			= $this->input->post('id');
		$kategori	= $this->kategori->where('slug', $slug)->first();

		if ($kategori) {
			if ($id == $kategori->id) {
				return true;
			}
			$this->load->library('form_validation');
			$this->form_validation->set_message('unique_slug', '%s sudah digunakan!');
			return false;
		}

		return true;
	}
}

/* End of file Kategori.php */