<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Navbar_model extends MY_Model 
{

	protected $perPage = 20;

	public function getDefaultValues()
	{
		return [
			'title'	=> '',
			'color'	=> '',
			'url'   => '',
			'image' => ''
		];
	}

	public function getValidationRules()
	{
		$validationRules = [
			[
				'field'	=> 'title',
				'label'	=> 'Title Navbar',
				'rules' => 'trim|required'
			],
			[
				'field'	=> 'color',
				'label'	=> 'Color Navbar',
				'rules' => 'trim'
			],
			[
				'field'	=> 'url',
				'label'	=> 'URL Navbar',
				'rules' => 'trim|required'
			],
		];

		return $validationRules;
	}
	
	public function uploadImage($fieldName, $fileName)
	{
		$config	= [
			'upload_path'		=> './images/navbar',
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
		if (file_exists("./images/navbar/$fileName")) {
			unlink("./images/navbar/$fileName");
		}
	}

}

/* End of file Navbar_model.php */
