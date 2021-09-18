<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function index()
	{
	    $data[title] = 'Login Form';
	    
		$this->load->view('frontend/auth/login.php', $data);
	}
	
	public function cek_login()
    {
        $this->load->model('m_user');

        $username = $this->input->post('username');
        $password = $this->input->post('password');

        $cek = $this->m_user->cek_login($username, $password);

        if(!empty($cek)){

            foreach($cek as $user) {

                $session_data = array(
                    'id_user'   => $user->id_user,
                    'username'  => $user->username,
                    'name'      => $user->name,
                );
                
                $this->session->set_userdata($session_data);

            }

            echo "success";

        } else {
            
            echo "error";

        }

    }
}
