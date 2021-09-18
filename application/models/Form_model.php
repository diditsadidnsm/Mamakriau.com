<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Form_model extends MY_Model 
{

	protected $perPage = 1000;

	public function getDefaultValues()
	{
		return [
			'title'	=> '',
			'sub'   => '',
			'url'   => '',
			'image'	=> ''
		];
	}

	public function getValidationRules()
	{
		$validationRules = [
			[
				'field'	=> 'title',
				'label'	=> 'Title Banner',
				'rules'	=> 'trim'
			],
			[
				'field'	=> 'sub',
				'label'	=> 'Sub Title Banner',
				'rules'	=> 'trim'
			],
			[
				'field'	=> 'url',
				'label'	=> 'URL Discover',
				'rules'	=> 'trim'
			],
		];

		return $validationRules;
	}

	public function uploadImage($fieldName, $fileName)
	{
		$config	= [
			'upload_path'		=> './images/form',
			'file_name'			=> $fileName,
			'allowed_types'		=> 'jpg|gif|png|jpeg|JPG|PNG',
			'max_size'			=> 110000,
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
		if (file_exists("./images/form/$fileName")) {
			unlink("./images/form/$fileName");
		}
	}

}

/* End of file Banner_model.php */