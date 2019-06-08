<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller
{
  function __construct()
  {
    parent::__construct();
    $this->load->model('Mlogin');
  }
 
  function index()
  {
    $this->load->view('web/layout_login',['subview'=>'web/subview_login']);
  }
 
  function auth()
  {
    $email    = $this->input->post('email',TRUE);
    $password = md5($this->input->post('password',TRUE));
    $validate = $this->Mlogin->validate($email,$password);
    if($validate->num_rows() > 0)
    {
        $data  = $validate->row_array();
        $name  = $data['name'];
        $email = $data['email'];
        $level = $data['level'];
        $sesdata = array(
            'name'  => $name,
            'email'     => $email,
            'level'     => $level,
            'logged_in' => TRUE
        );
        $this->session->set_userdata($sesdata);
        if($level === '1'){
            redirect(base_url().'admin');
 
        // access login for author
        }else{
            redirect(base_url());
        }
    }
    else{
        echo $this->session->set_flashdata('msg','Username or Password is Wrong');
        redirect(base_url().'login');
    }
  }
 
  function logout(){
      $this->session->sess_destroy();
      redirect(base_url().'login');
  }
 
}

