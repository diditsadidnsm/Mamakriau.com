<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Testimonials extends MY_Controller
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
		$data['title']		= 'Admin Page: Manage testimonials Product';
		$data['content']	= $this->testimonials->paginate($page)->get();
		$data['total_rows']	= $this->testimonials->count();
		$data['pagination']	= $this->testimonials->makePagination(
			base_url('administrator/testimonials'),
			2,
			$data['total_rows']
		);

		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar', $data);
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_testimonials');
		$this->load->view('administrator/material/nsm_footer');
	}

	public function search($page = null)
	{
		if (isset($_POST['keyword'])) {
			$this->session->set_userdata('keyword', $this->input->post('keyword'));
		} else {
			redirect(base_url('administrator/testimonials'));
		}

		$keyword	= $this->session->userdata('keyword');
		$data['title']		= 'Admin Page: Manage testimonials Product';
		$data['content']	= $this->testimonials->like('title', $keyword)->paginate($page)->get();
		$data['total_rows']	= $this->testimonials->like('title', $keyword)->count();
		$data['pagination']	= $this->testimonials->makePagination(
			base_url('administrator/testimonials/search'),
			3,
			$data['total_rows']
		);

		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar', $data);
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_testimonials');
		$this->load->view('administrator/material/nsm_footer');
	}

	public function create()
	{
		if (!$_POST) {
			$input	= (object) $this->testimonials->getDefaultValues();
		} else {
			$input	= (object) $this->input->post(null, true);
        }
        
        if (!empty($_FILES) && $_FILES['image']['name'] !== '') {
			$imageName	= url_title($input->title, '-', true) . '-' . date('YmdHis');
			$upload		= $this->testimonials->uploadImage('image', $imageName);
			if ($upload) {
				$input->image	= $upload['file_name'];
			} else {
				redirect(base_url('administrator/testimonials/create'));
			}
		}

		if (!$this->testimonials->validate()) {
			$data['title']			= 'Admin Page: Create testimonials Product';
			$data['input']			= $input;
			$data['form_action']	= base_url('administrator/testimonials/create');

			$this->load->view('administrator/material/nsm_header', $data);
		    $this->load->view('administrator/material/nsm_navbar', $data);
		    $this->load->view('administrator/material/nsm_sidebar');
		    $this->load->view('administrator/form/f_testimonials');
		    $this->load->view('administrator/material/nsm_footer');
			return;
		}

		if ($this->testimonials->create($input)) {
			$this->session->set_flashdata('success', 'Data berhasil disimpan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('administrator/testimonials'));
	}

	public function edit($id)
	{
		$data['content'] = $this->testimonials->where('id', $id)->first();

		if (!$data['content']) {
			$this->session->set_flashdata('warning', 'Maaf! Data tidak ditemukan!');
			redirect(base_url('administrator/testimonials'));
		}

		if (!$_POST) {
			$data['input']	= $data['content'];
		} else {
			$data['input']	= (object) $this->input->post(null, true);
        }
        
        if (!empty($_FILES) && $_FILES['image']['name'] !== '') {
			$imageName	= url_title($data['input']->title, '-', true) . '-' . date('YmdHis');
			$upload		= $this->testimonials->uploadImage('image', $imageName);
			if ($upload) {
				if ($data['content']->image !== '') {
					$this->testimonials->deleteImage($data['content']->image);
				}
				$data['input']->image	= $upload['file_name'];
			} else {
				redirect(base_url("administrator/testimonials/edit/$id"));
			}
		}

		if (!$this->testimonials->validate()) {
			$data['title']			= 'Admin Page: Edit testimonials Product';
			$data['form_action']	= base_url("administrator/testimonials/edit/$id");

			$this->load->view('administrator/material/nsm_header', $data);
		    $this->load->view('administrator/material/nsm_navbar', $data);
		    $this->load->view('administrator/material/nsm_sidebar');
		    $this->load->view('administrator/form/f_testimonials');
		    $this->load->view('administrator/material/nsm_footer');
			return;
		}

		if ($this->testimonials->where('id', $id)->update($data['input'])) {
			$this->session->set_flashdata('success', 'Data berhasil diperbaharui!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan.');
		}

		redirect(base_url('administrator/testimonials'));
	}

	public function delete($id)
	{
		if (!$_POST) {
			redirect(base_url('administrator/testimonials'));
		}

		if (!$this->testimonials->where('id', $id)->first()) {
			$this->session->set_flashdata('warning', 'Maaf! Data tidak ditemukan.');
			redirect(base_url('administrator/testimonials'));
		}

		if ($this->testimonials->where('id', $id)->delete()) {
			$this->session->set_flashdata('success', 'Data sudah berhasil dihapus!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan.');
		}

		redirect(base_url('administrator/testimonials'));
	}

	public function unique_slug()
	{
		$slug		= $this->input->post('slug');
		$id			= $this->input->post('id');
		$testimonials	= $this->testimonials->where('slug', $slug)->first();

		if ($testimonials) {
			if ($id == $testimonials->id) {
				return true;
			}
			$this->load->library('form_validation');
			$this->form_validation->set_message('unique_slug', '%s sudah digunakan!');
			return false;
		}

		return true;
	}
}

/* End of file testimonials.php */