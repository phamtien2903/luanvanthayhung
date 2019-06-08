




		<form class="login100-form validate-form p-b-33 p-t-5">

				<?php
			 if($this->session->userdata('logged_in') !== TRUE)
			 	{?>
			 		 <form action="<?php echo base_url()?>/login/auth" method="post">
				<div class="header-grid-right">
					<a href="#" class="sign-in">Sign In</a>
					<form>
						<div>
						<input type="text" value="email" name="email" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
						</div>
						<div>
						<input type="password" name="password" value="Password" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
						</div>
						<input type="submit" value="Go" >
					</form>
					<label>|</label>
					<a href="signup.html" class="sign-u">Sign Up</a>
				</div>
			</form>
				<?php
				}
			else
			{
				?>
				<div class="header-grid-right">
					<a href=# style="color:white">	Hi, <?php echo $this->session->userdata('name') ?></a>
					
					&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="<?php echo base_url()?>login/logout" style="color:white" >Logout</a>
				</div>
				<?php
			}
				?>
				<div class="clearfix"> </div>
			</div>

				</form>