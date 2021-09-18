<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Project extends MY_Controller
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

	public function index($page = null)
	{
	    $data['title'] = 'Project List';
	    $data['content'] = $this->project->select(
		    [
				'project.id', 'project.id_user', 'project.url', 'project.username', 'project.sure_name', 'project.no_invoice', 'project.invoice_date', 'project.sure_name',
				'project.home_address', 'project.email', 'project.phone_number', 'project.price',  'project.discount', 'project.all_you_need', 'project.storage', 'project.image',
				'project.project_name', 'project.name_corporate', 'project.is_status',
				'country.title AS country_title',
				'service.title AS service_title',
				'user.name as user_name',
				'industry.title as industry_title'
			]
		)
		    ->join('user')
		    ->join('country')
		    ->join('service')
		    ->join('industry')
		    ->get();
		
		$this->load->view('administrator/material/nsm_header', $data);
		$this->load->view('administrator/material/nsm_navbar');
		$this->load->view('administrator/material/nsm_sidebar');
		$this->load->view('administrator/nsm_project', $data);
		$this->load->view('administrator/material/nsm_footer');
		return;
	}

}

/* End of file Project.php */