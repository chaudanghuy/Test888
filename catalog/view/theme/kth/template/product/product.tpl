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
    
                    
						<div class="centerColumn" id="productGeneral">

<!--bof Product Name-->
<h1 id="productName" class="productGeneral"><?php echo $heading_title; ?></h1>
<!--eof Product Name-->

<div class="tie">
	<div class="tie-indent">
	

<div class="page-content">

<div class="wrapper">

<!--bof Form start-->
<form name="cart_quantity" action="#">
<!--eof Form start-->


<!--bof Category Icon -->


<!--bof Prev/Next top position -->
<!--eof Prev/Next top position-->

<!--bof Main Product Image -->
 


<div id="productMainImage" class="centeredContent back">
	<span class="image"><a href="<?php echo $popup; ?>"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" height="116" width="138"><span class="zoom"></span></a></span>
	
</div><!--eof Main Product Image-->


	<!--bof free ship icon  -->
		<!--eof free ship icon  -->
	<div class="name-type bot-border"><?php echo $heading_title; ?></div>
	
	
	<!--bof Product details list  -->
		<ul>
	  
	  
	  <li><?php echo $stock; ?></li>
	  
	</ul>
		<!--eof Product details list -->
	
	<!--bof Product Price block -->
    <?php if ($display_price) { ?>
	<h2 id="productPrices" class="productGeneral">
		<span class="price-text">Price: &nbsp;</span>
	       <?php echo $price; ?>
    </h2>
    <?php } ?>
	<!--eof Product Price block -->
	
	<!--bof Add to Cart Box -->
						  		<div id="cartAdd">
		<strong class="fleft text2">Add to Cart: &nbsp; &nbsp;<input class="qty" name="cart_quantity" value="1" maxlength="6" size="8" type="text"><input name="products_id" value="1" type="hidden"></strong>&nbsp; &nbsp; &nbsp; <span class="buttonRow"><input src="images/button_in_cart.gif" alt="Add to Cart" title=" Add to Cart " type="image"></span>		 </div>
	  		<!--eof Add to Cart Box-->
	
</form></div>


 <!--bof Product description -->
<div id="productDescription" class="description biggerText"><strong>Details: </strong>
    <?php echo $description; ?>
</div>
<!--eof Product description -->





<!--bof Attributes Module -->
<!--eof Attributes Module -->

<!--bof Quantity Discounts table -->
<!--eof Quantity Discounts table -->

<!--bof Additional Product Images -->
 <!--eof Additional Product Images -->

<div class="wrapper bot-border">



<!--bof Prev/Next bottom position -->
<div class="navNextPrevWrapper centeredContent back">
</div><!--eof Prev/Next bottom position -->


<div class="prod-buttons">
<!--bof Tell a Friend button -->
<div id="productTellFriendLink" class="buttonRow forward"><a href="#"><img src="images/button_TellAFriend.gif" alt="Tell a Friend" title=" Tell a Friend " height="26" width="146"></a></div>
<!--eof Tell a Friend button -->

<!--bof Reviews button and count-->
<div id="productReviewLink" class="buttonRow forward"><a href="#"><img src="images/button_write_review.gif" alt="Write Review" title=" Write Review " height="26" width="108"></a>&nbsp; &nbsp;</div>

<!--eof Reviews button and count -->
</div>

</div>

<div class="text2">

<p class="reviewCount"><strong>Current Reviews: 0</strong></p>

<!--bof Product date added/available-->
      <p id="productDateAdded" class="productGeneral centeredContent">This product was added to our catalog on Thursday 09 September, 2010.</p>
<!--eof Product date added/available -->

<!--bof Product URL -->
<!--eof Product URL -->

</div>

<!--bof also purchased products module-->

<!--eof also purchased products module-->

<!--bof Form close-->

<!--bof Form close-->

</div>

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