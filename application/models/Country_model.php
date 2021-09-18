<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Country_model extends MY_Model 
{

	protected $perPage = 1000;

	public function getDefaultValues()
	{
		return [
            'code'	=> '',
            'title'	=> ''
		];
	}

	public function getValidationRules()
	{
		$validationRules = [
			[
				'field'	=> 'code',
				'label'	=> 'Code Country',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'title',
				'label'	=> 'Title Country',
				'rules'	=> 'trim|required'
            ],
		];

		return $validationRules;
	}

}

/* End of file Country_model.php */