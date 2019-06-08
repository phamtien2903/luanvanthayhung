<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	
	public function test()
	{
		$this->load->model('MAdmin');
		$sach = $this->MAdmin->tatca();
		
		$Mydata = array('book'=>$sach);
		
		$this->load->view("admin/index.php",$Mydata);
	}


	public function __construct()
	{ 
		parent::__construct();
		 if($this->session->userdata('logged_in') !== TRUE)
		 {
      		redirect(base_url().'login');
      	 }

      	  if($this->session->userdata('level')==='0')
      	 	redirect(base_url());
     }

     
//================= back end =============
      function index()
     {
     	$this->load->model('MSanpham');
		$data = $this->MSanpham->all();

		$this->load->view('admin/layout', ['sanpham'=>$data, 'subview'=>'admin/subview_index']);
     }

     public function edit($id)
	{
		$this->load->model('MSanpham');
		$data = $this->MSanpham->detail($id);
		$this->load->view('admin/layout', ['data'=>$data,'loaisp'=>$this->MSanpham->allloai(),'nhacc'=>$this->MSanpham->allnhacc(), 'subview'=>'admin/subview_edit']);
	}
	public function update()
	{
		$this->load->model('MSanpham');
		$data = $this->MSanpham->Update($this->input->post('idsp') , $_POST);

		$this->redirect('/Admin');
	}
	public function delete($id)
	{
		$this->load->model('MSanpham');
		$tensp = $this->MSanpham->detail($id);
		//print_r($book);
		unlink(IMAGE_PRODUCT. $tensp['mausp']);
		$this->MSanpham->delete($id);
		redirect('admin/index');
	}

	//=====================================//
//  Thao tac voi loai san pham              //
//  ====================================

	public function loaisp()
	{
		$this->load->model('MSanpham');
		$data = $this->MSanpham->allloai1();

		$this->load->view('admin/layout', ['data'=>$data, 'subview'=>'admin/subview_indexloaisp']);
	}

	public function detailloaisp($id)
	{
		$this->load->model('MSanpham');
		
		$data = $this->MSanpham->detailloaisp($id);
		$this->load->view('admin/layout', ['data'=>$data, 'subview'=>'admin/subview_detailloaisp']);
	}

	public function editloaisp($id='')
	{
		$this->load->model('MSanpham');
		$data = $this->MSanpham->editloaisp($id);
		$this->load->view('admin/layout', ['data'=>$data, 'subview'=>'admin/subview_editloaisp']);
	}

	public function updateloaisp()
	{
		$this->load->model('MSanpham');
		
		$data = array();
		$data['idloaisp'] = $this->input->post('idloaisp');
		$data['tenloaisp'] = $this->input->post('tenloaisp');

		$data = $this->MSanpham->updateloaisp($data['idloaisp'], $data);
		//$this->redirect('/Admin/indexloaisp');
		 redirect(base_url().'admin/loaisp'); 
		
	}

	public function insertloaisp()
	{
		$this->load->model('MSanpham');
		
		$data = array();
		$data['idloaisp'] = $this->input->post('idloaisp');
		$data['tenloaisp'] = $this->input->post('tenloaisp');

		
		$data = $this->MSanpham->insertloaisp( $data);
		
		 redirect(base_url().'admin/loaisp'); 
	
		
	}
	public function deleteloaisp($id='')
	{
		$this->load->model('MSanpham');
		$this->MSanpham->deleteloaisp($id);
		redirect(base_url().'admin/loaisp');
	}


	//=====================================//
