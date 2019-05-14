<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Layoutf extends CI_Model {

	 function __construct()
	{
		$this->table=$this->db->dbprefix('book');
	}
	#Load data theo book_id va book_name
	function loaddata($book_id,$book_name)
	{
		$this->db->where('book_id',$book_id);
		$this->db->where('book_name',$book_name);
		$query=$this->db->get($this->table);
		return $query->result_array();
	}
}

/* End of file layoutf.php */
/* Location: ./application/models/frontend/layoutf.php */