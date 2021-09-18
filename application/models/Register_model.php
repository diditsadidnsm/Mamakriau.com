<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Register_model extends MY_Model 
{

	protected $table = 'user';
	
	function __construct(){
		parent::__construct();
		$this->load->database();
	}
	
	public function getAllUsers(){
		$query = $this->db->get('user');
		return $query->result(); 
	}
 
	public function insert($user){
		$this->db->insert('user', $user);
		return $this->db->insert_id(); 
	}
 
	public function getUser($token){
		$query = $this->db->get_where('user',array('token'=>$token));
		return $query->row_array();
	}
 
	public function activate($token){
		$this->db->where('user.token', $token);
		return $this->db->update('user', array('is_active' => 1));
	}

	public function getDefaultValues()
	{
		return [
		    'code'      => '',
		    'token'     => '',
			'name'		=> '',
			'email'		=> '',
			'password'	=> '',
			'role'		=> '',
			'is_active'	=> ''	
		];
	}

	public function getValidationRules()
	{
		$validationRules = [
			[
				'field' => 'name',
				'label'	=> 'Nama',
				'rules'	=> 'trim|required',
			],
			[
				'field' 	=> 'email',
				'label'		=> 'E-Mail',
				'rules'		=> 'trim|required|valid_email|is_unique[user.email]',
				'errors'	=> [
					'is_unique' => 'This %s already used'
				]
			],
			[
				'field' => 'password',
				'label'	=> 'Password',
				'rules'	=> 'required|min_length[8]',
			],
			[
				'field' => 'password_confirmation',
				'label'	=> 'Konfirmasi Password',
				'rules'	=> 'required|matches[password]',
			],
		];

		return $validationRules;
	}

	public function run($input)
	{
		$data		= [
		    'token'		=> $input->token,
		    'code'      => $input->code,
			'name'		=> $input->name,
			'email'		=> strtolower($input->email),
			'password'	=> hashEncrypt($input->password),
			'role'		=> 'member'
		];
		
		$user		  = $this->create($data);
		return true;
	}

}

/* End of file Register_model.php */