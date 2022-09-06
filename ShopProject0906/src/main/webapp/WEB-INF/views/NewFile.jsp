<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SB Admin 2 - Blank</title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<!--owl carousel min css-->
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<!--slick min css-->
<link rel="stylesheet" href="assets/css/slick.css">
<!--magnific popup min css-->
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<!--font awesome css-->
<link rel="stylesheet" href="assets/css/font.awesome.css">
<!--ionicons css-->
<link rel="stylesheet" href="assets/css/ionicons.min.css">
<!--7 stroke icons css-->
<link rel="stylesheet" href="assets/css/pe-icon-7-stroke.css">
<!--animate css-->
<link rel="stylesheet" href="assets/css/animate.css">
<!--jquery ui min css-->
<link rel="stylesheet" href="assets/css/jquery-ui.min.css">
<!--plugins css-->
<link rel="stylesheet" href="assets/css/plugins.css">
<!-- Main Style CSS -->
<link rel="stylesheet" href="assets/css/style.css">
<!--modernizr min js here-->
<script src="assets/js/vendor/modernizr-3.7.1.min.js"></script>
</head>
<body>
	<!--header area start-->
	<!--offcanvas menu area start-->
	<div class="off_canvars_overlay"></div>
	<div class="offcanvas_menu">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="canvas_open">
						<a href="javascript:void(0)"><i class="ion-navicon-round"></i></a>
					</div>
					<div class="offcanvas_menu_wrapper">
						<div class="canvas_close">
							<a href="javascript:void(0)"><i class="ion-android-close"></i></a>
						</div>
						<div id="menu" class="text-left ">
							<ul class="offcanvas_main_menu">
								<li class="menu-item-has-children active"><a href="#">Home</a>
									<ul class="sub-menu">
										<li><a href="index.html">Home 1</a></li>
										<li><a href="index-2.html">Home 2</a></li>
										<li><a href="index-3.html">Home 3</a></li>
									</ul></li>
								<li class="menu-item-has-children"><a href="#">Shop</a>
									<ul class="sub-menu">
										<li class="menu-item-has-children"><a href="#">Shop
												Layouts</a>
											<ul class="sub-menu">
												<li><a href="shop.html">shop</a></li>
												<li><a href="shop-fullwidth.html">Full Width</a></li>
												<li><a href="shop-fullwidth-list.html">Full Width
														list</a></li>
												<li><a href="shop-right-sidebar.html">Right Sidebar
												</a></li>
												<li><a href="shop-right-sidebar-list.html">Right
														Sidebar list</a></li>
												<li><a href="shop-list.html">List View</a></li>
											</ul></li>
										<li class="menu-item-has-children"><a href="#">other
												Pages</a>
											<ul class="sub-menu">
												<li><a href="cart.html">cart</a></li>
												<li><a href="wishlist.html">Wishlist</a></li>
												<li><a href="checkout.html">Checkout</a></li>
												<li><a href="my-account.html">my account</a></li>
												<li><a href="404.html">Error 404</a></li>
											</ul></li>
										<li class="menu-item-has-children"><a href="#">Product
												Types</a>
											<ul class="sub-menu">
												<li><a href="product-details.html">product details</a></li>
												<li><a href="product-sidebar.html">product sidebar</a></li>
												<li><a href="product-grouped.html">product grouped</a></li>
												<li><a href="variable-product.html">product
														variable</a></li>
											</ul></li>
									</ul></li>
								<li class="menu-item-has-children"><a href="#">blog</a>
									<ul class="sub-menu">
										<li><a href="blog.html">blog</a></li>
										<li><a href="blog-details.html">blog details</a></li>
										<li><a href="blog-fullwidth.html">blog fullwidth</a></li>
										<li><a href="blog-sidebar.html">blog sidebar</a></li>
									</ul></li>
								<li class="menu-item-has-children"><a href="#">pages </a>
									<ul class="sub-menu">
										<li><a href="about.html">About Us</a></li>
										<li><a href="services.html">services</a></li>
										<li><a href="faq.html">Frequently Questions</a></li>
										<li><a href="contact.html">contact</a></li>
										<li><a href="login.html">login</a></li>
										<li><a href="404.html">Error 404</a></li>
									</ul></li>
								<li class="menu-item-has-children"><a
									href="my-account.html">my account</a></li>
								<li class="menu-item-has-children"><a href="about.html">about
										Us</a></li>
								<li class="menu-item-has-children"><a href="contact.html">Contact
										Us</a></li>
							</ul>
						</div>
						<div class="offcanvas_footer">
							<span><a href="#"><i class="fa fa-envelope-o"></i>info@yourdomain.com</a></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--offcanvas menu area end-->
	<header>
		<div class="main_header sticky-header">
			<div class="container">
				<div class="row align-items-center">
					<div
						class="col-lg-2 col-md-4 offset-md-4 offset-lg-0 col-5 offset-3 col-sm-5">
						<div class="logo">
							<a href="index.html"><img src="assets/img/logo/logo.png"
								alt=""></a>
						</div>
					</div>
					<div class="col-lg-8">
						<!--main menu start-->
						<div class="main_menu menu_position">
							<nav>
								<ul>
									<li><a href="index.html">home<i
											class="fa fa-angle-down"></i></a>
										<ul class="sub_menu">
											<li><a href="index.html">Home shop 1</a></li>
											<li><a href="index-2.html">Home shop 2</a></li>
											<li><a href="index-3.html">Home shop 3</a></li>
										</ul></li>
									<li class="mega_items"><a class="active" href="shop.html">shop<i
											class="fa fa-angle-down"></i></a>
										<div class="mega_menu">
											<ul class="mega_menu_inner">
												<li><a href="#">Shop Layouts</a>
													<ul>
														<li><a href="shop-fullwidth.html">Full Width</a></li>
														<li><a href="shop-fullwidth-list.html">Full Width
																list</a></li>
														<li><a href="shop-right-sidebar.html">Right
																Sidebar </a></li>
														<li><a href="shop-right-sidebar-list.html">Right
																Sidebar list</a></li>
														<li><a href="shop-list.html">List View</a></li>
													</ul></li>
												<li><a href="#">other Pages</a>
													<ul>
														<li><a href="cart.html">cart</a></li>
														<li><a href="wishlist.html">Wishlist</a></li>
														<li><a href="checkout.html">Checkout</a></li>
														<li><a href="my-account.html">my account</a></li>
														<li><a href="404.html">Error 404</a></li>
													</ul></li>
												<li><a href="#">Product Types</a>
													<ul>
														<li><a href="product-details.html">product
																details</a></li>
														<li><a href="product-sidebar.html">product
																sidebar</a></li>
														<li><a href="product-grouped.html">product
																grouped</a></li>
														<li><a href="variable-product.html">product
																variable</a></li>
													</ul></li>
											</ul>
										</div></li>
									<li><a href="blog.html">blog<i
											class="fa fa-angle-down"></i></a>
										<ul class="sub_menu pages">
											<li><a href="blog-details.html">blog details</a></li>
											<li><a href="blog-fullwidth.html">blog fullwidth</a></li>
											<li><a href="blog-sidebar.html">blog sidebar</a></li>
										</ul></li>
									<li><a href="contact.html">Contact Us</a></li>
									<li><a href="about.html">About us</a></li>
									<li><a href="#">pages <i class="fa fa-angle-down"></i></a>
										<ul class="sub_menu pages">
											<li><a href="about.html">About Us</a></li>
											<li><a href="services.html">services</a></li>
											<li><a href="faq.html">Frequently Questions</a></li>
											<li><a href="contact.html">contact</a></li>
											<li><a href="login.html">login</a></li>
											<li><a href="404.html">Error 404</a></li>
										</ul></li>
								</ul>
							</nav>
						</div>
						<!--main menu end-->
					</div>
					<div class="col-lg-2 col-md-4 col-sm-4 col-4">
						<div class="header_account_area">
							<div class="header_account_list search_list">
								<a href="javascript:void(0)"><span class="pe-7s-search"></span></a>
								<div class="dropdown_search">
									<form action="#">
										<input placeholder="Search entire store here ..." type="text">
										<button type="submit">
											<span class="pe-7s-search"></span>
										</button>
									</form>
								</div>
							</div>
							<div class="header_account_list  mini_cart_wrapper">
								<a href="javascript:void(0)"><span class="pe-7s-shopbag"></span><span
									class="item_count">2</span></a>
							</div>
							<div class="language_currency header_account_list ">
								<a href="#"><span class="pe-7s-user"></span></a>
								<ul class="dropdown_currency">
									<li><a href="my-account.html">My account</a></li>
									<li><a href="#">Order History</a></li>
									<li><a href="wishlist.html">Wishlist</a></li>
									<li><a href="cart.html">Shipping</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--mini cart-->
		<div class="mini_cart">
			<div class="cart_gallery">
				<div class="cart_close">
					<div class="cart_text">
						<h3>cart</h3>
					</div>
					<div class="mini_cart_close">
						<a href="javascript:void(0)"><i class="ion-android-close"></i></a>
					</div>
				</div>
				<div class="cart_item">
					<div class="cart_img">
						<a href="#"><img src="assets/img/s-product/product.jpg" alt=""></a>
					</div>
					<div class="cart_info">
						<a href="#">Juicy Couture Tricot</a>
						<p>
							1 x <span>$30.00 </span>
						</p>
					</div>
					<div class="cart_remove">
						<a href="#"><i class="ion-ios-close-outline"></i></a>
					</div>
				</div>
				<div class="cart_item">
					<div class="cart_img">
						<a href="#"><img src="assets/img/s-product/product2.jpg"
							alt=""></a>
					</div>
					<div class="cart_info">
						<a href="#">Juicy Couture Juicy</a>
						<p>
							1 x <span>$29.00 </span>
						</p>
					</div>
					<div class="cart_remove">
						<a href="#"><i class="ion-ios-close-outline"></i></a>
					</div>
				</div>
			</div>
			<div class="mini_cart_table">
				<div class="cart_table_border">
					<div class="cart_total">
						<span>Sub total:</span><span class="price">$125.00</span>
					</div>
					<div class="cart_total mt-10">
						<span>total:</span><span class="price">$125.00</span>
					</div>
				</div>
			</div>
			<div class="mini_cart_footer">
				<div class="cart_button">
					<a href="cart.html"><i class="fa fa-shopping-cart"></i>View
						cart</a>
				</div>
				<div class="cart_button">
					<a href="checkout.html"><i class="fa fa-sign-in"></i>Checkout</a>
				</div>
			</div>
		</div>
		<!--mini cart end-->
	</header>
	<!--header area end-->
	<!--breadcrumbs area start-->
	<div class="breadcrumbs_area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="breadcrumb_content">
						<h3>shop</h3>
						<ul>
							<li><a href="index.html">home</a></li>
							<li>shop</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--breadcrumbs area end-->
	<!--shop area start-->
	<div class="shop_area shop_fullwidth mb-80">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<!--shop wrapper start-->
					<!--shop toolbar start-->
					<div class="shop_toolbar_wrapper">
						<div class="shop_toolbar_btn">
							<button data-role="grid_4" type="button"
								class="active  btn-grid-4" data-toggle="tooltip" title="4"></button>
							<button data-role="grid_3" type="button" class=" btn-grid-3"
								data-toggle="tooltip" title="3"></button>
							<button data-role="grid_list" type="button" class="btn-list"
								data-toggle="tooltip" title="List"></button>
						</div>
						<div class=" niceselect_option">
							<form class="select_option" action="#">
								<select name="orderby" id="short"><option selected
										value="1">Sort by average rating</option>
									<option value="2">Sort by popularity</option>
									<option value="3">Sort by newness</option>
									<option value="4">Sort by price:low to high</option>
									<option value="5">Sort by price:high to low</option>
									<option value="6">Product Name:Z</option></select>
							</form>
						</div>
						<div class="page_amount">
							<p>Showing 1â12 of 21 results</p>
						</div>
					</div>
					<!--shop toolbar end-->
					
						<jsp:include page="template/shop_wrapper.jsp" flush="false"></jsp:include>
					
					<div class="shop_toolbar t_bottom">
						<div class="pagination">
							<ul>
								<li class="current">1</li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li class="next"><a href="#">next</a></li>
								<li><a href="#">>></a></li>
							</ul>
						</div>
					</div>
					<!--shop toolbar end-->
					<!--shop wrapper end-->
				</div>
			</div>
		</div>
	</div>
	<!--shop area end-->
	<!--footer area start-->
	<footer class="footer_widgets footer_padding">
		<div class="container">
			<div class="footer_top">
				<div class="row">
					<div class="col-12">
						<div class="newsletter_area">
							<div class="section_title">
								<h2>Keep Connected</h2>
							</div>
							<div class="newsletter_desc">
								<p>Get updates by subscribe our weekly newsletter</p>
							</div>
							<div class="subscribe_form">
								<form id="mc-form" class="mc-form footer-newsletter">
									<input id="mc-email" type="email" autocomplete="off"
										placeholder="Your email address" />
									<button id="mc-submit">Subscribe</button>
								</form>
								<!-- mailchimp-alerts Start -->
								<div class="mailchimp-alerts text-centre">
									<div class="mailchimp-submitting"></div>
									<!-- mailchimp-submitting end -->
									<div class="mailchimp-success"></div>
									<!-- mailchimp-success end -->
									<div class="mailchimp-error"></div>
									<!-- mailchimp-error end -->
								</div>
								<!-- mailchimp-alerts end -->
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer_middle">
				<div class="row">
					<div class="col-12">
						<div class="footer_social">
							<ul>
								<li><a href="#"><i class="fa fa-facebook"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-youtube-play"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-google"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram"
										aria-hidden="true"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="footer_bottom">
				<div class="row align-items-center">
					<div class="col-lg-6 col-md-7">
						<div class="footer_bottom_left">
							<div class="footer_logo">
								<a href="index.html"><img src="assets/img/logo/logo2.png"
									alt=""></a>
							</div>
							<div class="copyright_area">
								<p>
									Copyright Â© 2020 <a href="index.html">Braga</a>. <a
										href="http://www.bootstrapmb.com/" target="_blank">All
										rights reserved.</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-5">
						<div class="footer_paypal text-right">
							<a href="#"><img src="assets/img/icon/payment.png" alt=""></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!--footer area end-->
	<!-- modal area start-->
	<div class="modal fade" id="modal_box" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="ion-android-close"></i></span>
				</button>
				<div class="modal_body">
					<div class="container">
						<div class="row">
							<div class="col-lg-5 col-md-5 col-sm-12">
								<div class="modal_tab">
									<div class="tab-content product-details-large">
										<div class="tab-pane fade show active" id="tab1"
											role="tabpanel">
											<div class="modal_tab_img">
												<a href="#"><img
													src="assets/img/product/productbig1.jpg" alt=""></a>
											</div>
										</div>
										<div class="tab-pane fade" id="tab2" role="tabpanel">
											<div class="modal_tab_img">
												<a href="#"><img
													src="assets/img/product/productbig2.jpg" alt=""></a>
											</div>
										</div>
										<div class="tab-pane fade" id="tab3" role="tabpanel">
											<div class="modal_tab_img">
												<a href="#"><img
													src="assets/img/product/productbig3.jpg" alt=""></a>
											</div>
										</div>
										<div class="tab-pane fade" id="tab4" role="tabpanel">
											<div class="modal_tab_img">
												<a href="#"><img
													src="assets/img/product/productbig4.jpg" alt=""></a>
											</div>
										</div>
									</div>
									<div class="modal_tab_button">
										<ul class="nav product_navactive owl-carousel" role="tablist">
											<li><a class="nav-link active" data-toggle="tab"
												href="#tab1" role="tab" aria-controls="tab1"
												aria-selected="false"><img
													src="assets/img/product/product3.jpg" alt=""></a></li>
											<li><a class="nav-link" data-toggle="tab" href="#tab2"
												role="tab" aria-controls="tab2" aria-selected="false"><img
													src="assets/img/product/product8.jpg" alt=""></a></li>
											<li><a class="nav-link button_three" data-toggle="tab"
												href="#tab3" role="tab" aria-controls="tab3"
												aria-selected="false"><img
													src="assets/img/product/product1.jpg" alt=""></a></li>
											<li><a class="nav-link" data-toggle="tab" href="#tab4"
												role="tab" aria-controls="tab4" aria-selected="false"><img
													src="assets/img/product/product6.jpg" alt=""></a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-lg-7 col-md-7 col-sm-12">
								<div class="modal_right">
									<div class="modal_title mb-10">
										<h2>Donec Ac Tempus</h2>
									</div>
									<div class="modal_price mb-10">
										<span class="new_price">$64.99</span><span class="old_price">$78.99</span>
									</div>
									<div class="modal_description mb-15">
										<p>Lorem ipsum dolor sit amet,consectetur adipisicing
											elit. Mollitia iste laborum ad impedit pariatur esse optio
											tempora sint ullam autem deleniti nam in quos qui nemo ipsum
											numquam,reiciendis maiores quidem aperiam,rerum vel
											recusandae</p>
									</div>
									<div class="variants_selects">
										<div class="variants_size">
											<h2>size</h2>
											<select class="select_option"><option selected
													value="1">s</option>
												<option value="1">m</option>
												<option value="1">l</option>
												<option value="1">xl</option>
												<option value="1">xxl</option></select>
										</div>
										<div class="variants_color">
											<h2>color</h2>
											<select class="select_option"><option selected
													value="1">purple</option>
												<option value="1">violet</option>
												<option value="1">black</option>
												<option value="1">pink</option>
												<option value="1">orange</option></select>
										</div>
										<div class="modal_add_to_cart">
											<form action="#">
												<input min="1" max="100" step="2" value="1" type="number">
												<button type="submit">add to cart</button>
											</form>
										</div>
									</div>
									<div class="modal_social">
										<h2>Share this product</h2>
										<ul>
											<li class="facebook"><a href="#"><i
													class="fa fa-facebook"></i></a></li>
											<li class="twitter"><a href="#"><i
													class="fa fa-twitter"></i></a></li>
											<li class="pinterest"><a href="#"><i
													class="fa fa-pinterest"></i></a></li>
											<li class="google-plus"><a href="#"><i
													class="fa fa-google-plus"></i></a></li>
											<li class="linkedin"><a href="#"><i
													class="fa fa-linkedin"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- modal area end-->
	<!-- JS ============================================ -->
	<!--jquery min js-->
	<script src="assets/js/vendor/jquery-3.5.0.min.js"></script>
	<!--popper min js-->
	<script src="assets/js/popper.js"></script>
	<!--bootstrap min js-->
	<script src="assets/js/bootstrap.min.js"></script>
	<!--owl carousel min js-->
	<script src="assets/js/owl.carousel.min.js"></script>
	<!--slick min js-->
	<script src="assets/js/slick.min.js"></script>
	<!--magnific popup min js-->
	<script src="assets/js/jquery.magnific-popup.min.js"></script>
	<!--jquery countdown min js-->
	<script src="assets/js/jquery.countdown.js"></script>
	<!--jquery ui min js-->
	<script src="assets/js/jquery.ui.js"></script>
	<!--jquery elevatezoom min js-->
	<script src="assets/js/jquery.elevatezoom.js"></script>
	<!--isotope packaged min js-->
	<script src="assets/js/isotope.pkgd.min.js"></script>
	<!-- Plugins JS -->
	<script src="assets/js/plugins.js"></script>
	<!-- Main JS -->
	<script src="assets/js/main.js"></script>
</body>
</html>