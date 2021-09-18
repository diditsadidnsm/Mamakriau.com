<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class About_model extends MY_Model 
{

	protected $perPage = 1000;

	public function getDefaultValues()
	{
		return [
		    'colorservices1'		=> '',
		    'colorservices2'		=> '',
		    'colorservices3'		=> '',
		    'colorservices4'		=> '',
		    'sizeboxservices'		=> '',
		    'textalignservices'		=> '',
		    'sizeboxteam'		=> '',
			'category'		=> '',
			'font'  		=> '',
			'size'  		=> '',
			'color1'  		=> '',
			'color2'  		=> '',
			'color3'  		=> '',
			'color4'  		=> '',
			'title'			=> '',
			'address'		=> '',
			'maps'		    => '',
			'phone'			=> '',
			'email'			=> '',
			'facebook'		=> '',
			'instagram'		=> '',
			'drb'		    => '',
			'bhc'		    => '',
			'linkedin'		=> '',
			'twitter'       => '',
			'description'	=> '',
			'mode'	        => '',
			'image'			=> ''
		];
	}

	public function getValidationRules()
	{
		$validationRules = [
		    [
				'field'	=> 'colorservices1',
				'label'	=> 'Color 1',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'colorservices2',
				'label'	=> 'Color 2',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'colorservices3',
				'label'	=> 'Color 3',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'colorservices4',
				'label'	=> 'Color 4',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'sizeboxservices',
				'label'	=> 'Size Box',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'textalignservices',
				'label'	=> 'Text Align',
				'rules'	=> 'trim|required'
            ],
			[
				'field'	=> 'category',
				'label'	=> 'Category',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'font',
				'label'	=> 'Fonts',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'size',
				'label'	=> 'Size',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'color1',
				'label'	=> 'cColor Title',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'color2',
				'label'	=> 'Color Description',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'color3',
				'label'	=> 'Color Icon Title',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'color4',
				'label'	=> 'Color Icon Description',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'title',
				'label'	=> 'Title',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'address',
				'label'	=> 'Address',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'maps',
				'label'	=> 'Maps',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'phone',
				'label'	=> 'Phone Number',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'email',
				'label'	=> 'Email Address',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'facebook',
				'label'	=> 'URL Facebook',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'instagram',
				'label'	=> 'URL Instagram',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'drb',
				'label'	=> 'URL Dribbble',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'bhc',
				'label'	=> 'URL Behance',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'linkedin',
				'label'	=> 'URL Linkedin',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'twitter',
				'label'	=> 'URL Twitter',
				'rules'	=> 'trim|required'
            ],
            [
				'field'	=> 'description',
				'label'	=> 'About Description',
				'rules'	=> 'trim|required'
			],
			[
				'field'	=> 'mode',
				'label'	=> 'About Description',
				'rules'	=> 'trim|required'
			],
		];

		return $validationRules;
	}

	public function uploadImage($fieldName, $fileName)
	{
		$config	= [
			'upload_path'		=> './images/about',
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
		if (file_exists("./images/about/$fileName")) {
			unlink("./images/about/$fileName");
		}
	}

}

/* End of file About_model.php */