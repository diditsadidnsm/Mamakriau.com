<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Project_model extends MY_Model 
{

	protected $table	= 'project';
	
	public function getProject($id = ''){
        $this->db->select('id,project_name,image,price');
        $this->db->from('project');
        if($id){
            $this->db->where('id',$id);
            $query = $this->db->get();
            $result = $query->row_array();
        }else{
            $this->db->order_by('project_name','asc');
            $query = $this->db->get();
            $result = $query->result_array();
        }
        return !empty($result)?$result:false;
    }
 
    public function storeTransaction($data = array()){
        $insert = $this->db->insert('payments',$data);
        return $insert?true:false;
    }
	
	public function getDefaultValues()
	{
		return [
		    'project_name'	                => '',
			'name_corporate'	            => '',
			'slogan_corporate' 	            => '',
			'style_classic_modern'			=> '',
			'style_minimal_complex'			=> '',
			'style_feminine_masculine'	    => '',
			'style_playful_sophisticated'	=> '',
			'style_youthful_mature'   		=> '',
			'style_echonomical_luxurious'  	=> '',
			'style_abstract_literal'		=> '',
			'style_colors'	                => '',
			'id_industry'			        => '',
			'description_target_audience'	=> '',
			'id_country'	                => '',
			'home_address'	                => '',
			'company_address'	            => '',
			'phone_number'	                => '',
			'email'	                        => '',
			'sure_name'	                    => '',
			'username'	                    => '',
			'website'	                    => '',
			'duration_start'	            => '',
			'duration_end'	                => '',
			'web_type'	                    => '',
			'storage'	                    => '',
			'all_you_need'	                => '',
			'other_notes'	                => '',
			'image'	                        => ''
		];
	}

	public function getValidationRules()
	{
		$validationRules = [
		    [
				'field' 	=> 'project_name',
				'label'		=> 'Project Name',
				'rules'		=> 'trim|required|is_unique[project.project_name]',
				'errors'	=> [
					'is_unique' => 'This project %s already excited'
				]
			],
			[
				'field'	=> 'name_corporate',
				'label'	=> 'Name Corporate',
				'rules'	=> 'trim|required'
			],
			[
				'field'	=> 'id_industry',
				'label'	=> 'Your Industry',
				'rules'	=> 'required'
			],
			[
				'field'	=> 'description_target_audience',
				'label'	=> 'Description Target',
				'rules'	=> 'trim|required'
			],
			[
				'field'	=> 'id_country',
				'label'	=> 'Your Country',
				'rules'	=> 'required'
			],
			
		];

		return $validationRules;
	}

	public function uploadImage($fieldName, $fileName)
	{
		$config	= [
			'upload_path'		=> './images/project',
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
	

}

/* End of file Project_model.php */