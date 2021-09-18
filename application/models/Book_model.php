<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Book_model extends MY_Model 
{

	protected $perPage = 1000;

	public function getDefaultValues()
	{
		return [
			'id_kategori'	=> '',
			'slug'			=> '',
			'writer'		=> '',
			'title'			=> '',
			'description'	=> '',
			'alt'	        => '',
			'image'			=> ''
		];
	}

	public function getValidationRules()
	{
		$validationRules = [
			[
				'field'	=> 'id_kategori',
				'label'	=> 'Kategori',
				'rules'	=> 'required'
			],
			[
				'field'	=> 'slug',
				'label'	=> 'Slug',
				'rules'	=> 'trim|required|callback_unique_slug'
			],
			[
				'field'	=> 'writer',
				'label'	=> 'Writer',
				'rules'	=> 'trim|required'
			],
			[
				'field'	=> 'title',
				'label'	=> 'Title',
				'rules'	=> 'trim|required'
			],
			[
				'field'	=> 'description',
				'label'	=> 'Deskripsi',
				'rules'	=> 'trim|required'
			],
			[
				'field'	=> 'alt',
				'label'	=> 'Alt Images',
				'rules'	=> 'trim'
			],
		];

		return $validationRules;
	}

	public function uploadImage($fieldName, $fileName)
	{
		$config	= [
			'upload_path'		=> './images/blog',
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
		if (file_exists("./images/blog/$fileName")) {
			unlink("./images/blog/$fileName");
		}
	}

}

/* End of file Blog_model.php */