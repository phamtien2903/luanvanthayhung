<?php 
$config = array(
	'loaisp'=> array(
		               array(
		                     'field'   => 'idloaisp', 
		                     'label'   => 'idloaisp', 
		                     'rules'   => 'trim|required|min_length[2]|max_length[5]|is_unique[loaisp.idloaisp]',
		                     'errors'	=> array(
		                     				'is_unique'=>'Ma da co trong db',
		                     				'min_length'=>'Cat id: Toi thieu 2 ktu',
		                     				'max_length'=>'Cat id toi da 5 ky tu'
		                     				)
		                  ),
		               array(
		                     'field'   => 'tenloaisp', 
		                     'label'   => 'tenloaisp', 
		                     'rules'   => 'min_length[3]|max_length[30]',
		                     'errors'	=> array(	'min_length' =>'Ten loai co it nhat 3kt',
		                     						'max_length'=>'Ten loai co toi da 30 ktu' 
		                     					)
		                  ),

		           ),
	'sanpham'=>array(
					array(
							'field'	=>'idsp',
							'label'=>'idsp',
							'rules'	=>'trim|required|is_unique[sanpham.idsp]',
							'errors'=>array('required'=>'ma sach phai co data',
											'is_unique'=>'Ma nay da co trong CSDL'
											)
					),
					array('field'	=>'tensp',
							'label'=>'tensp',
							'rules'	=>'trim|required|min_length[5]',
							'errors'=>array('required'=>'Ten sach phai co data',
											'min_length'=>'Toi thieu 5 ky tu'
											)),
					array(
							'field'	=>'description',
							'label'=>'Mo ta ',
							'rules'	=>'trim|required|min_length[5]',
							'errors'=>array('required'=>'mota phai co data',
											'min_length'=>'Mo ta phai co it nhat 20 ky tu'
											)
					),
					array(),
				)
            );

 