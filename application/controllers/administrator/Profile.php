<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends MY_Controller 
{

	private $id_user;

	public function __construct()
	{
		parent::__construct();
		$is_login	= $this->session->userdata('is_login');
		$this->id_user	= $this->session->userdata('id_user');

		if (! $is_login) {
			redirect(base_url());
			return;
		}
	}

	public function index()
	{
		$data['title']		= 'Profile';
		$data['content']	= $this->profile->where('id_user', $this->id_user)->first();
		$data['rows']	    = $this->profile->select(['user.id_user', 'user.name', 'user.image', 'user.is_active'])->get();
		
		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar', $data);
		$this->load->view('administrator/material/nsm_sidebar', $data);
		$this->load->view('administrator/nsm_profile', $data);
		$this->load->view('administrator/material/nsm_footer');
	}

	public function update($id_user)
	{
		$data['content'] = $this->profile->where('id_user', $id_user)->first();

		if (!$data['content']) {
			$this->session->set_flashdata('warning', 'Maaf, data tid_userak dapat ditemukan');
			redirect(base_url('administrator/profile'));
		}

		if (!$_POST) {
			$data['input']	= $data['content'];
		} else {
			$data['input']	= (object) $this->input->post(null, true);
			if ($data['input']->password !== '') {
				$data['input']->password = hashEncrypt($data['input']->password);
			} else {
				$data['input']->password = $data['content']->password;
			}
		}

		if (!empty($_FILES) && $_FILES['image']['name'] !== '') {
			$imageName	= url_title($data['input']->name, '-', true) . '-' . date('YmdHis');
			$upload		= $this->profile->uploadImage('image', $imageName);
			if ($upload) {
				if ($data['content']->image !== '') {
					$this->profile->deleteImage($data['content']->image);
				}
				$data['input']->image	= $upload['file_name'];
			} else {
				redirect(base_url("administrator/profile/update/$id_user"));
			}
		}

		if (!$this->profile->valid_userate()) {
			$data['title']			= 'Ubah Data Profile';
			$data['form_action']	= base_url("administrator/profile/update/$id_user");
			
			$this->load->view('administrator/material/nsm_header', $data);
		    $this->load->view('administrator/material/nsm_navbar', $data);
		    $this->load->view('administrator/material/nsm_sidebar', $data);
		    $this->load->view('administrator/form/f_profile', $data);
		    $this->load->view('administrator/material/nsm_footer');
			return;
		}


		if ($this->profile->where('id_user', $id_user)->update($data['input'])) {
			$this->session->set_flashdata('success', 'Data berhasil disimpan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('administrator/profile'));
	}

	public function unique_email()
	{
		$email		= $this->input->post('email');
		$id_user			= $this->input->post('id_user');
		$user		= $this->profile->where('email', $email)->first();

		if ($user) {
			if ($id_user == $user->id_user) {
				return true;
			}
			$this->load->library('form_valid_useration');
			$this->form_valid_useration->set_message('unique_email', '%s sudah digunakan!');
			return false;
		}

		return true;
	}

}

/* End of file Profile.php */
