<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Web extends CI_Controller {

	
	public function index()
	{
		$this->load->model('MSanpham');
		$loaisp = $this->MSanpham->loaisp();
		$moi = $this->MSanpham->sanphammoi();
		$banchay = $this->MSanpham->sanphambanchay();
		$menu =$this->MSanpham->menu();
		$this->load->view('web/my_page', ['loaisp'=>$loaisp, 'spmoi'=>$moi,'spbanchay'=>$banchay, 'menu'=>$menu,'subview'=>'web/subview_index']);
	}
		public function detail()
	{
		$this->load->model('MSanpham');
		$loaisp = $this->MSanpham->loaisp();
		$this->load->view('web/my_page', ['loaisp'=>$loaisp ,'subview'=>'web/subview_index']);
	}
	public function product()
	{
			$this->load->view('web/product');
	}
	public function blank()
	{
		$this->load->view('web/blank');
	}
	public function store()
	{
		$this->load->view('web/store');
	}
	public function chitiet($idsp)
	{
		$this->load->model('MSanpham');
		$data = $this->MSanpham->chitiet($idsp);
		//$data2= $this->MSanpham->spkhac();
		
		//print_r($data);exit;
		$this->load->view('web/product', ['data1'=>$data,/*'data2'=>$data2,*/'subview1'=>'web/subview_chitiet']);
	}
	
}
?>