<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Summary extends MY_Controller 
{
    
    private $id;
	
	public function __construct()
	{
		parent::__construct();
		$this->load->model('project_model');
		$role = $this->session->userdata('role');
		$this->id	= $this->session->userdata('id');
		if ($role != 'member') {
			redirect(base_url('/'));
			return;
		}
	}
	
	public function index($url)
	{
		$data['history'] = $this->project_model->select(
		    [
				'project.id', 'project.id_user', 'project.url', 'project.username', 'project.sure_name', 'project.no_invoice', 'project.invoice_date', 'project.sure_name',
				'project.home_address', 'project.email', 'project.phone_number', 
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

}

/* End of file Project.php */