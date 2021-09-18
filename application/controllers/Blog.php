<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Blog extends MY_Controller
{

	public function index($page = null)
	{
	    $data['title']      = 'Our Blog';
		$data['content']	= $this->blog->select(
			[
				'book.id', 'book.title AS book_title', 'book.slug AS book_slug',
				'book.description', 'book.image', 'book.writer AS book_writer',
				'kategori.id', 'kategori.title AS kategori_title', 'kategori.slug AS kategori_slug'
			]
		)
			->join('kategori')
			->orderBy('kategori.id', 'desc')
			->get();

		$this->load->view('pages/blog/index', $data);
		$this->load->view('layouts/_footer', $data);
	}
	
	public function comment()
	{
	    $this->load->model('comment_model');
	    
		if (!$_POST) {
			$input	= (object) $this->comment_model->getDefaultValues();
		} else {
			$input	= (object) $this->input->post(null, true);
        }

		if (!$this->comment_model->validate()) {
			$data['input']			= $input;
			$data['form_action']	= base_url('pages/blog/detail');

			$this->load->view('layouts/_header', $data);
		    $this->load->view('layouts/_navbar', $data);
		    $this->load->view('pages/blog/detail', $data);
		    $this->load->view('layouts/_footer', $data);
			return;
		}

		if ($this->comment_model->create($input)) {
			$this->session->set_flashdata('success', 'Data berhasil disimpan!');
		} else {
			$this->session->set_flashdata('error', 'Oops! Terjadi suatu kesalahan');
		}

		redirect(base_url('pages/blog/detail'));
	}
	
	public function word_limiter($str, $limit = 10)
	{
	    if(stripos($str, ""))
	    {
	        $ex_str = explode("", $str);
	        if(count($ex_str) > $limit)
	        {
	            for($i = 0; $i < $limit; $i++)
	            {
	                $str_s .= $ex_str[$i] . "";
	            }
	            return $str_s . "&hellip;";
	        }
	        else
	        {
	            return $str;
	        }
	    }
	    else
	    {
	        return $str;
	    }
	    $this->load->view('layouts/_header', $data);
		$this->load->view('layouts/_navbar', $data);
		$this->load->view('pages/blog/index', $data);
		$this->load->view('layouts/_footer', $data);
	}

	public function sortby($sort, $page = null)
	{
		$data['title']	= 'Belanja'; 
		$data['content']	= $this->blog->select(
			[
				'book.id', 'book.title AS book_title',
				'book.description', 'book.image',
				'kategori.title AS kategori_title', 'kategori.slug AS kategori_slug'
			]
		)
			->join('kategori')
			->orderBy('book.price', $sort)
			->paginate($page)
			->get();
		$data['total_rows']	= $this->blog->where('book.is_available', 1)->count();
		$data['pagination']	= $this->blog->makePagination(
			base_url("blog/sortby/$sort"),
			4,
			$data['total_rows']
		);
		$this->load->view('layouts/_header', $data);
		$this->load->view('layouts/_navbar', $data);
		$this->load->view('pages/blog/index', $data);
	}

	public function kategori($kategori, $page = null)
	{
		$data['title']		= 'Belanja';
		$data['content']	= $this->blog->select(
			[
				'book.id', 'book.title AS book_title', 'book.slug AS book_slug',
				'book.description', 'book.image',
				'kategori.title AS kategori_title', 'kategori.slug AS kategori_slug'
			]
		)
			->join('kategori')
			->where('kategori.slug', $kategori)
			->paginate($page)
			->get();
		$data['total_rows']	= $this->blog->where('book.is_available', 1)->where('kategori.slug', $kategori)->join('kategori')->count();
		$data['pagination']	= $this->blog->makePagination(
			base_url("blog/kategori/$kategori"),
			4,
			$data['total_rows']
		);
		$data['kategori']	= ucwords(str_replace('-', ' ', $kategori));
		
		$this->load->view('layouts/_header', $data);
		$this->load->view('layouts/_navbar', $data);
		$this->load->view('pages/blog/kategori', $data);
		$this->load->view('layouts/_footer', $data);
	}

	public function search($page = null)
	{
		if (isset($_POST['keyword'])) {
			$this->session->set_userdata('keyword', $this->input->post('keyword'));
		} else {
			redirect(base_url('/'));
		}

		$keyword	= $this->session->userdata('keyword');
		$data['title']		= 'Pencarian: Produk';
		$data['content']	= $this->blog->select(
			[
				'book.id', 'book.title AS book_title',
				'book.description', 'book.image',
				'book.is_available',
				'kategori.title AS kategori_title', 'kategori.slug AS kategori_slug'
			]
		)
			->join('kategori')
			->like('book.title', $keyword)
			->orLike('book.description', $keyword)
			->paginate($page)
			->get();
		$data['total_rows']	= $this->blog->like('book.title', $keyword)->orLike('book.description', $keyword)->count();
		$data['pagination']	= $this->blog->makePagination(
			base_url('blog/search'),
			3,
			$data['total_rows']
		);
		$this->load->view('layouts/_header', $data);
		$this->load->view('layouts/_navbar', $data);
		$this->load->view('pages/blog/index', $data);
	}

	public function detail()
	{
		$slug = $this->uri->segment(3);
		$data['rows'] = $this->blog->select(
		    [
				'book.id', 'book.id_kategori', 'book.slug AS book_slug', 'book.title AS book_title', 'book.description', 'book.writer', 'book.image',
				'kategori.title AS kategori_title', 'kategori.slug AS kategori_slug'
			]
		)
		    ->join('kategori')
		    ->where('book.slug', $slug)
		    ->get();
		$this->load->view('pages/blog/detail', $data);
		$this->load->view('layouts/_footer', $data);
		return;
	}
}

/* End of file blog.php */