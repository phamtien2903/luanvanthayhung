
          <div class="card-header">
            <i class="fas fa-table"></i>
            Data Table Example</div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Image</th>
                    <th>ID San Pham</th>
                    <th>ID Loai</th>
                    <th >Action</th>
                  </tr>
                </thead>
                <tfoot>
                  <tr>
                   <th>Name</th>
                    <th>Price</th>
                    <th>Image</th>
                    <th>ID San Pham</th>
                    <th>ID Loai</th>
                    <th >Action</th>
                  </tr>
                </tfoot>
                <tbody>
                  <?php
                  foreach ($sanpham as $key => $value) 
                  {
                   ?>
                   <tr>
                    <td><a href='<?php echo base_url();?>admin/detail/<?php echo $value['idsp']; ?>'>
                      <?php 
                      echo $value['tensp'];
                      ?>
                        
                      </a></td>
                    <td>
                      <?php 
                      echo ( $value['giasp']);
                      ?>
                    </td>
                    <td>
                      <img src="<?php echo base_url()?>assets/img/sanpham/<?php echo $value['mausp'] ?>" >
                    </td>
                    <td><?php 
                      echo $value['idsp'];
                      ?></td>
                    <td><?php 
                      echo $value['idloaisp'];
                      ?></td>
                    <td>
                       <a href='<?php echo base_url();?>admin/edit/<?php echo $value['idsp']; ?>'><i class="material-icons">mode_edit</i></a>

                       <a href='<?php echo base_url();?>admin/delete/<?php echo $value['idsp']; ?>' onClick="return confirm('Xóa?');"><i class="material-icons" >mode_delete</i></a>
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
        <style type="text/css">
          #dataTable img{width: 50px}
        </style>