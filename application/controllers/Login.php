<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Login extends MY_Controller
{

	public function __construct()
	{
		parent::__construct();
		$is_login	= $this->session->userdata('is_login');

		if ($is_login) {
			redirect(base_url('/welcome'));
			return;
		}
	}

	public function index()
	{
		if (!$_POST) {
			$input	= (object) $this->login->getDefaultValues();
		} else {
			$input	= (object) $this->input->post(null, true);
		}

		if (!$this->login->validate()) {
			$data['title']	= 'Login';
			$data['input']	= $input;

		    $this->load->view('pages/auth/login', $data);
			return;
		}

		if ($this->login->run($input)) {
			$this->session->set_flashdata('success', 'Login Success!');
			redirect(base_url('welcome'));
		} else {
			$this->session->set_flashdata('error', 'E-Mail atau Password salah atau akun Anda sedang tidak aktif!');
			redirect(base_url('login'));
		}
	}
}

/* End of file Login.php */