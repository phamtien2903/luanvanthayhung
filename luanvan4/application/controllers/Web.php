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
		//
		$this->load->view('web/my_page', ['loaisp'=>$loaisp, 'spmoi'=>$moi,'spbanchay'=>$banchay, 'menu'=>$menu,'subview'=>'web/subview_index','submenu'=>'web/subview_menu']);
	}

public function detail()
	{
		$this->load->model('MSanpham');
		$loaisp = $this->MSanpham->loaisp();
		$menu =$this->MSanpham->menu();
		$moi = $this->MSanpham->sanphammoi();
		$banchay = $this->MSanpham->sanphambanchay();
		$data =  array('subview'=>'web/subview_index','loaisp'=>$loaisp ,'menu'=>$menu, 'spmoi'=>$moi, 'spbanchay'=>$banchay);

		$this->load->view('web/my_page', $data);
	}
	public function product()
	{
			$this->load->view('web/product');
	}
	public function blank()
	{
		$this->load->view('web/blank');
	}
	public function store($idloaisp)
	{
		$this->load->model('MSanpham');
		$data = $this->MSanpham->menu();
		$menuct = $this->MSanpham->menuct($idloaisp);
		$noidung = $this->MSanpham->noidung($idloaisp);
		//$data2 = $this->MSanpham->chitiet($idsp);
		//echo "<pre>";print_r($data);exit;
		$spcungloaistore= $this->MSanpham->spcungloaistore($idloaisp);
		$this->load->view('web/store',['menuct'=>$menuct,'data1'=>$data,'noidung'=>$noidung,'spcungloaistore'=>$spcungloaistore,'subviewstore'=>'web/subview_store']);
	}
	public function chitiet($idsp)
	{
		$this->load->model('MSanpham');
		$menu = $this->MSanpham->menu();
		$data = $this->MSanpham->chitiet($idsp);
		//echo "<pre>";print_r($data);exit;
			$data2= $this->MSanpham->spcungloai($data['idloaisp']);
		
		//print_r($data);exit;
		$this->load->view('web/product', ['menu'=>$menu,'data1'=>$data,'spkhac'=>$data2,'subview1'=>'web/subview_chitiet']);
	}
	public function timkiem()
	{
		$timkiem = $this->input->post('timkiem');
		//echo "<pre>";print_r($timkiem);exit;
		$this->load->model('MSanpham');
		$data = $this->MSanpham->timkiem($timkiem);

		//$timkiem=$this->MSanpham->timkiem($timkiem);
		//load view
		$this->load->view('web/sptimkiemdc', ['timkiem'=>$data]);
		
	}
	
}
?>