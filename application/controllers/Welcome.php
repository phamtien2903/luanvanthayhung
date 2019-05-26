<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct(){
		parent ::__construct();
		$this->load->model('frontend/layoutf'); 
		$this->data['testdata']=$this->layoutf->loaddata(1,0);
	}

	public function index()
	{
		
		$this->load->view('web/test',$this->data);
	}

	/*public function index()
	{
		$this->load->view('admin/index.php');
	}*/
}
	