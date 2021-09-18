<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Industry extends MY_Controller
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
		$data['title']		= 'Admin Page: Manage industry';
			$data['content']	= $this->industry->select(
				[
					'industry.id', 'industry.title'
				]
			)
			->paginate($page)
			->get();
		$data['total_rows']	= $this->industry->count();
		$data['pagination']	= $this->industry->makePagination(
			base_url('administrator/industry'),
			2,
			$data['total_rows']
		);

		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar', $data);
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_industry');
		$this->load->view('administrator/material/nsm_footer');
	}

	public function search($page = null)
	{
		if (isset($_POST['keyword'])) {
			$this->session->set_userdata('keyword', $this->input->post('keyword'));
		} else {
			redirect(base_url('administrator/industry'));
		}

		$keyword	= $this->session->userdata('keyword');
		$data['title']		= 'Admin Page: Manage industry';
		$data['content']	= $this->industry->like('title', $keyword)->paginate($page)->get();
		$data['total_rows']	= $this->industry->like('title', $keyword)->count();
		$data['pagination']	= $this->industry->makePagination(
			base_url('administrator/industry/search'),
			3,
			$data['total_rows']
		);

		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar', $data);
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_industry');
		$this->load->view('administrator/material/nsm_footer');
	}

	public function create()
	{
		if (!$_POST) {
			$input	= (object) $this->industry->getDefaultValues();
		} else {
			$input	= (object) $this->input->post(null, true);
        }

		if (!$this->industry->validate()) {
			$data['title']			= 'Admin Page: Create industry Product';
			$data['input']			= $input;
			$data['form_action']	= base_url('administrator/industry/create');

			$this->load->view('administrator/material/nsm_header', $data);
		    $this->load->view('administrator/material/nsm_navbar', $data);
		    $this->load->view('administrator/material/nsm_sidebar');
		    $this->load->view('administrator/form/f_industry');
		    $this->load->view('administrator/material/nsm_footer');
			return;
		}

		if ($this->industry->create($input)) {
			$this->session->set_flashdata('success', 'Data berhasil disimpan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('administrator/industry'));
	}

	public function edit($id)
	{
		$data['content'] = $this->industry->where('id', $id)->first();

		if (!$data['content']) {
			$this->session->set_flashdata('warning', 'Maaf! Data tidak ditemukan!');
			redirect(base_url('administrator/industry'));
		}

		if (!$_POST) {
			$data['input']	= $data['content'];
		} else {
			$data['input']	= (object) $this->input->post(null, true);
        }

		if (!$this->industry->validate()) {
			$data['title']			= 'Admin Page: Edit industry Product';
			$data['form_action']	= base_url("administrator/industry/edit/$id");

			$this->load->view('administrator/material/nsm_header', $data);
		    $this->load->view('administrator/material/nsm_navbar', $data);
		    $this->load->view('administrator/material/nsm_sidebar');
		    $this->load->view('administrator/form/f_industry');
		    $this->load->view('administrator/material/nsm_footer');
			return;
		}

		if ($this->industry->where('id', $id)->update($data['input'])) {
			$this->session->set_flashdata('success', 'Data berhasil diperbaharui!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan.');
		}

		redirect(base_url('administrator/industry'));
	}

	public function delete($id)
	{
		if (!$_POST) {
			redirect(base_url('administrator/industry'));
		}

		if (!$this->industry->where('id', $id)->first()) {
			$this->session->set_flashdata('warning', 'Maaf! Data tidak ditemukan.');
			redirect(base_url('administrator/industry'));
		}

		if ($this->industry->where('id', $id)->delete()) {
			$this->session->set_flashdata('success', 'Data sudah berhasil dihapus!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan.');
		}

		redirect(base_url('administrator/industry'));
	}

	public function unique_slug()
	{
		$slug		= $this->input->post('slug');
		$id			= $this->input->post('id');
		$industry	= $this->industry->where('slug', $slug)->first();

		if ($industry) {
			if ($id == $industry->id) {
				return true;
			}
			$this->load->library('form_validation');
			$this->form_validation->set_message('unique_slug', '%s sudah digunakan!');
			return false;
		}

		return true;
	}
}

/* End of file industry.php */