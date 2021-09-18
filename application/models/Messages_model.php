<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Messages_model extends MY_Model 
{

	protected $perPage = 1000;

	public function getDefaultValues()
	{
		return [
			'id_admin'	=> '',
			'id_user' 	=> '',
			'message'	=> '',
			'time'	    => ''
		];
	}

	public function getValidationRules()
	{
		$validationRules = [
			[
				'field'	=> 'id_admin',
				'label'	=> 'ID Admin',
				'rules'	=> 'trim'
			],
			[
				'field'	=> 'id_user',
				'label'	=> 'ID User',
				'rules'	=> 'trim'
			],
			[
				'field'	=> 'message',
				'label'	=> 'Message',
				'rules'	=> 'trim|required'
			],
		];

		return $validationRules;
	}

}

/* End of file Message_model.php */