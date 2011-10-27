<?php echo $header; ?>
<table id="contentMainWrapper" border="0" cellpadding="0" cellspacing="0" width="100%">

	<tbody><tr>
            <?php echo $column_left; ?>
         
            <td id="column-center" valign="top">

            					<div class="banners">

					<div class="slides" id="faded">

						<div style="position: relative;">

							<div style="position: absolute; top: 0px; left: 0px; z-index: 0; display: none;"> 

								<!-- BOF- BANNER #1 display -->

																

									<div id="bannerOne"><a href="#"><img src="catalog/view/theme/kth/image/banner1.jpg" alt="Kawasaki" title=" Kawasaki " height="393" width="710"></a></div>

																<!-- EOF- BANNER #1 display -->

							</div>

							<div style="position: absolute; top: 0px; left: 0px; z-index: 0;">

								<!-- BOF- BANNER #2 display -->

																			<div id="bannerTwo"><a href="#"><img src="catalog/view/theme/kth/image/banner2.jpg" alt="Kawasaki" title=" Kawasaki " height="393" width="710"></a></div>

																<!-- EOF- BANNER #2 display -->

							</div>

							<div style="position: absolute; top: 0px; left: 0px; z-index: 10; opacity: 0.0100725;">

								<!-- BOF- BANNER #3 display -->

																			<div id="bannerThree"><a href="#"><img src="catalog/view/theme/kth/image/banner3.jpg" alt="Kawasaki" title=" Kawasaki " height="393" width="710"></a></div>

																<!-- EOF- BANNER #3 display -->

							</div>

						</div>

					<ul class="pagination"><li class=" "><a rel="0" href="#">1</a></li><li class=" "><a rel="1" href="#">2</a></li><li class="  current"><a rel="2" href="#">3</a></li></ul></div>

					

                </div>

				<div class="bot-banners">

						<!-- BOF- BANNER #4 display -->

															<div id="bannerFour"><a href="#"><img src="catalog/view/theme/kth/image/banner4.jpg" alt="ONEAL" title=" ONEAL " height="125" width="356"></a></div>

												<!-- EOF- BANNER #4 display -->

						<!-- BOF- BANNER #5 display -->

															<div id="bannerFive"><a href="#"><img src="catalog/view/theme/kth/image/banner5.jpg" alt="METZELER" title=" METZELER " height="125" width="354"></a></div>

												<!-- EOF- BANNER #5 display -->

					</div>

					                <div class="column-center-padding">

                						

			                    <!--content_center-->

                

                

                        <!-- bof breadcrumb -->

                                                <!-- eof breadcrumb -->

                    

    

                        <!-- bof upload alerts -->

                                                <!-- eof upload alerts -->

    

                    

						







<!-- deprecated - to use uncomment this section

<div id="" class="content">This is the main define statement for the page for english when no template defined file exists. It is located in: <strong>/includes/languages/english/index.php</strong></div>

-->



<!-- deprecated - to use uncomment this section

<div id="" class="content">Define your main Index page copy here.</div>

-->








<?php foreach ($modules as $module) { ?>
  <?php echo ${$module['code']}; ?>
<?php } ?>


<!-- bof: featured products  -->



<!-- eof: featured products  -->











                   

                

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