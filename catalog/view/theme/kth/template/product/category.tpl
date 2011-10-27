<?php echo $header; ?>
<table id="contentMainWrapper" border="0" cellpadding="0" cellspacing="0" width="100%">

	<tbody><tr>
            <?php echo $column_left; ?>
         
            <td id="column-center" valign="top">
            	                <div class="column-center-padding">
                	                    <!--content_center-->
                
                
                        <!-- bof breadcrumb -->
                                                <!-- eof breadcrumb -->
                    
    
                        <!-- bof upload alerts -->
                                                <!-- eof upload alerts -->
    
                    
						<div class="centerColumn" id="indexCategories">
<h1 id="indexCategoriesHeading"><?php echo $heading_title; ?></h1>

<div class="wrapper" id="categoryDescription">



<div class="tie2 text2 tie-margin1">
	<div class="tie2-indent">
     <?php if ($description) { ?>
<div class="catDescContent"><strong>Property categories:</strong><br>
    <?php echo $description; ?>
</div>
 <?php } ?>
<!-- BOF: Display grid of available sub-categories, if any -->
	</div>
</div>

</div>

<div class="tie">
	<div class="tie-indent">
	
    <?php if ($products) { ?>
    <?php for ($i = 0; $i < sizeof($products); $i = $i + 4) { ?>
    <?php for ($j = $i; $j < ($i + 4); $j++) { ?>
    <?php if (isset($products[$j])) { ?>
        <div class="categoryListBoxContents" style="width:33%;">
            <a href="<?php echo $products[$j]['href']; ?>">
                <img src="<?php echo $products[$j]['thumb']; ?>" alt="<?php echo $products[$j]['name']; ?>" title="<?php echo $products[$j]['name']; ?>" height="116" width="138"><br><span><?php echo $products[$j]['name']; ?></span>
            </a>
        </div>
    <?php } } } }  ?>               
<br class="clearBoth">
 
<!-- EOF: Display grid of available sub-categories -->


<!-- bof: featured products  -->
<div class="centerBoxWrapper" id="featuredProducts">

	  <h2 class="centerBoxHeading">Featured Products - Helmets &amp; Riding Gear</h2>
	  
    <div class="centerBoxContentsFeatured centeredContent back " style="width:25%;"><div class="product-col">
				<div class="img">
					<a href="#"><img src="catalog/view/theme/kth/image/01.jpg" alt="Dolor sit amet, consectetur dolor sit" title=" Dolor sit amet, consectetur dolor sit " height="116" width="138"></a>
				</div>
				<div class="prod-info">
					<a class="name" href="#">Dolor sit amet, consectetur dolor sit</a>
				
					<div class="wrapper">
						<div class="bottom1">
							<div class="price">
								<strong>$550.00</strong>
							</div>
							<div class="button"><a href="#"><img src="catalog/view/theme/kth/image/button_add_to_cart.gif" alt="Add to Cart" title=" Add to Cart " height="26" width="88"></a></div>
						</div>
					</div>
				</div>
			</div></div>
    
    <div class="centerBoxContentsFeatured centeredContent back vLine" style="width:25%;"><div class="product-col" style="margin-left:5px;">
				<div class="img">
					<a href="#"><img src="catalog/view/theme/kth/image/03.jpg" alt="Lorem ipsum dolor sit amet, consectetur" title=" Lorem ipsum dolor sit amet, consectetur " height="116" width="138"></a>
				</div>
				<div class="prod-info">
					<a class="name" href="#">Lorem ipsum dolor sit amet, consectetur</a>
				
					<div class="wrapper">
						<div class="bottom1">
							<div class="price">
								<strong>$241.00</strong>
							</div>
							<div class="button"><a href="#"><img src="catalog/view/theme/kth/image/button_add_to_cart.gif" alt="Add to Cart" title=" Add to Cart " height="26" width="88"></a></div>
						</div>
					</div>
				</div>
			</div></div>
    <div class="centerBoxContentsFeatured centeredContent back vLine" style="width:25%;"><div class="product-col" style="margin-left:5px;">
				<div class="img">
					<a href="#"><img src="catalog/view/theme/kth/image/04.jpg" alt="Set dolor sit amet, consectetur" title=" Set dolor sit amet, consectetur " height="116" width="138"></a>
				</div>
				<div class="prod-info">
					<a class="name" href="#">Set  dolor sit amet, consectetur</a>
				
					<div class="wrapper">
						<div class="bottom1">
							<div class="price">
								<strong>$651.00</strong>
							</div>
							<div class="button"><a href="#"><img src="catalog/view/theme/kth/image/button_add_to_cart.gif" alt="Add to Cart" title=" Add to Cart " height="26" width="88"></a></div>
						</div>
					</div>
				</div>
			</div></div>
<br class="clearBoth">
 
</div>
<!-- eof: featured products  -->






<!-- bof: specials -->
<!-- eof: specials -->






	<div class="clear"></div>
	</div>
</div>

</div>
                    
                
                	<div class="clear"></div>
                    
                    <!--eof content_center-->
                
                </div>
                
                
                
                    
                
            </td>

			

		        

    </tr>

</tbody></table>

<ul class="partners">

	<li><a href="#"><img src="catalog/view/theme/kth/image/part-img1.jpg" alt="" height="40" width="165"></a></li>

	<li><a href="#"><img src="catalog/view/theme/kth/image/part-img2.jpg" alt="" height="40" width="172"></a></li>

	<li><a href="#"><img src="catalog/view/theme/kth/image/part-img3.jpg" alt="" height="40" width="148"></a></li>

	<li><a href="#"><img src="catalog/view/theme/kth/image/part-img4.jpg" alt="" height="40" width="151"></a></li>

	<li><a href="#"><img src="catalog/view/theme/kth/image/part-img5.jpg" alt="" height="40" width="154"></a></li>

	<li><a href="#"><img src="catalog/view/theme/kth/image/part-img6.jpg" alt="" height="40" width="161"></a></li>

</ul>



</div>

</div>







<!--bof- parse time display -->

<!--eof- parse time display -->







<!-- BOF- BANNER #6 display -->

<!-- EOF- BANNER #6 display -->



<!-- ========== FOOTER ========== -->
<?php echo $footer; ?>