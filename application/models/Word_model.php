<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Word_model extends MY_Model 
{

	public function getDefaultValues()
	{
		return [
			'title' => '',
			'size'  => '',
			'image'	=> ''
		];
	}

	public function getValidationRules()
	{
		$validationRules = [
			[
				'field'	=> 'title',
				'label'	=> 'Title Banner',
				'rules'	=> 'trim|required'
			],
			[
				'field'	=> 'size',
				'label'	=> 'Size Title',
				'rules'	=> 'trim|required'
			],
		];

		return $validationRules;
	}

	public function uploadImage($fieldName, $fileName)
	{
		$config	= [
			'upload_path'		=> './images/word',
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
		if (file_exists("./images/word/$fileName")) {
			unlink("./images/word/$fileName");
		}
	}

}

/* End of file Word_model.php */