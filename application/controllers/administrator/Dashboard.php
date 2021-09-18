<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends MY_Controller
{

	public function __construct()
	{
		parent::__construct();
// 		$this->output->enable_profiler(ENVIRONMENT == 'development');
		$this->load->model('dashboard_model');
		$role = $this->session->userdata('role');
		if ($role != 'admin') {
			redirect(base_url('/'));
			return;
		}
	}

	public function index()
	{
	    
        $data['title'] = 'Administrator Area';
        
        $data['visitorTotal']  = $this->dashboard->get_count(); 
		$data['activity'] = $this->db->get('user')->num_rows();
		$data['product']  = $this->db->get('product')->num_rows();
		$data['statistik'] = $this->dashboard->statistik();
		$data['graph'] = $this->dashboard->graph();
		
		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar');
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_dashboard');
	}
	
	function AlexaRank($domain){
	$uri = 'http://data.alexa.com/data?cli=10&dat=snbamz&url=';
	$uri .= 'mamakriau.com';

	$xml = simplexml_load_file($uri);

	if (isset($xml->SD[1]->POPULARITY))
	return (int) $xml->SD[1]->POPULARITY->attributes()->TEXT;
    }
    
}

/* End of file Dashboard.php */