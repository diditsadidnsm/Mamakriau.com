<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Brief extends MY_Controller 
{

	private $id;

	public function __construct()
	{
		parent::__construct();
		$role = $this->session->userdata('role');
		if ($role != 'member') {
			redirect(base_url('/'));
			return;
		}
	}
	
	public function index()
	{
		    
		$data['logodesign'] = $this->brief->select(
		    [
				'project.id', 'project.id_user', 'project.url', 'project.username', 'project.sure_name', 'project.no_invoice', 'project.invoice_date', 'project.sure_name',
				'project.home_address', 'project.email', 'project.phone_number', 'project.price',  'project.discount', 'project.all_you_need', 'project.project_name',
				'project.description_target_audience',
				'project.is_status','project.id_service',
				'country.title AS country_title',
				'service.title AS service_title'
			]
		)
		    ->join('user')
		    ->join('country')
		    ->join('service')
		    ->where('project.is_status', 2)
		    ->where('project.id_service', 1)
		    ->get();
		    
		$data['brandidentity'] = $this->brief->select(
		    [
				'project.id', 'project.id_user', 'project.url', 'project.username', 'project.sure_name', 'project.no_invoice', 'project.invoice_date', 'project.sure_name',
				'project.home_address', 'project.email', 'project.phone_number', 'project.price',  'project.discount', 'project.all_you_need', 'project.project_name',
				'project.description_target_audience',
				'project.is_status','project.id_service',
				'country.title AS country_title',
				'service.title AS service_title'
			]
		)
		    ->join('user')
		    ->join('country')
		    ->join('service')
		    ->where('project.is_status', 2)
		    ->where('project.id_service', 2)
		    ->get();
		    
		 $data['webapp'] = $this->brief->select(
		    [
				'project.id', 'project.id_user', 'project.url', 'project.username', 'project.sure_name', 'project.no_invoice', 'project.invoice_date', 'project.sure_name',
				'project.home_address', 'project.email', 'project.phone_number', 'project.price',  'project.discount', 'project.all_you_need', 'project.project_name',
				'project.description_target_audience',
				'project.is_status','project.id_service',
				'country.title AS country_title',
				'service.title AS service_title'
			]
		)
		    ->join('user')
		    ->join('country')
		    ->join('service')
		    ->where('project.is_status', 2)
		    ->where('project.id_service', 3)
		    ->get();
		    
		    
		 $data['nonprofit'] = $this->brief->select(
		    [
				'project.id', 'project.id_user', 'project.url', 'project.username', 'project.sure_name', 'project.no_invoice', 'project.invoice_date', 'project.sure_name',
				'project.home_address', 'project.email', 'project.phone_number', 'project.price',  'project.discount', 'project.all_you_need', 'project.project_name',
				'project.description_target_audience',
				'project.is_status','project.id_service',
				'country.title AS country_title',
				'service.title AS service_title'
			]
		)
		    ->join('user')
		    ->join('country')
		    ->join('service')
		    ->where('project.is_status', 2)
		    ->where('project.id_service', 4)
		    ->get();
		
		$this->load->view('member/pages/nsm_brief', $data);
		return;
		
	}
	
	public function detail($url)
	{
		$data['brief'] = $this->brief->select(
		    [
				'project.id', 'project.id_user', 'project.id_service', 'project.url', 'project.username', 'project.sure_name', 'project.no_invoice', 'project.invoice_date', 'project.sure_name',
				'project.home_address', 'project.email', 'project.phone_number', 'project.price',  'project.discount', 'project.all_you_need', 'project.project_name',
				'project.name_corporate', 'project.slogan_corporate', 'project.description_target_audience', 'project.style_colors',
				'project.style_classic_modern', 'project.style_minimal_complex', 'project.style_feminine_masculine', 'project.style_playful_sophisticated', 'project.style_youthful_mature',
				'project.style_echonomical_luxurious', 'project.style_abstract_literal', 'project.other_notes',
				'country.title AS country_title',
				'service.title AS service_title',
				'industry.title AS industry_title'
			]
		)
		    ->join('user')
		    ->join('industry')
		    ->join('country')
		    ->join('service')
		    ->where('project.url', $url)
		    ->get();
		
		$this->load->view('member/pages/brief/nsm_detail', $data);
		return;
		
	}

}

/* End of file Brief.php */
