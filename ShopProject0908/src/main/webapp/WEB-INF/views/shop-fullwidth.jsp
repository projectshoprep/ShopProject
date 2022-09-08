<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Braga - shop fullwidth</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->
<!-- CSS ========================= -->
<!--bootstrap min css-->
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
	<jsp:include page="template/main/main_header.jsp"></jsp:include>
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
					<c:forEach items="${requestScope.productlist }" var="productlist" varStatus="status" begin="0" end="3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12 ">
							<div class="single_product">
								<div class="product_thumb">
									<a class="primary_img" href="product-details.html"><img
										src="assets/img/product/product8.jpg" alt=""></a><a
										class="secondary_img" href="product-details.html"><img
										src="assets/img/product/product7.jpg" alt=""></a>
									<div class="label_product">
										<span class="label_sale">Sale</span>
									</div>
									<div class="action_links">
										<ul>
											<li class="quick_button"><a href="#" data-toggle="modal"
												data-target="#modal_box" title="quick view"><span
													class="pe-7s-search"></span></a></li>
											<li class="wishlist"><a href="wishlist.html"
												title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
											<li class="compare"><a href="#" title="Add to Compare"><span
													class="pe-7s-edit"></span></a></li>
										</ul>
									</div>
								</div>
								<div class="product_content grid_content">
									<div class="product_content_inner">
										<h4 class="product_name">
											<a href="product-details.html">${productlist.productname}</a>
										</h4>
										<div class="price_box">
											<span class="old_price">$69.00</span><span
												class="current_price">${productlist.price }</span>
										</div>
									</div>
									<div class="add_to_cart">
										<a href="cart.html">Add to cart</a>
									</div>
								</div>
								<div class="product_content list_content">
									<h4 class="product_name">
										<a href="product-details.html">Pellentesque posuere
											hendrerit dui quis</a>
									</h4>
									<div class="price_box">
										<span class="old_price">$69.00</span><span
											class="current_price">$67.00</span>
									</div>
									<div class="product_rating">
										<ul>
											<li><a href="#"><i class="ion-android-star"></i></a></li>
											<li><a href="#"><i class="ion-android-star"></i></a></li>
											<li><a href="#"><i class="ion-android-star"></i></a></li>
											<li><a href="#"><i class="ion-android-star"></i></a></li>
											<li><a href="#"><i class="ion-android-star"></i></a></li>
										</ul>
									</div>
									<div class="product_desc">
										<p>Lorem ipsum dolor sit amet,consectetur adipiscing elit.
											Fusce posuere metus vitae arcu imperdiet,id aliquet ante
											scelerisque. Sed sit amet sem vitae urna fringilla tempus.</p>
									</div>
									<div class="add_to_cart shop_list_cart">
										<a href="cart.html">Add to cart</a>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
					</div>
					<div class="shop_toolbar_wrapper">
					<c:forEach items="${requestScope.productlist }" var="productlist" varStatus="status" begin="4" end="7">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12 ">
							<div class="single_product">
								<div class="product_thumb">
									<a class="primary_img" href="product-details.html"><img
										src="assets/img/product/product8.jpg" alt=""></a><a
										class="secondary_img" href="product-details.html"><img
										src="assets/img/product/product7.jpg" alt=""></a>
									<div class="label_product">
										<span class="label_sale">Sale</span>
									</div>
									<div class="action_links">
										<ul>
											<li class="quick_button"><a href="#" data-toggle="modal"
												data-target="#modal_box" title="quick view"><span
													class="pe-7s-search"></span></a></li>
											<li class="wishlist"><a href="wishlist.html"
												title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
											<li class="compare"><a href="#" title="Add to Compare"><span
													class="pe-7s-edit"></span></a></li>
										</ul>
									</div>
								</div>
								<div class="product_content grid_content">
									<div class="product_content_inner">
										<h4 class="product_name">
											<a href="product-details.html">${productlist.productname}</a>
										</h4>
										<div class="price_box">
											<span class="old_price">$69.00</span><span
												class="current_price">${productlist.price }</span>
										</div>
									</div>
									<div class="add_to_cart">
										<a href="cart.html">Add to cart</a>
									</div>
								</div>
								<div class="product_content list_content">
									<h4 class="product_name">
										<a href="product-details.html">Pellentesque posuere
											hendrerit dui quis</a>
									</h4>
									<div class="price_box">
										<span class="old_price">$69.00</span><span
											class="current_price">$67.00</span>
									</div>
									<div class="product_rating">
										<ul>
											<li><a href="#"><i class="ion-android-star"></i></a></li>
											<li><a href="#"><i class="ion-android-star"></i></a></li>
											<li><a href="#"><i class="ion-android-star"></i></a></li>
											<li><a href="#"><i class="ion-android-star"></i></a></li>
											<li><a href="#"><i class="ion-android-star"></i></a></li>
										</ul>
									</div>
									<div class="product_desc">
										<p>Lorem ipsum dolor sit amet,consectetur adipiscing elit.
											Fusce posuere metus vitae arcu imperdiet,id aliquet ante
											scelerisque. Sed sit amet sem vitae urna fringilla tempus.</p>
									</div>
									<div class="add_to_cart shop_list_cart">
										<a href="cart.html">Add to cart</a>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
					</div>
					
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
										<h2>Donec324 Ac Tempus</h2>
									</div>
									<div class="modal_price mb-10">
										<span class="new_price"></span><span class="old_price">$78.99</span>
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