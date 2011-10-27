<?php if ($products) { ?>
<div class="spec">

				<div class="carousel-box">

				   <div class="inner">

					  <a class="prev"></a>

					  <a class="next"></a>

					  <h2 class="st1"><?php echo $heading_title; ?></h2>

					  <div style="visibility: visible; overflow: hidden; position: relative; z-index: 2; left: 0px; width: 704px;" class="carousel">

					  	

						 <ul style="margin: 0pt; padding: 0pt; position: relative; list-style-type: none; z-index: 1; width: 2112px; left: -1056px;">
                         <?php for ($i = 0; $i < sizeof($products); $i = $i + 4) { ?>
                         <?php for ($j = $i; $j < ($i + 4); $j++) { ?>
                         <?php if (isset($products[$j])) { ?>
                         <li style="overflow: hidden; float: left; width: 141px; height: 182px;">

								<div class="img"><a href="<?php echo str_replace('&', '&amp;', $products[$j]['href']); ?>"><img src="<?php echo $products[$j]['thumb']; ?>" alt="" height="116" width="138"></a></div>

								<div class="bottom">

									<a class="s-name" href="<?php echo str_replace('&', '&amp;', $products[$j]['href']); ?>"><?php echo $products[$j]['name']; ?></a>
                                    <?php if ($display_price) { ?>   
									<div class="s-price"><?php echo $products[$j]['price']; ?></div>
                                    <?php } ?>
									<a class="link1" href="#"></a>

								</div>

							</li>
                            <?php } } } ?>
                            </ul>

						 <div class="right-line"></div>

					  </div>

				   </div>

				</div>
			</div>
<?php } ?>            