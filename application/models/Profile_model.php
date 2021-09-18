<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Profile_model extends MY_Model 
{
    private $id;
    
    public function __construct()
	{
		parent::__construct();
		$this->id	= $this->session->userdata('id');
	}
    
    function get_pending(){
    $data = $this->db->query("select * from project where is_status = 1");
        if($data->num_rows() > 0){                                         
            foreach($data->result() as $baris){                                
                $definisidata[] = $baris;                                           
            }
            return $definisidata;                                                      
        }
    }
    
    public function get_pending_detail(){
    $data = $this->db->query("select * from project where id");           
        if($data->num_rows() > 0){                                         
            foreach($data->result() as $baris){                                
                $definisidata[] = $baris;                                           
            }
            return $definisidata;                                                      
        }
    }

	protected $table = 'user';

	public function getDefaultValues()
	{
		return [
			'name' 		       => '',
			'url' 		       => '',
			'no_invoice' 	   => '',
			'username' 		   => '',
			'email'		       => '',
			'paypal_account'   => '',
			'country' 		   => '',
			'home_address' 	   => '',
			'office_address'   => '',
			'phone_number' 	   => '',
			'whatsapp_number'  => '',
			'url_facebook'     => '',
			'url_linkedin'     => '',
			'url_twitter'      => '',
			'url_instagram'    => '',
			'website' 		   => '',
			'post_code' 	   => '',
			'image'		       => ''
		];
	}

	public function getValidationRules()
	{
		$validationRules = [
			[
				'field'	=> 'name',
				'label'	=> 'Nama',
				'rules'	=> 'trim|required'
			],
			[
				'field'	=> 'username',
				'label'	=> 'Username',
				'rules'	=> 'trim|required'
			],
			[
				'field'	=> 'email',
				'label'	=> 'E-Mail',
				'rules'	=> 'trim|required|valid_email'
			],
			[
				'field'	=> 'paypal_account',
				'label'	=> 'Paypal Acoount',
				'rules'	=> 'trim|required|valid_email'
			],
			[
				'field'	=> 'country',
				'label'	=> 'Country',
				'rules'	=> 'trim|required'
			],
			[
				'field'	=> 'home_address',
				'label'	=> 'Home Address',
				'rules'	=> 'trim|required'
			],
			[
				'field'	=> 'office_address',
				'label'	=> 'Office Address',
				'rules'	=> 'trim'
			],
			[
				'field'	=> 'phone_number',
				'label'	=> 'Phone Number',
				'rules'	=> 'trim|required|numeric'
			],
			[
				'field'	=> 'whatsapp_number',
				'label'	=> 'WhastApp Number',
				'rules'	=> 'trim|numeric'
			],
			[
				'field'	=> 'website',
				'label'	=> 'Your Website',
				'rules'	=> 'trim'
			],
			[
				'field'	=> 'post_code',
				'label'	=> 'Post Code',
				'rules'	=> 'trim|required|numeric'
			],
		];

		return $validationRules;
	}

	public function uploadImage($fieldName, $fileName)
	{
		$config	= [
			'upload_path'		=> './images/user',
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
		if (file_exists("./images/user/$fileName")) {
			unlink("./images/user/$fileName");
		}
	}

}

/* End of file Profile_model.php */