//  Thao tac voi nha cung cap              //
//  ====================================

	public function nhacc()
	{
		$this->load->model('MSanpham');
		$data = $this->MSanpham->allnhacc1();

		$this->load->view('admin/layout', ['data'=>$data, 'subview'=>'admin/subview_indexnhacc']);
	}

	public function detailnhacc($id)
	{
		$this->load->model('MSanpham');
		
		$data = $this->MSanpham->detailnhacc($id);
		$this->load->view('admin/layout', ['data'=>$data, 'subview'=>'admin/subview_detailnhacc']);
	}

	public function editnhacc($id='')
	{
		$this->load->model('MSanpham');
		$data = $this->MSanpham->editnhacc($id);
		$this->load->view('admin/layout', ['data'=>$data, 'subview'=>'admin/subview_editnhacc']);
	}

	public function updatenhacc()
	{
		$this->load->model('MSanpham');
		
		$data = array();
		$data['idnhacc'] = $this->input->post('idnhacc');
		$data['tennhacc'] = $this->input->post('tennhacc');
		$data['diachinhacc'] = $this->input->post('diachinhacc');
		$data['dienthoainhacc'] = $this->input->post('dienthoainhacc');


		$data = $this->MSanpham->updatenhacc($data['idnhacc'], $data);
		//$this->redirect('/Admin/indexloaisp');
		 redirect(base_url().'admin/nhacc'); 
		
	}

	public function insertnhacc()
	{
		$this->load->model('MSanpham');
		
		$data = array();
		$data['idnhacc'] = $this->input->post('idnhacc');
		$data['tennhacc'] = $this->input->post('tennhacc');
		$data['diachinhacc'] = $this->input->post('diachinhacc');
		$data['dienthoainhacc'] = $this->input->post('dienthoainhacc');

		
		$data = $this->MSanpham->insertnhacc( $data);
		
		 redirect(base_url().'admin/nhacc'); 
	
		
	}
	public function deletenhacc($id='')
	{
		$this->load->model('MSanpham');
		$this->MSanpham->deletenhacc($id);
		redirect(base_url().'admin/nhacc');
	}



	/* thao tác form load sp*/

	public function add()
	{
		$this->load->model('MSanpham');
		$this->load->view('admin/layout', ['subview'=>'admin/subview_add','nhacc'=>$this->MSanpham->allnhacc(), 'loaisp'=>$this->MSanpham->allloai(),]);

	} 

	public function insert()
	{
		
		$this->load->model('MSanpham');
		if ($this->form_validation->run('sanpham')==false)
		{
		
			$this->load->view('admin/layout', ['subview'=>'admin/subview_add','nhacc'=>$this->MSanpham->allnhacc() ,'loaisp'=>$this->MSanpham->allloai(),]);

		}
		else
		{

			//IMAGE_PRODUCT: in config/constants.php
			 $configFile['upload_path']          = IMAGE_PRODUCT;
             $configFile['allowed_types']        = 'gif|jpg|png';
             $configFile['max_size']             = 1000000;
             $configFile['max_width']            = 1024;
             $configFile['max_height']           = 768;

             $this->load->library('upload', $configFile);
             $this->upload->initialize($configFile);//
             if ( ! $this->upload->do_upload('img'))
                {
                	$error = array('error' => $this->upload->display_errors());
                
                        $error = array('error' => $this->upload->display_errors());
                        $this->load->view('admin/layout', ['subview'=>'admin/subview_add', 'loaisp'=>$this->MSanpham->allloai(),'error'=>$error]);
                    
                }
             else
             {
             //	echo "3333";exit;
             $dataFile = array('upload_data' => $this->upload->data());

			$this->load->model('MSanpham');
			$data = array();
			$data['idsp'] 		= $this->input->post('idsp');
			$data['tensp'] 		= $this->input->post('tensp');
			$data['motasp'] 	= $this->input->post('description');
			$data['giasp'] 			= $this->input->post('giasp');
			$data['idloaisp'] 		= $this->input->post('idloaisp');
			$data['idnhacc'] 		= $this->input->post('idnhacc');
			$data['mausp'] 			= $dataFile['upload_data']['file_name'];

			$this->MSanpham->insert($data);
		
			//redirect('admin/successCat2');
			$this->load->view('admin/layout', ['subview'=>'admin/subview_success']);
			}
		}
	}
}
?>