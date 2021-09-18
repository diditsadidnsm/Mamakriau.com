<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Industry_model extends MY_Model 
{

	protected $perPage = 1000;

	public function getDefaultValues()
	{
		return [
            'title'	=> ''
		];
	}

	public function getValidationRules()
	{
		$validationRules = [
            [
				'field'	=> 'title',
				'label'	=> 'Title Industry',
				'rules'	=> 'trim|required'
            ],
		];

		return $validationRules;
	}

}

/* End of file Country_model.php */