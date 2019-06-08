<div class="container">
  <?php echo validation_errors(); ?>

<div class="alert">Thêm Loại Sản Phẩm</div>
<form class="form-horizontal" role="form" method="post" action="<?php echo base_url();?>admin/insertloaisp">
  
  <div class="form-group">
    <label for="idloaisp" class="col-sm-2 control-label">ID Loaị Sản Phẩm</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="idloaisp" name="idloaisp" placeholder="" value="">
    </div>
  </div>
  <div class="form-group">
    <label for="tenloaisp" class="col-sm-2 control-label">Tên Loại Sản Phẩm</label>
    <div class="col-sm-10">
      <input type="text" name="tenloaisp" class="form-control" value="" >
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-10 col-sm-offset-2">
      <input id="submit" name="submit" type="submit" value="Save" class="btn btn-primary">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-10 col-sm-offset-2">
      <! Will be used to display an alert to the user>
    </div>
  </div>
</form>

</div>