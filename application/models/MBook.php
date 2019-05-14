<?php
class MBook extends CI_Model
{
	function all()
	{
		/*echo $this->db->count_all_results('book');
		echo $this->db->last_query();
		exit;*/
		//1.
		return $this->db->query("select * from book limit 0,3")->result_array();

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

/*
quan ao Nam

 */
	function men()
	{
		return $this->db->query("select * from book where cat_id='th' ")->result_array();
	}

	/*
San pham khac.

 */
	function other()
	{
		return $this->db->query("select * from book where cat_id='th' ")->result_array();
	}

	function detail($book_id)
	{
		$this->db->select('*');
		$this->db->from('book');
		$this->db->where(array('book_id'=>$book_id));
		$data = $this->db->get();
		//Tra ve 1 dong
		return $data->row_array();
	}



	function insert($data)
	{
		
		$insert =$this->db->insert('book', $data);
		if (!$insert ) 
		{
   			echo "Err.Loi them...";
		} else 
		{
  			echo "Ok,". $this->db->last_query();exit;
		}
	}

	function update($id, $data)
	{
		$this->db->where('book_id', $id);
		$this->update('book', $data);
	}

	function delete($id)
	{
		$this->db->where('book_id', $id);
		$this->db->delete('book');
		//
	}

	//=========================================
	function allCat()
	{
		return $this->db->get('category')->result();
	}

	function editCat($id)
	{
		$this->db->select('*');
		$this->db->from('category');
		$this->db->where(array('cat_id'=>$id));
		$data = $this->db->get();

		return $data->row();
	}

	function updateCat($id, $data)
	{
		/*$this->db->where('cat_id', $id);
		$this->update('category', $data);*/
		$this->db->update('category', $data, array('cat_id' => $id));
	}

	function insertCat( $data)
	{
		
		$this->db->insert('category', $data);
	}

	function deleteCat($id)
	{
		$this->db->where('cat_id', $id);
		$this->db->delete('category');
		//
	}
}