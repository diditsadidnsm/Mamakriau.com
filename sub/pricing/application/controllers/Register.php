<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Register extends CI_Controller {

    public function index()
    {
        $this->load->view('frontend/auth/register.php');
    }

    public function simpan()
    {
        $this->load->model('m_user');

        $data = array(
            'name'           => $this->input->post('name'),
            'username'       => $this->input->post('username'),
            'password'       => password_hash($this->input->post('password'), PASSWORD_DEFAULT),    
        );

        $register = $this->m_user->simpan_register($data);

        if($register) {

            echo "success";

        } else {

            echo "error";

        }

    }

}