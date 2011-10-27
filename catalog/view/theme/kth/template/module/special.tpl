<div class="box" id="specials" style="width:230px;">

            <div class="box-bottom">

				<div class="box-top">

					<div class="box-right">

						<div class="box-left">

							<div class="box-bottom-right">

								<div class="box-bottom-left">

									<div class="box-top-right">

										<div class="box-top-left">

										

											<div class="box-head">

												<a href="#">Specials</a>											</div>

			

											<div class="box-body">

												<div class="sideBoxContent centeredContent">
                                                 <?php if ($products) { ?>
                                                    <div class="img">
                                                        <a href="<?php echo str_replace('&', '&amp;', $product['href']); ?>">
                                                            <img src="<?php echo $product['image']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" height="116" width="138">
                                                        </a><br>
                                                    </div>
                                                            <a class="name" href="<?php echo str_replace('&', '&amp;', $product['href']); ?>"><?php echo $product['name']; ?></a><div class="bottom1">                                                            
                                                            <div class="price">
                                                                <?php if ($display_price) { ?>
                                                                    <span class="normalprice"><?php echo $product['price']; ?></span>&nbsp;
                                                                <?php } ?>
                                                                <?php if (!$product['special']) { ?>
                                                                    <span class="productSpecialPrice"><?php echo $product['special']; ?></span>
                                                                <?php } ?>
                                                            </div>
                                                            <a href="#"><img src="catalog/view/theme/kth/image/button_add_to_cart.gif" alt="Add to Cart" title=" Add to Cart " height="26" width="88">
                                                        </a>
                                                    </div>
                                                 <?php } ?>   
                                                </div>									
                                            </div> 

			

										</div>

									</div>

								</div>

							</div>

						</div>

					</div>

				</div>

			</div>

            

        </div>