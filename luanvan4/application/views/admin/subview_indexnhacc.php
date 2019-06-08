<?php
//$this->load->view('admin/subview_addnhacc');
?>
<div class="card-header">
  <i class="fas fa-table"></i>
  Data Table Example</div>
<div class="card-body">
  <div class="table-responsive">
    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
      <thead>
        <tr>
          
          <th>ID</th>
          <th>Name</th>
          <th>Address</th>
          <th>Phone</th>
         
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
          
          <td>
            <?php echo $value->idnhacc; ?>
          </td>
          <td>
          <a href='<?php echo base_url();?>admin/detailnhacc/<?php echo $value->idnhacc; ?>'>
            <?php 
            echo $value->tennhacc;
            ?>
           </a>
         </td>
         <td><?php echo $value->diachinhacc; ?></td>
         <td><?php echo $value->dienthoainhacc; ?></td>
          <td>
            <a href='<?php echo base_url();?>admin/editnhacc/<?php echo $value->idnhacc; ?>'><i class="material-icons">mode_edit</i></a>
             <a href='<?php echo base_url();?>admin/deletenhacc/<?php echo $value->idnhacc; ?>'><i class="material-icons">mode_delete</i></a>
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
