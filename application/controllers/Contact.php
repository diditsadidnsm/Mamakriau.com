<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Contact extends MY_Controller
{

	public function index($page = null)
	{

		{
		if (!$_POST) {
			$input	= (object) $this->contact->getDefaultValues();
		} else {
			$input	= (object) $this->input->post(null, true);
		}

		if (!$this->contact->validate()) {
			$data['title']			= 'Our Contact';
			$data['site_desc']	    = '';
		    $data['site_key']	    = '';
			$data['input']			= $input;
			$data['form_action']	= base_url('contact');

		    $this->load->view('pages/contact/index', $data);
		    $this->load->view('layouts/_footer');
			return;
		}

		if ($this->contact->create($input)) {
			$this->session->set_flashdata('success', 'Pesan anda telah kami terima, Terima Kasih atas Feedback yang anda berikan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('contact'));
	    }
	
	}
	
	public function sendEmail()
	{
        $from = 'mamakriau.com';
        $sendTo = 'riau_mariana@mamakriau.com'; 
        $subject = 'New message from contact form';
        $fields = array('name' => 'Name', 'subject' => 'Subject', 'email' => 'Email', 'message' => 'Message'); 
        $okMessage = 'Contact form successfully submitted. Thank you, I will get back to you soon!';
        $errorMessage = 'There was an error while submitting the form. Please try again later';
    try
    {
        $emailText = "You have new message from contact form\n=============================\n";

        foreach ($_POST as $key => $value) {

            if (isset($fields[$key])) {
                $emailText .= "$fields[$key]: $value\n";
            }
        }

        $headers = array('Content-Type: text/plain; charset="UTF-8";',
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
    redirect(base_url('thanks'));
	     }
    }

/* End of file Contact.php */