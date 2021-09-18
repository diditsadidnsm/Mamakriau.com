<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Email extends MY_Controller
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

	public function index()
	{
        $data['title'] = 'Administrator Area';
		
		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar');
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_email');
		$this->load->view('administrator/material/nsm_footer');
	}
	
	public function sendEmail()
    {
      $data = $this->input->post('email');
      $pesan = $this->input->post('pesan');

      $cek = $this->db->select('name, password')->where('name', $data)->limit(1)->get('user_finances')->row();

      if (!empty($cek)) {
        $this->load->library('phpmailer_lib');
        // PHPMailer object
        $mail = $this->phpmailer_lib->load();
        // SMTP configuration
        $mail->isSMTP();
        $mail->Host     = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->Username = 'official.smartfinance@gmail.com';
        $mail->Password = 'isi_dengan_password_kalean';
        $mail->SMTPSecure = 'tls';
        $mail->Port     = 587;

        $mail->setFrom('official.smartfinance@gmail.com', 'SmartFinance');
        $mail->addReplyTo('official.smartfinance@gmail.com', 'SmartFinance Official Admin');

        // email tujuan mu
        $mail->addAddress($data);

        // Attracmhent File
        if (!empty($_FILES['uploaded_file']['tmp_name'])) {
          if (isset($_FILES['uploaded_file']) && $_FILES['uploaded_file']['error'] == UPLOAD_ERR_OK) {
                $mail->AddAttachment($_FILES['uploaded_file']['tmp_name'],
                                     $_FILES['uploaded_file']['name']);
          }
        }

        // Email subject
        $mail->Subject = 'Pesan untuk mu...';

        // Set email format to HTML
        // $mail->isHTML(true);

        // Email body content / isi
        $mail->Body = $pesan;

        // Send email
        if(!$mail->send()){
            $this->session->set_flashdata('message', '
              <div   class="alert alert-success" role="alert">
                  Gagal melakukan pengiriman email, cek baik baik email anda !!!
              </div>');
              redirect('Inponow');
        }else{
            $this->session->set_flashdata('message', '
              <div   class="alert alert-success" role="alert">
                  Sukses mengirim email ke '.$data.' cek email anda sekarang.
              </div>');
            redirect('Inponow');
        }

      }else {
        echo "<pre>";
        print_r('sorry, email tidak di temukan di database');
        die;
      }
      
    $this->load->view('administrator/material/nsm_header');
	$this->load->view('administrator/material/nsm_navbar');
	$this->load->view('administrator/material/nsm_sidebar');
	$this->load->view('administrator/form/f_email');
	$this->load->view('administrator/material/nsm_footer');
	
    }
    
}

/* End of file Email.php */