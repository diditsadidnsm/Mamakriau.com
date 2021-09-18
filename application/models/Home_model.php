<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Home_model extends MY_Model
{
	protected $table	= 'product';
	protected $perPage	= 8;
	
	public function project()
{   
    $query = $this->db->get('product');
    if($query->num_rows()>0)
    {
      return $query->num_rows();
    }
    else
    {
      return 0;
    }
}

public function banner()
{   
    $query = $this->db->get('banner');
    if($query->num_rows()>0)
    {
      return $query->num_rows();
    }
    else
    {
      return 0;
    }
}

}

/* End of file Home_model.php */