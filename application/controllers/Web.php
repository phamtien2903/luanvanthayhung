<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Web extends CI_Controller {

	
	public function index()
	{
		$this->load->model('MBook');
		$data1 = $this->MBook->all();
		$data2 = $this->MBook->other();
		$this->load->view('web/my_page', ['data1'=>$data1, 'data2'=>$data2, 'subview'=>'web/subview_index']);
	}

	public function detail($id)
	{
		$this->load->model('MBook');
		$data = $this->MBook->detail($id);
		$this->load->view('web/my_page', ['data1'=>$data, 'subview'=>'admin/subview_detail']);
	}

	public function men()
	{
		$this->load->model('MBook');
		$data1 = $this->MBook->men();
		$data2 = $this->MBook->other();

		$this->load->view('web/my_page', ['data1'=>$data1,'data2'=>$data2, 'subview'=>'admin/subview_2']);
	}
}
