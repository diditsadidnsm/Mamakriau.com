<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Messages extends MY_Controller 
{
    
    private $id;
	
	public function __construct()
	{
		parent::__construct();
		$role = $this->session->userdata('role');
		$this->id	= $this->session->userdata('id');
		if ($role != 'member') {
			redirect(base_url('/'));
			return;
		}
	}
	
	public function index()
	{
		$data['message'] = $this->messages->select(
		    [
				'messages.id', 'messages.id_admin', 'messages.id_user', 'messages.message', 'messages.time', 'user.name'
			]
		)
		    ->join('user')
		    ->where('messages.id_user', $id)
		    ->get();
		
		$this->load->view('member/pages/nsm_messages', $data);
		return;
		
	}
	

}

/* End of file messages.php */