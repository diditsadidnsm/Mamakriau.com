<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Project extends MY_Controller 
{
    
    private $id;
	
	public function __construct()
	{
		parent::__construct();
		$this->load->library('paypal_lib');
		$role = $this->session->userdata('role');
		$this->id	= $this->session->userdata('id');
		if ($role != 'member') {
			redirect(base_url('/'));
			return;
		}
	}
	

	public function logodesign()
	{
		if (!$_POST) {
			$input	= (object) $this->project->getDefaultValues();
		} else {
			$input	= (object) $this->input->post(null, true);
		}

		if (!empty($_FILES) && $_FILES['image']['name'] !== '') {
			$imageName	= url_title($input->title, '-', true) . '-' . date('YmdHis');
			$upload		= $this->project->uploadImage('image', $imageName);
			if ($upload) {
				$input->image	= $upload['file_name'];
			} else {
				redirect(base_url('member/project/logodesign'));
			}
		}

		if (!$this->project->validate()) {
			$data['title']			= 'Tambah Produk';
			$data['input']			= $input;
			$data['form_action']	= base_url('member/project/logodesign');
			
			$this->load->view('member/pages/project/nsm_logodesign', $data);
			return;
		}

		if ($this->project->create($input)) {
		    $from = 'no-reply@mamakriau.com';
            $sendTo = $input->email; 
            $subject = 'Thank you for your project request, please complete the payment';
            $fields = array(
                'sure_name' => $input->sure_name, 
                'home_address' => $input->home_address, 
                'company_address' => $input->company_address, 
                'no_invoice' => $input->no_invoice, 
                'price' => $input->price,
                'id_service' => $input->id_service,
                'discount' => $input->discount
                ); 
            $okMessage = 'Contact form successfully submitted. Thank you, I will get back to you soon!';
            $errorMessage = 'There was an error while submitting the form. Please try again later';
        try
        {
            $emailText = $this->load->view('mails/mail_summary', $fields, TRUE);

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
			$this->session->set_flashdata('success', 'Data berhasil disimpan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url("member/project/invoice"));
	}
	
	public function brandidentity()
	{
		if (!$_POST) {
			$input	= (object) $this->project->getDefaultValues();
		} else {
			$input	= (object) $this->input->post(null, true);
		}

		if (!empty($_FILES) && $_FILES['image']['name'] !== '') {
			$imageName	= url_title($input->title, '-', true) . '-' . date('YmdHis');
			$upload		= $this->project->uploadImage('image', $imageName);
			if ($upload) {
				$input->image	= $upload['file_name'];
			} else {
				redirect(base_url('member/project/brandidentity'));
			}
		}

		if (!$this->project->validate()) {
			$data['title']			= 'Tambah Produk';
			$data['input']			= $input;
			$data['form_action']	= base_url('member/project/brandidentity');
			
			$this->load->view('member/pages/project/nsm_brandidentity', $data);
			return;
		}

		if ($this->project->create($input)) {
			$this->session->set_flashdata('success', 'Data berhasil disimpan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('member/project/invoice'));
	}
	
	public function nonprofit()
	{
		if (!$_POST) {
			$input	= (object) $this->project->getDefaultValues();
		} else {
			$input	= (object) $this->input->post(null, true);
		}

		if (!empty($_FILES) && $_FILES['image']['name'] !== '') {
			$imageName	= url_title($input->title, '-', true) . '-' . date('YmdHis');
			$upload		= $this->project->uploadImage('image', $imageName);
			if ($upload) {
				$input->image	= $upload['file_name'];
			} else {
				redirect(base_url('member/project/nonprofit'));
			}
		}

		if (!$this->project->validate()) {
			$data['title']			= 'Tambah Produk';
			$data['input']			= $input;
			$data['form_action']	= base_url('member/project/nonprofit');
			
			$this->load->view('member/pages/project/nsm_nonprofit', $data);
			return;
		}

		if ($this->project->create($input)) {
			$this->session->set_flashdata('success', 'Data berhasil disimpan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('member/project/invoice'));
	}
	
	public function webapp()
	{
		if (!$_POST) {
			$input	= (object) $this->project->getDefaultValues();
		} else {
			$input	= (object) $this->input->post(null, true);
		}

		if (!empty($_FILES) && $_FILES['image']['name'] !== '') {
			$imageName	= url_title($input->title, '-', true) . '-' . date('YmdHis');
			$upload		= $this->project->uploadImage('image', $imageName);
			if ($upload) {
				$input->image	= $upload['file_name'];
			} else {
				redirect(base_url('member/project/webapp'));
			}
		}

		if (!$this->project->validate()) {
			$data['title']			= 'Tambah Produk';
			$data['input']			= $input;
			$data['form_action']	= base_url('member/project/webapp');
			
			$this->load->view('member/pages/project/nsm_webapp', $data);
			return;
		}

		if ($this->project->create($input)) {
			$this->session->set_flashdata('success', 'Data berhasil disimpan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('member/project/invoice'));
	}
	
	public function summary($url)
	{
		$data['history'] = $this->project->select(
		    [
				'project.id', 'project.id_user', 'project.url', 'project.username', 'project.sure_name', 'project.no_invoice', 'project.invoice_date', 'project.sure_name',
				'project.home_address', 'project.email', 'project.phone_number', 'project.price',  'project.discount', 'project.all_you_need', 'project.storage',
				'country.title AS country_title',
				'service.title AS service_title'
			]
		)
		    ->join('user')
		    ->join('country')
		    ->join('service')
		    ->where('project.url', $url)
		    ->get();
		
		$this->load->view('member/pages/project/nsm_summary', $data);
		return;
		
	}
	
	public function invoice()
	{
	    $url = $this->uri->segment(3);
		$data['history'] = $this->project->select(
		    [
				'project.id', 'project.id_user', 'project.url', 'project.username', 'project.sure_name', 'project.no_invoice', 'project.invoice_date', 'project.sure_name',
				'project.home_address', 'project.email', 'project.phone_number', 'project.price',  'project.discount', 'project.all_you_need', 'project.storage',
				'country.title AS country_title',
				'service.title AS service_title'
			]
		)
		    ->join('user')
		    ->join('country')
		    ->join('service')
		    ->where('project.url', $url)
		    ->get();
		
		$this->load->view('member/pages/project/nsm_invoice', $data);
		return;
		
	}
	
	function buyPayoneer($id){
	    $data['middleware'] = '';
	    $this->middleware->field('success', 'middleware success active');
	    $this->middleware->field('failed', 'middleware failed active');
	    
	    $data['secretKey'] = '';
	    $data['clientID'] = '';
	    $data['clientURL'] = '';
	    
	    $return = base_url().'';
	    $success = base_url().'';
	    $fail = base_url().'';
	    $notify = base_url().'';
	    
	    $product = $this->project->getProject($id);
	    $user = 0;
	    $logo = base_().'';
	    
	    $this->library->field('', $return);
	    $this->library->field('', $fail);
	    $this->library->field('', $notify);
	    
	    $this->library->field('', $product);
	    $this->library->field('', $user);
	    $this->library->field('', $logo);
	}
	
	function buyProject($id){
        $returnURL = base_url().'paypal/success'; 
        $failURL = base_url().'paypal/fail'; 
        $notifyURL = base_url().'paypal/ipn'; 
        
        $product = $this->project->getProject($id);
        $userID = 1; 
        $logo = base_url().'Your_logo_url';
         
        $this->paypal_lib->add_field('return', $returnURL);
        $this->paypal_lib->add_field('fail_return', $failURL);
        $this->paypal_lib->add_field('notify_url', $notifyURL);
        $this->paypal_lib->add_field('item_name', $product['name']);
        $this->paypal_lib->add_field('custom', $userID);
        $this->paypal_lib->add_field('item_number',  $product['id']);
        $this->paypal_lib->add_field('amount',  $product['price']);        
        $this->paypal_lib->image($logo);
         
        $this->paypal_lib->paypal_auto_form();
    }
 
     function paymentSuccess(){
 
        $paypalInfo = $this->input->get();
           
        $data['item_number'] = $paypalInfo['item_number']; 
        $data['txn_id'] = $paypalInfo["tx"];
        $data['payment_amt'] = $paypalInfo["amt"];
        $data['currency_code'] = $paypalInfo["cc"];
        $data['status'] = $paypalInfo["st"];
         
        $this->load->view('paypal/paymentSuccess', $data);
     }
      
     function paymentFail(){
        $this->load->view('paypal/paymentFail');
     }
      
     function ipn(){
        $paypalInfo    = $this->input->post();
 
        $data['user_id'] = $paypalInfo['custom'];
        $data['project_id']    = $paypalInfo["item_number"];
        $data['txn_id']    = $paypalInfo["txn_id"];
        $data['payment_gross'] = $paypalInfo["mc_gross"];
        $data['currency_code'] = $paypalInfo["mc_currency"];
        $data['payer_email'] = $paypalInfo["payer_email"];
        $data['payment_status']    = $paypalInfo["payment_status"];
 
        $paypalURL = $this->paypal_lib->paypal_url;        
        $result    = $this->paypal_lib->curlPost($paypalURL,$paypalInfo);
         
        if(preg_match("/VERIFIED/i",$result)){
            $this->project->storeTransaction($data);
        }
    }

}

/* End of file Project.php */