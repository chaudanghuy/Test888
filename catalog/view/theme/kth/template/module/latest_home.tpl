<!-- bof: featured products  -->
<div class="centerColumn" id="indexDefault">
<div id="indexDefaultMainContent"></div>
<?php if ($products) { ?>
<div class="centerBoxWrapper" id="featuredProducts">



	  <h2 class="centerBoxHeading"><?php echo $heading_title; ?></h2>
    
	<?php for ($i = 0; $i < sizeof($products); $i = $i + 4) { ?>  
     <?php for ($j = $i; $j < ($i + 4); $j++) { ?>
     <?php if (isset($products[$j])) { ?>    
    <div class="centerBoxContentsFeatured centeredContent back vLine" style="width:25%;"><div class="product-col" style="margin-left:5px;">

				<div class="img">

					<a href="<?php echo str_replace('&', '&amp;', $products[$j]['href']); ?>"><img src="<?php echo $products[$j]['thumb']; ?>" alt="<?php echo $products[$j]['name']; ?>" title="<?php echo $products[$j]['name']; ?>" height="116" width="138"></a>

				</div>

				<div class="prod-info">

					<a class="name" href="<?php echo str_replace('&', '&amp;', $products[$j]['href']); ?>"><?php echo $products[$j]['name']; ?></a>

				

					<div class="wrapper">

						<div class="bottom1">
                        <?php if ($display_price) { ?>
							<div class="price">

								<strong><?php echo $products[$j]['price']; ?></strong>

							</div>
                        <?php } ?>
							<div class="button"><a href="<?php echo str_replace('&', '&amp;', $products[$j]['href']); ?>">
                                <img src="catalog/view/theme/kth/image/button_add_to_cart.gif" alt="Add to Cart" title=" Add to Cart " height="26" width="88"></a></div>

						</div>

					</div>

				</div>

			</div></div>
<?php } } } ?>
<br class="clearBoth">

 

</div>
<?php } ?>
</div> 
<!-- eof: featured products  -->