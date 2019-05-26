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
}
?>