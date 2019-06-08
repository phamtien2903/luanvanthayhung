<?php
echo validation_errors();

?>





<div class="container" style="max-width:600px;margin:60px auto;">
	<form action="<?php echo base_url()?>admin/insert" method="post" enctype="multipart/form-data"  role="form">
	   <div class="form-group">
	      <label for="book_id">Mã Sản Phẩm</label>
	      <input type="name" name="idsp" class="form-control" id="idsp" placeholder="Enter  ID Sản Phẩm" value="<?php echo set_value('idsp') ?>">
	   </div>
	   <div class="form-group">
	      <label for="address">Tên Sản Phẩm</label>
	      <input type="name" name="tensp" class="form-control" id="tensp" placeholder="Enter Tên Sản Phẩm" value="<?php echo set_value('tensp') ?>" required>
	   </div>
	   <div class="form-group">
		<label for="mota" class="col-sm-4 control-label">Mô Tả</label>
		
			<textarea class="form-control" rows="4" name="description"> <?php echo set_value('motasp') ?></textarea>
		
		</div>
	   <div class="form-group">
	      <label for="price">Giá</label>
	      <input type="text" class="form-control" id="giasp" placeholder="Enter number" name="giasp"  value="<?php echo set_value('giasp') ?>" >
	   </div>
	   <div class="form-group">
	      <label for="img">Img</label>
	      <input type="file" class="form-control" id="price" placeholder="Enter image" name="img">
	      <div>
	      	<?php
	      		if (isset($error))
	      		{
	      			foreach ($error as $key => $value) {
	      				echo "<div>$value</div>";
	      			}
	      		}
	      	?>
	      </div>
	   </div>
		<div class="form-group">
	      <label for="idloaisp">ID Loại Sản Phẩm</label>
	      <select class="form-control" id="idloaisp" name="idloaisp">
			<?php
				foreach ($loaisp as $key => $value) {
					echo "<option value='$key'>$value </option>";
				}
			?>
	      </select>
	   </div>

	   <div class="form-group">
        <label for="idnhacc">ID Nhà Cung Cấp</label>
        <select  class="form-control" id="idnhacc" name="idnhacc">
      <?php
        foreach ($nhacc as $key => $value) {
          echo "<option value='$key'>$value </option>";
        }
      ?>
        </select>
     </div>

	
	     <button type="submit" class="btn btn-default">Save</button>
	</form>
</div>