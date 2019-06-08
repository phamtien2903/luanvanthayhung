<?php
class MLogin extends CI_Model{
 
  function validate($email,$password){
    $this->db->where('email',$email);
    $this->db->where('password',$password);
    $result = $this->db->get('user',1);
    //echo $this->db->last_query();exit;
    return $result;
  }
 
}