<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Seo_model extends MY_Model 
{

	protected $perPage = 1000;

	public function getDefaultValues()
	{
		return [
            'title'	      => '',
            'site'	      => '',
            'description' => '',
            'keyword'     => '',
            'url'         => '',
            'type'        => '',
			'image'	      => ''
		];
	}

	public function getValidationRules()
	{
		$validationRules = [
            [
				'field'	=> 'title',
				'label'	=> 'Title Website',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'site',
				'label'	=> 'Site Website',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'description',
				'label'	=> 'Description Website',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'keyword',
				'label'	=> 'Keyword Website',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'url',
				'label'	=> 'URL Website',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'type',
				'label'	=> 'Type Website',
				'rules'	=> 'trim|required'
            ],
		];

		return $validationRules;
	}

	public function uploadImage($fieldName, $fileName)
	{
		$config	= [
			'upload_path'		=> './images/seo',
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
		if (file_exists("./images/seo/$fileName")) {
			unlink("./images/seo/$fileName");
		}
	}

}

/* End of file Author_model.php */