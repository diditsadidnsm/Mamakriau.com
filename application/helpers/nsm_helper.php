<?php

	function getDropdownList($table, $columns)
	{
		$CI		=& get_instance();
		$query	= $CI->db->select($columns)->from($table)->get();

		if ($query->num_rows() >= 1) {
			$option1	= ['' => '- Select -'];
			$option2	= array_column($query->result_array(), $columns[1], $columns[0]);
			$options	= $option1 + $option2;

			return $options;
		}

		return $options	= ['' => '- Select -'];
	}
	
	function getTestimonials()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('testimonials')->result();
		return $query;
	}
	
	function getUser()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('user')->result();
		return $query;
	}
	
	function getStep()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('dstep')->result();
		return $query;
	}
	
	function getWhyWe()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('dwhy')->result();
		return $query;
	}
	
	function getBannerDesign()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('dbanner')->result();
		return $query;
	}
	
	function getDashboardBlog()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('book')->result();
		return $query;
	}
	
	function getCountry()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('country')->result();
		return $query;
	}
	
	function getIndustry()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('industry')->result();
		return $query;
	}
	
	function getBannerCategory()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('author')->result();
		return $query;
	}
	
	function getHomeBlog()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('book', 3)->result();
		return $query;
	}
	
	function getHomeProduct()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('product', 12)->result();
		return $query;
	}
	
	function getSmartWord()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('word')->result();
		return $query;
	}
	
	function getCategoryImage()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('category', 3)->result();
		return $query;
	}
	
	function getProductDashboard()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('product', 5)->result();
		return $query;
	}
	
	function getServiceDashboard()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('service', 5)->result();
		return $query;
	}
	
	function getSeo()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('seo', 1)->result();
		return $query;
	}
	
	function getIcon()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('icon', 8)->result();
		return $query;
	}
	
	function getLogo()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('logo', 1)->result();
		return $query;
	}
	
	function getNavbar()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('navbar', 10)->result();
		return $query;
	}
	
	function getServices()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('services')->result();
		return $query;
	}

	function getProduct()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('product')->result();
		return $query;
	}
	
	function getTeam()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('team', 6)->result();
		return $query;
	}
	
	function getBannerBrief()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('brief', 1)->result();
		return $query;
	}
	
	function getServicesBrief()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('form', 30)->result();
		return $query;
	}
	
	function getPromoteBrief()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('promote', 30)->result();
		return $query;
	}

	function getBanner()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('banner')->result();
		return $query;
	}

	function getSupport()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('support')->result();
		return $query;
	}

	function getAbout()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('about', 1)->result();
		return $query;
	}

	function getHome()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('product', 20)->result();
		return $query;
	}

	function getAuthor()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('author')->result();
		return $query;
	}

	function getCategories()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('category')->result();
		return $query;
	}
	
	function getSubCategories()
	{
		$CI		=& get_instance();
		
		$query	= $CI->db->get('sub')->result();
		return $query;
	}
	
	function getCatserv()
	{
		$CI		=& get_instance();
		$query	= $CI->db->get('catserv')->result();
		return $query;
	}
	
	function getSubserv()
	{
		$CI		=& get_instance();
		
		$query	= $CI->db->get('subserv')->result();
		return $query;
	}

	function getCart()
	{
		$CI		=& get_instance();
		$userId	= $CI->session->userdata('id');

		if ($userId) {
			$query	= $CI->db->where('id_user', $userId)->count_all_results('cart');
			return $query;
		}

		return false;
	}

	function hashEncrypt($input)
	{
		$hash	= password_hash($input, PASSWORD_DEFAULT);
		return $hash;
	}

	function hashEncryptVerify($input, $hash)
	{
		if (password_verify($input, $hash)) {
			return true;
		} else {
			return false;
		}
	}