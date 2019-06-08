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
	function nhacc()
	{
		return $this->db->query('select * from nhacc ')->result();
	}


	function sanphambanchay()
	{
		return $this->db->query("select sanpham. *, tenloaisp from sanpham,loaisp
		where sanpham.idloaisp=loaisp.idloaisp and banchay=1 ")->result();
		//return $this->db->query("select * from sanpham where banchay=1")->result();
	}

	function sanphammoi()
	{
		return $this->db->query("select sanpham. *, tenloaisp from sanpham,loaisp
		where sanpham.idloaisp=loaisp.idloaisp and moi=1")->result();
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
	
	function noidung($idloaisp)
	{
		/*$this->db->select('*');
		$this->db->from('sanpham');
		$this->db->where(array('idsp'=>$idsp));
		$data = $this->db->get();*/
		//------
		$this->db->select('*');
		$this->db->from('sanpham');
		//$this->db->join('loaisp', 'loaisp.idloaisp=sanpham.idloaisp');
		$this->db->where(array('idloaisp'=>$idloaisp));
		$data = $this->db->get();
		//Tra ve 1 dong 
			return $data->row_array	();
		
	}
	function menu()
	{

		//return $this->db->query('select * from loaisp ')->result();
		//$array = array('idloaisp' => $idloai);

		$this->db->select('*');
		$this->db->from('loaisp ');
		//$this->db->join('loaisp', 'loaisp.idloaisp=sanpham.idloaisp');
	
		//$this->db->where($array) ;
		$data = $this->db->get();
		return $data->result();
		/*$this->db->select('sanpham.*,loaisp.tenloaisp');
		$this->db->from('sanpham');
		$this->db->join('loaisp','loaisp.idloaisp=sanpham.idloaisp','inner');
		$data=$this->db->get();
		return $data->result();*/
	}
	function menuct($idloaisp)
	{
		$this->db->select('*');
		$this->db->from('loaisp ');
		$this->db->where(array('idloaisp'=>$idloaisp));
		$data = $this->db->get();
		return $data->result();
	}

	function spcungloai($idloaisp)
	{
		//// $data2 = $this->db->query("select * from sanpham where idsp='dt2' ");
		 
		//return $data2 ->row_array();

		//return $this->db->query("select * from sanpham where idsp!=$id")->result();
		$array = array('idloaisp' => $idloaisp);

		$this->db->select('*');
		$this->db->from('sanpham ');
		//$this->db->join('loaisp', 'loaisp.idloaisp=sanpham.idloaisp');
		$this->db->order_by('rand()');
		$this->db->limit(4);
		$this->db->where($array) ;
		$data = $this->db->get();
		return $data->result();
		
	}
	function spcungloaistore($idloaisp)
	{
		//// $data2 = $this->db->query("select * from sanpham where idsp='dt2' ");
		 
		//return $data2 ->row_array();

		//return $this->db->query("select * from sanpham where idsp!=$id")->result();
		$array = array('idloaisp' => $idloaisp);

		$this->db->select('*');
		$this->db->from('sanpham ');
		//$this->db->join('loaisp', 'loaisp.idloaisp=sanpham.idloaisp');
		//$this->db->order_by('rand()');
		//$this->db->limit(4);
		$this->db->where($array) ;
		$data = $this->db->get();
		return $data->result();

		
		
	}

	function spkhac($idsp)
	{
		//// $data2 = $this->db->query("select * from sanpham where idsp='dt2' ");
		 
		//return $data2 ->row_array();

		//return $this->db->query("select * from sanpham where idsp!=$id")->result();
		$array = array('idsp !=' => $idsp);

		$this->db->select('*');
		$this->db->from('sanpham');
		$this->db->where($array) ;
		$data = $this->db->get();
		return $data->result_array();
		
	}

	/* sp khac*/


	function detail($idsp)
	{
		$this->db->select('*');
		$this->db->from('sanpham');
		$this->db->where(array('idsp'=>$idsp));
		$data = $this->db->get();

		//Tra ve 1 dong 
		return $data->row_array();
	}

	function insert($data)
	{
		
		$insert =$this->db->insert('sanpham', $data);

		//echo "<pre>". $this->db->last_query(); print_r($data);
		if (!$insert ) 
		{
   			echo "Err.Loi them...";exit;
		} else 
		{
  			echo "Ok,". $this->db->last_query();//exit;
		}
	}
	function update($id, $data)
	{
		$this->db->where('idsp', $id);
		$this->update('sanpham', $data);
	}

	function delete($id)
	{
		$this->db->where('idsp', $id);
		$this->db->delete('tensp');
		//
	}

	//===================================
	
	function allloai()
	{
		$data = $this->db->get('loaisp')->result_array();
		$temp = array();
		foreach ($data as $key => $value) {
			$temp[$value['idloaisp']]= $value['tenloaisp'];

		}
		return $temp;

	}
	function allloai1()
	{

		return $this->db->get('loaisp')->result();
	}
	
	function editloaisp($id)
	{
		$this->db->select('*');
		$this->db->from('loaisp');
		$this->db->where(array('idloaisp'=>$id));
		$data = $this->db->get();

		return $data->row();
	}

	function updateloaisp($id, $data)
	{
		/*$this->db->where('idloaisp', $id);
		$this->update('loaisp', $data);*/
		$this->db->update('loaisp', $data, array('idloaisp' => $id));
	}

	function insertloaisp( $data)
	{
		
		$this->db->insert('loaisp', $data);
	}

	function deleteloaisp($id)
	{
		$this->db->where('idloaisp', $id);
		$this->db->delete('loaisp');
		
	}

	//=============================


	function allnhacc()
	{
		$data = $this->db->get('nhacc')->result_array();
		$temp = array();
		foreach ($data as $key => $value) {
			$temp[$value['idnhacc']]= $value['tennhacc'];

		}

		//print_r($temp);exit;
		return $temp;
	}
	function allnhacc1()
	{

		return $this->db->get('nhacc')->result();
	}
	
	function editnhacc($id)
	{
		$this->db->select('*');
		$this->db->from('nhacc');
		$this->db->where(array('idnhacc'=>$id));
		$data = $this->db->get();

		return $data->row();
	}

	function updatenhacc($id, $data)
	{
		/*$this->db->where('idnhacc', $id);
		$this->update('nhacc', $data);*/
		$this->db->update('nhacc', $data, array('idnhacc' => $id));
	}

	function insertnhacc( $data)
	{
		
		$this->db->insert('nhacc', $data);
	}

	function deletenhacc($id)
	{
		$this->db->where('idnhacc', $id);
		$this->db->delete('nhacc');
		//
	}
	//====================================chuc nang khac
	function timkiem($timkiem)
	{	
		//$array = array('idsp'=> $timkiem, 'tensp'=> $timkiem, 'giasp'=> $timkiem,'idloaisp'=> $timkiem,'idnhacc'=> $timkiem);
		/*	$this->db->select('*');
		$this->db->from('sanpham');
		$this->db->like('tensp',$timkiem);*/
		return $this->db->query("select * from sanpham where tensp like '%$timkiem%'")->result_array();
		//$data = $this->db->get();

	}

}