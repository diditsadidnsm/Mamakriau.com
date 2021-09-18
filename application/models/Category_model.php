<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Category_model extends MY_Model 
{

	protected $perPage = 20;

	public function getDefaultValues()
	{
		return [
			'id' 	      => '',
			'slug'	      => '',
			'title'       => '',
			'description' => '',
			'image'       => ''
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
			[
				'field'	=> 'description',
				'label'	=> 'Description',
				'rules' => 'trim|required'
			],
		];

		return $validationRules;
	}
	
	public function uploadImage($fieldName, $fileName)
	{
		$config	= [
			'upload_path'		=> './images/category',
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
		if (file_exists("./images/category/$fileName")) {
			unlink("./images/category/$fileName");
		}
	}

}

/* End of file Category_model.php */
