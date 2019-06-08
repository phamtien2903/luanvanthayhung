<?php
$this->load->view('admin/subview_addloaisp');
?>
<div class="card-header">
  <i class="fas fa-table"></i>
  Data Table Example</div>
<div class="card-body">
  <div class="table-responsive">
    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
      <thead>
        <tr>
          <th>StT</th>
          <th>ID</th>
          <th>Name</th>
         
          <th>Thao tac</th>
        </tr>
      </thead>
      <tfoot>
        <tr>
          <th>Name</th>
          <th>Position</th>
          <th>Office</th>
         
          <th>Salary</th>
        </tr>
      </tfoot>
      <tbody>
        <?php
        foreach ($data as $key => $value) 
        {
         ?>
         <tr>
          <td><?php echo ($key + 1) ?></td>
          <td>
            <?php echo $value->idloaisp; ?>
          </td>
          <td>
          <a href='<?php echo base_url();?>admin/detailloaisp/<?php echo $value->idloaisp; ?>'>
            <?php 
            echo $value->tenloaisp;
            ?>
           </a>
         </td>
          <td>
            <a href='<?php echo base_url();?>admin/editloaisp/<?php echo $value->idloaisp; ?>'><i class="material-icons">mode_edit</i></a>
             <a href='<?php echo base_url();?>admin/deleteloaisp/<?php echo $value->idloaisp; ?>'><i class="material-icons">mode_delete</i></a>
          </td>
        </tr>
        <?php
      }
        ?>
      </tbody>
    </table>
  </div>
</div>
<div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
