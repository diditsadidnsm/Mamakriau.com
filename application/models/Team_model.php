<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Team_model extends MY_Model 
{

	protected $perPage = 1000;

	public function getDefaultValues()
	{
		return [
            'name'	        => '',
            'title'	        => '',
            'description'	=> '',
            'facebook'	    => '',
            'instagram' 	=> '',
            'linkedin'	    => '',
			'image'	        => ''
		];
	}

	public function getValidationRules()
	{
		$validationRules = [
			[
				'field'	=> 'name',
				'label'	=> 'Name',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'title',
				'label'	=> 'Title',
				'rules'	=> 'trim'
            ],
            [
				'field'	=> 'description',
				'label'	=> 'Description',
				'rules'	=> 'trim'
			],
			[
				'field'	=> 'facebook',
				'label'	=> 'URL Facebook',
				'rules'	=> 'trim'
			],
			[
				'field'	=> 'instagram',
				'label'	=> 'URL Instagram',
				'rules'	=> 'trim'
			],
			[
				'field'	=> 'linkedin',
				'label'	=> 'URL Linkedin',
				'rules'	=> 'trim'
			],
		];

		return $validationRules;
	}

	public function uploadImage($fieldName, $fileName)
	{
		$config	= [
			'upload_path'		=> './images/team',
			'file_name'			=> $fileName,
			'allowed_types'		=> 'jpg|gif|png|jpeg|JPG|PNG',
			'max_size'			=> 1024,
			'max_width'			=> 0,
			'max_height'		=> 0,
			'overwrite'			=> true,
			'file_ext_tolower'	=> true
		];

		$this->load->library('upload', $config);

		if ($this->upload->do_upload($fieldName)) {
			return $this->upload->data();
		} else {
			$this->session->set_flashdata('image_error', $this->upload->display_errors('', ''));
			return false;
		}
	}

	public function deleteImage($fileName)
	{
		if (file_exists("./images/team/$fileName")) {
			unlink("./images/team/$fileName");
		}
	}

}

/* End of file Author_model.php */