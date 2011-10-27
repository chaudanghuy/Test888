<?php if (isset($_SERVER['HTTP_USER_AGENT']) && !strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE 6')) echo '<?xml version="1.0" encoding="UTF-8"?>'. "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>">
<head>

<title>
    <?php echo $title; ?>
</title>

<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<base href="<?php echo $base; ?>" />
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>



<!-- base href="http://livedemo00.template-help.com/zencart_33588/" -->
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $template; ?>/css/stylesheet.css">
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $template; ?>/css/stylesheet_boxes.css">
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $template; ?>/css/stylesheet_css_buttons.css">
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $template; ?>/css/stylesheet_darkbox.css">
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $template; ?>/css/stylesheet_main.css">
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $template; ?>/css/stylesheet_tm.css">
<link rel="stylesheet" type="text/css" media="print" href="catalog/view/theme/<?php echo $template; ?>/css/print_stylesheet.css">

<script type="text/javascript" src="catalog/view/theme/<?php echo $template; ?>/js/jscript_jquery-1.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $template; ?>/js/jscript_xdarkbox.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $template; ?>/js/jscript_zjcarousellite.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $template; ?>/js/jscript_zjquery.js"></script>

<!--[if lt IE 7]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/catalog/view/theme/kth/image/upgrade.jpg" border="0"  alt="" /></a>
    </div>
<![endif]-->

<style type="text/css">
	#header .right-head .box,
	#header .box2,
	.carousel-box,
	#featuredProducts,
	.product-col .bottom1,
	.tie2,
	.tie,
	.tie3,
	.navSplitPagesLinks a,
	.navSplitPagesLinks strong,
	.image,
	.stock,
	#specials .box-body .bottom1,
	#whatsNew,
	#specialsDefault,
	#specialsListing,
	#cartEmptyText{ behavior:url(includes/templates/theme481/PIE.php)}
</style>
<script>
	$(function(){
		$("#faded").faded({
		speed: 1000,
		bigtarget: false,
		autoplay: 5000,
		autorestart: false,
		autopagination:true,
		crossfade:true
		});
	});
</script>
<script>
	$(function() {
		 $(".carousel").jCarouselLite({
			  btnNext: ".next",
			  btnPrev: ".prev",
			  visible: 4
		 });
	});
</script>
</head>



<body id="indexBody">
<div class="fone">
<!-- ========== IMAGE BORDER TOP ========== -->

<div class="main-width">

<!-- ====================================== -->







<!-- ========== HEADER ========== -->



    <div id="header">
		<div class="wrapper alt">
			<div class="left-head">
				<div class="logo">
					<!-- ========== LOGO ========== -->
                    <?php if ($logo) { ?>
						<a href="<?php echo str_replace('&', '&amp;', $home); ?>">
                            <img src="<?php echo $logo; ?>" title="<?php echo $store; ?>" alt="" height="69" width="252">
                        </a>
                    <?php } ?>
					<!-- ========================== -->
				</div>
			</div>
			<div class="right-head">
				<div class="box">
					<div class="box-top">
						<div class="lang">
							<!-- ========== LANGUAGES ========== -->					
								<a href="#"><img src="catalog/view/theme/kth/image/icon.gif" alt="English" title=" English " style="vertical-align: middle;" height="12" width="18"></a>							<!-- =============================== -->
						</div>
						<div class="currencies">
							<!-- ========== CURRENCIES ========= -->
								<form name="currencies" action="#" method="get">									<div>
										Currencies: &nbsp;
								
																				<select name="currency" class="select" onchange="this.form.submit();">
  <option value="USD" selected="selected">US Dollar</option>
  <option value="EUR">Euro</option>
  <option value="GBP">GB Pound</option>
  <option value="CAD">Canadian Dollar</option>
  <option value="AUD">Australian Dollar</option>
</select>
<input name="main_page" value="index" type="hidden">									</div>
								</form>
							<!-- ====================================== -->
						</div>
					</div>
					<div class="cart">
						<!-- ========== SHOPPING CART ========== -->
														<a href="#"></a> &nbsp; <span>Now in your cart <a href="#"><span>0</span> items</a></span> 
						<!-- =================================== -->
					</div>
				</div>
				<div class="navigation">
					<!-- ========== NAVIGATION LINKS ========== -->
							<a href="#">Home</a>
							
													&nbsp;&nbsp; <a href="#">Log In</a>  
						  
						
											<!-- ====================================== -->
				</div>
			</div>
		</div>
		<div class="wrapper box2">
			<div class="menu">
				<!-- ========== MENU ========== -->
													<div id="navEZPagesTop">
	<ul>
  			
	
	  <li class="li_un selected"><a href="<?php echo str_replace('&', '&amp;', $home); ?>"><span class="corner"></span><span><span><?php echo $text_home; ?></span></span></a></li>
	  
  
  			
	
	  <li class=""><a href="#"><span class="corner"></span><span><span>New products</span></span></a></li>
	  
  
  			
	
	  <li class=""><a href="#"><span class="corner"></span><span><span>Specials</span></span></a></li>
	  
  
  			
	
	  <li class=""><a href="#"><span class="corner"></span><span><span>All products</span></span></a></li>
	  
  
  			
	
	  <li class=""><a href="#"><span class="corner"></span><span><span>Reviews</span></span></a></li>
	  
  
  			
	
	  <li class=""><a href="#"><span class="corner"></span><span><span>Contacts</span></span></a></li>
	  
  
  			
	
	  <li class=""><a href="#"><span class="corner"></span><span><span>FAQs</span></span></a></li>
	  
  

    </ul>
</div>
										<!-- ========================== -->
			</div>
			<div class="search">
				<!-- ========== SEARCH ========== -->
						<form name="quick_find_header" action="#" method="get">							<div>
						<input name="main_page" value="advanced_search_result" type="hidden"><input name="search_in_description" value="1" type="hidden">						
						<span class="corner"></span>
						<input name="keyword" class="input1" type="text">						<input src="catalog/view/theme/kth/image/search.gif" alt="Search" title=" Search " class="input2" type="image">						
						
							</div>
						</form>
					<!-- ============================ -->
			</div>
		</div>
	</div>