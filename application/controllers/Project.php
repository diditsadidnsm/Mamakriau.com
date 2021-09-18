<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Project extends MY_Controller
{
    public function __construct()
	{
		parent::__construct();
		$this->load->model('product_model');
	}

	public function index($page = null)
	{
		$data['content']	= $this->product_model->select(
			[
				'product.id', 'product.title AS product_title',
				'product.description', 'product.image',
				'product.is_available',
				'category.title AS category_title', 'category.slug AS category_slug', 'category.image AS category_image'
			]
		)
			->join('category')
			->orderBy('product.id', 'desc')
			->get();
		
		$this->load->view('pages/project/index', $data);
	}

	public function category($category, $page = null)
	{
		$data['title']		= $category;
		$data['content']	= $this->product_model->select(
			[
				'product.id', 'product.title AS product_title', 'product.slug AS product_slug',
				'product.description', 'product.image',
				'product.is_available',
				'category.title AS category_title', 'category.description AS category_description', 'category.slug AS category_slug', 'category.image AS category_image', 'mockup.image AS mockup_image', 'mockup.title AS mockup_title'
			]
		)
			->join('category')
			->join('mockup')
			->where('category.slug', $category)
			->paginate($page)
			->get();
			
		$data['category']	= ucwords(str_replace('-', ' ', $category));
		
		$this->load->view('pages/project/category', $data);
	}

	public function search($page = null)
	{
		if (isset($_POST['keyword'])) {
			$this->session->set_userdata('keyword', $this->input->post('keyword'));
		} else {
			redirect(base_url('/product_model'));
		}

		$keyword	= $this->session->userdata('keyword');
		$data['title']		= $keyword;
		$data['content']	= $this->product_model->select(
			[
				'product.id', 'product.title AS product_title', 'product.slug AS product_slug',
				'product.description', 'product.image',
				'product.is_available',
				'category.title AS category_title', 'category.description AS category_description', 'category.slug AS category_slug', 'category.image AS category_image'
			]
		)
			->join('category')
			->like('product.title', $keyword)
			->orLike('product.description', $keyword)
			->paginate($page)
			->get();
		$data['total_rows']	= $this->product_model->like('product.title', $keyword)->orLike('product.description', $keyword)->count();
		$data['pagination']	= $this->product_model->makePagination(
			base_url('project/search'),
			3,
			$data['total_rows']
		);
		
		$this->load->view('pages/project/index', $data);
	}

	public function detail()
	{
		$slug = $this->uri->segment(3);
		$data['rows'] = $this->product_model->select(
		    [
				'product.id', 'product.id_category', 'product.slug AS product_slug', 'product.title AS product_title', 'product.description', 'product.writer',
				'product.client', 'product.url', 'product.date', 'product.image',
				'product.is_available', 'category.title AS category_title', 'category.slug AS category_slug', 'category.image AS category_image', 'detail.image AS detail_image', 'detail.title AS detail_title' 
			]
		)
		    ->join('category')
		    ->join('detail')
		    ->where('product.slug', $slug)
		    ->get();
		    
		$this->load->view('pages/project/detail', $data);
		return;
	}
}

/* End of file product_model.php */