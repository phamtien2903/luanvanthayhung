<div class="col-md-5">
						<div class="product-details">
							<h2 class="product-name"><?php
                           // print_r($data1);
						   echo $data1['tensp'];
							?></h2>
							<div>
								<div class="product-rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-o"></i>
								</div>
								<a class="review-link" href="#">10 Review(s) | Add your review</a>
							</div>
							<div>
								<h3 class="product-price"><?php echo $data1['giasp']; ?><del class="product-old-price">$990.00</del></h3>
								<span class="product-available">In Stock</span>
							</div>
							<p><?php echo $data1['motasp']?></p>

							<div class="product-options">
								<label>
									Size
									<select class="input-select">
										<option value="0">X</option>
									</select>
								</label>
								<label>
									Color
									<select class="input-select">
										<option value="0">Red</option>
									</select>
								</label>
							</div>

							<div class="add-to-cart">
								<div class="qty-label">
									Qty
									<div class="input-number">
										<input type="number">
										<span class="qty-up">+</span>
										<span class="qty-down">-</span>
									</div>
								</div>
								<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
							</div>

							<ul class="product-btns">
								<li><a href="#"><i class="fa fa-heart-o"></i> add to wishlist</a></li>
								<li><a href="#"><i class="fa fa-exchange"></i> add to compare</a></li>
							</ul>

							<ul class="product-links">
								<li>Category:</li>
								<li><a href="#">Headphones</a></li>
								<li><a href="#">Accessories</a></li>
							</ul>

							<ul class="product-links">
								<li>Share:</li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-envelope"></i></a></li>
							</ul>

						</div>
					</div>