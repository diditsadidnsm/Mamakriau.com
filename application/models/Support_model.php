<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Support_model extends MY_Model 
{

	protected $perPage = 1000;

	public function getDefaultValues()
	{
		return [
            'title'	=> '',
            'url'	=> '',
			'image'	=> ''
		];
	}

	public function getValidationRules()
	{
		$validationRules = [
            [
				'field'	=> 'title',
				'label'	=> 'Title Supported',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'url',
				'label'	=> 'URL Supported',
				'rules'	=> 'trim|required'
            ],
		];

		return $validationRules;
	}

	public function uploadImage($fieldName, $fileName)
	{
		$config	= [
			'upload_path'		=> './images/support',
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
		if (file_exists("./images/support/$fileName")) {
			unlink("./images/support/$fileName");
		}
	}

}

/* End of file Support_model.php */