<?php

defined('BASEPATH') or exit('No direct script access allowed');

class About extends MY_Controller
{

	public function index()
	{
		$data['title']	= 'About';
		$data['content']	= $this->about->select(
			[
				'about.id', 'about.font', 'about.size', 'about.color1', 'about.color2', 'about.color3', 'about.color4', 'about.title', 'about.category', 'about.description', 'about.image'
			]
		)
			->get();
			
		$this->load->view('pages/about/index', $data);
		$this->load->view('layouts/_footer');
	}

}

/* End of file About.php */