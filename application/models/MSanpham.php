<?php
class MSanpham extends CI_Model
{
	function all()
	{
		/*echo $this->db->count_all_results('book');
		echo $this->db->last_query();
		exit;*/
		//1.
		return $this->db->query("select * from sanpham ")->result_array();

		/* 2.
		$data = $this->db->get('book');
		$this->db->select('*');
		$this->db->get('book');
		return $data->result_array();
		 */

		/* 3.
		$data = $this->db->get('book');
		$this->db->select('*');
		$data = $this->db->get('book');
		return $data->result_array();
		return $data->result();*/


	}

	function loaisp()
	{
		return $this->db->query('select * from loaisp ')->result();
	}

	function sanphambanchay()
	{
		return $this->db->query("select sanpham.*, tenloaisp from sanpham,loaisp
where sanpham.idloaisp=loaisp.idloaisp and banchay=1")->result();
	}

	function sanphammoi()
	{
		return $this->db->query("select * from sanpham where moi=1")->result();
	}
	function chitiet($idsp)
	{
		/*$this->db->select('*');
		$this->db->from('sanpham');
		$this->db->where(array('idsp'=>$idsp));
		$data = $this->db->get();*/
		$this->db->select('*');
		$this->db->from('sanpham');
		$this->db->join('loaisp', 'loaisp.idloaisp=sanpham.idloaisp');
		$this->db->where(array('idsp'=>$idsp));
		$data = $this->db->get();
		//Tra ve 1 dong 
		return $data->row_array();
	}
	function menu()
	{
		return $this->db->query('select * from loaisp ')->result();
	}


	/*function spkhac()
	{
		 $data2 = $this->db->query("select * from sanpham where idsp='dt2' ");
		 
		return $data2 ->row_array();

		//return $this->db->query("select * from sanpham where idsp!=$id")->result();
		$array = array('idsp =' => $idspk='dt1');

		$this->db->select('*');
		$this->db->from('sanpham');
		$this->db->where($array) ;
		$data = $this->db->get();
		return $data->result_array();
		
	}*/

	
}