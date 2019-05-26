<?php
class MAdmin extends CI_Model
{
	function tatca()
	{
		$data = $this->db->query("select * from sanpham");
		return $data->result();
		//return $data->result_array();
		//return $this->db->query("select * from book")->result();
	}
}