<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Home extends MY_Controller
{

	public function index($page = null)
	{

		$ip         = $this->input->ip_address(); 
        $date       = date("Y-m-d"); 
        $waktu      = time(); 
        $timeinsert = date("Y-m-d H:i:s");
        $s          = $this->db->query("SELECT * FROM visitor WHERE ip='".$ip."' AND date='".$date."'")->num_rows();
		$ss         = isset($s)?($s):0;
		
            if($ss == 0){
                $this->db->query("INSERT INTO visitor(ip, date, hits, online, time) VALUES('".$ip."','".$date."','1','".$waktu."','".$timeinsert."')");
            }
            else{
                $this->db->query("UPDATE visitor SET hits=hits+1, online='".$waktu."' WHERE ip='".$ip."' AND date='".$date."'");
            }
        $pengunjunghariini  = $this->db->query("SELECT * FROM visitor WHERE date='".$date."' GROUP BY ip")->num_rows();
        $dbpengunjung       = $this->db->query("SELECT COUNT(hits) as hits FROM visitor")->row(); 
        $totalpengunjung    = isset($dbpengunjung->hits)?($dbpengunjung->hits):0;
        $bataswaktu         = time() - 1500;
		$pengunjungonline   = $this->db->query("SELECT * FROM visitor WHERE online > '".$bataswaktu."'")->num_rows();
		
        $data['pengunjunghariini'] = $pengunjunghariini;
        $data['totalpengunjung']   = $totalpengunjung;
		$data['pengunjungonline']  = $pengunjungonline;
		$data['project'] = $this->home->project();
		$data['banner'] = $this->home->banner();
			
		$data['content']	= $this->home->select(
			[
				'product.id', 'product.slug AS product_slug', 'product.title AS product_title',
				'product.description', 'product.image',
				'product.is_available',
				'category.title AS category_title', 'category.slug AS category_slug'
			]
		)
			->join('category')
			->get();
		
		$this->load->view('layouts/_header', $data);
		$this->load->view('layouts/_navbar', $data);
		$this->load->view('pages/home/index', $data);
		$this->load->view('layouts/_footer');
	}
	
	public function sendEmail()
	{
        $from = 'mamakriau.com';
        $sendTo = 'riau_mariana@mamakriau.com'; 
        $subject = 'New message from contact form';
        $fields = array('subject' => 'Subject', 'email' => 'Email'); 
        $okMessage = 'Contact form successfully submitted. Thank you, I will get back to you soon!';
        $errorMessage = 'There was an error while submitting the form. Please try again later';
    try
    {
        $emailText = "You have new subscriber with email\n=============================\n";

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
    redirect(base_url('subscribe'));
	     }
    

}

/* End of file Home.php */