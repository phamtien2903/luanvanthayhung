      <form class="form-horizontal" role="form" method="post" action="<?php echo base_url();?>admin/updateloaisp">
  
  <div class="form-group">
    <label for="email" class="col-sm-2 control-label">ID</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="idloaisp" name="idloaisp" placeholder="" value="<?php echo $data->idloaisp;?>">
    </div>
  </div>
  <div class="form-group">
    <label for="message" class="col-sm-2 control-label">Tên Loại</label>
    <div class="col-sm-10">
      <input type="text" name="tenloaisp" class="form-control" value="<?php echo $data->tenloaisp;?>" >
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
          <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
        