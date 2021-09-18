<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Country extends MY_Controller
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
		$data['title']		= 'Admin Page: Manage country';
			$data['content']	= $this->country->select(
				[
					'country.id', 'country.code', 'country.title'
				]
			)
			->paginate($page)
			->get();
		$data['total_rows']	= $this->country->count();
		$data['pagination']	= $this->country->makePagination(
			base_url('administrator/country'),
			2,
			$data['total_rows']
		);

		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar', $data);
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_country');
		$this->load->view('administrator/material/nsm_footer');
	}

	public function search($page = null)
	{
		if (isset($_POST['keyword'])) {
			$this->session->set_userdata('keyword', $this->input->post('keyword'));
		} else {
			redirect(base_url('administrator/country'));
		}

		$keyword	= $this->session->userdata('keyword');
		$data['title']		= 'Admin Page: Manage country';
		$data['content']	= $this->country->like('title', $keyword)->paginate($page)->get();
		$data['total_rows']	= $this->country->like('title', $keyword)->count();
		$data['pagination']	= $this->country->makePagination(
			base_url('administrator/country/search'),
			3,
			$data['total_rows']
		);

		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar', $data);
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_country');
		$this->load->view('administrator/material/nsm_footer');
	}

	public function create()
	{
		if (!$_POST) {
			$input	= (object) $this->country->getDefaultValues();
		} else {
			$input	= (object) $this->input->post(null, true);
        }

		if (!$this->country->validate()) {
			$data['title']			= 'Admin Page: Create country Product';
			$data['input']			= $input;
			$data['form_action']	= base_url('administrator/country/create');

			$this->load->view('administrator/material/nsm_header', $data);
		    $this->load->view('administrator/material/nsm_navbar', $data);
		    $this->load->view('administrator/material/nsm_sidebar');
		    $this->load->view('administrator/form/f_country');
		    $this->load->view('administrator/material/nsm_footer');
			return;
		}

		if ($this->country->create($input)) {
			$this->session->set_flashdata('success', 'Data berhasil disimpan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('administrator/country'));
	}

	public function edit($id)
	{
		$data['content'] = $this->country->where('id', $id)->first();

		if (!$data['content']) {
			$this->session->set_flashdata('warning', 'Maaf! Data tidak ditemukan!');
			redirect(base_url('administrator/country'));
		}

		if (!$_POST) {
			$data['input']	= $data['content'];
		} else {
			$data['input']	= (object) $this->input->post(null, true);
        }

		if (!$this->country->validate()) {
			$data['title']			= 'Admin Page: Edit country Product';
			$data['form_action']	= base_url("administrator/country/edit/$id");

			$this->load->view('administrator/material/nsm_header', $data);
		    $this->load->view('administrator/material/nsm_navbar', $data);
		    $this->load->view('administrator/material/nsm_sidebar');
		    $this->load->view('administrator/form/f_country');
		    $this->load->view('administrator/material/nsm_footer');
			return;
		}

		if ($this->country->where('id', $id)->update($data['input'])) {
			$this->session->set_flashdata('success', 'Data berhasil diperbaharui!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan.');
		}

		redirect(base_url('administrator/country'));
	}

	public function delete($id)
	{
		if (!$_POST) {
			redirect(base_url('administrator/country'));
		}

		if (!$this->country->where('id', $id)->first()) {
			$this->session->set_flashdata('warning', 'Maaf! Data tidak ditemukan.');
			redirect(base_url('administrator/country'));
		}

		if ($this->country->where('id', $id)->delete()) {
			$this->session->set_flashdata('success', 'Data sudah berhasil dihapus!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan.');
		}

		redirect(base_url('administrator/country'));
	}

	public function unique_slug()
	{
		$slug		= $this->input->post('slug');
		$id			= $this->input->post('id');
		$country	= $this->country->where('slug', $slug)->first();

		if ($country) {
			if ($id == $country->id) {
				return true;
			}
			$this->load->library('form_validation');
			$this->form_validation->set_message('unique_slug', '%s sudah digunakan!');
			return false;
		}

		return true;
	}
}

/* End of file country.php */