<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Comment_model extends MY_Model 
{

	protected $perPage = 20;

	public function getDefaultValues()
	{
		return [
			'name'	    => '',
			'email'	    => '',
			'message'   => ''
		];
	}

	public function getValidationRules()
	{
		$validationRules = [
			[
				'field'	=> 'name',
				'label'	=> 'Name',
				'rules' => 'trim|required'
			],
			[
				'field'	=> 'email',
				'label'	=> 'Email',
				'rules' => 'trim|required'
			],
			[
				'field'	=> 'message',
				'label'	=> 'Message',
				'rules' => 'trim|required'
			],
		];

		return $validationRules;
	}

}

/* End of file Comment_model.php */