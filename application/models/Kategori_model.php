<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Kategori_model extends MY_Model 
{

	protected $perPage = 20;

	public function getDefaultValues()
	{
		return [
			'slug'	      => '',
			'title'       => ''
		];
	}

	public function getValidationRules()
	{
		$validationRules = [
			[
				'field'	=> 'slug',
				'label'	=> 'Slug',
				'rules' => 'trim|required|callback_unique_slug'
			],
			[
				'field'	=> 'title',
				'label'	=> 'Kategori',
				'rules' => 'trim|required'
			],
		];

		return $validationRules;
	}

}

/* End of file Kategori_model.php */
