<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Register extends MY_Controller 
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
			$input	= (object) $this->register->getDefaultValues();
		} else {
			$input 	= (object) $this->input->post(null, true);
		}

		if (!$this->register->validate()) {
			$data['title']	= 'Register';
			$data['input']	= $input;
			
			$this->load->view('pages/auth/register', $data);
			return;
		}

		if ($this->register->run($input)) {
		    $from = 'no-reply@mamakriau.com';
            $sendTo = $input->email; 
            $subject = 'Confirm your email at mamakriau.com';
            $fields = array('name' => $input->name, 'email' => $input->email, 'password' => $input->password, 'code' => $input->code, 'token' => $input->token); 
            $okMessage = 'Contact form successfully submitted. Thank you, I will get back to you soon!';
            $errorMessage = 'There was an error while submitting the form. Please try again later';
        try
        {
            $emailText = $this->load->view('mails/mail_register', $fields, TRUE);

            $headers = array('Content-Type: text/html; charset="UTF-8";',
                'From: ' . $from,
                'Reply-To: ' . $from,
                'Return-Path: ' . $from,
            );
    
            mail($sendTo, $subject, $emailText, implode("\n", $headers));

            $responseArray = array('type' => 'success', 'message' => $okMessage);
        }
    
        catch (\Exception $e)
        {
            $responseArray = array('type' => 'danger', 'message' => $errorMessage);
        }

        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            $encoded = json_encode($responseArray);

            header('Content-Type: application/json');

            echo $encoded;
        }
        else {
            echo $responseArray['message'];
        }
			$this->session->set_flashdata('success', 'Registration successful! Please activate your account first to be able login');
			redirect(base_url('/login'));
		} else {
			$this->session->set_flashdata('error', 'Oops! Something went wrong!');
			redirect(base_url('/register'));
		}
	}

	public function activate(){
		$token =  $this->uri->segment(3);
		$code = $this->uri->segment(4);
		
		$user = $this->register->getUser($token);
 
		if($user['code'] == $code){
		    
			$query = $this->register->activate($token);
 
			if($query){
			    
				$this->session->set_flashdata('success', 'User activated successfully');
			}
			else{
				$this->session->set_flashdata('warning', 'Something went wrong in activating account');
			}
		}
		else{
			$this->session->set_flashdata('danger', 'Cannot activate account. Code didnt match');
		}
 
		redirect('login');
 
	}

}

/* End of file Register.php */