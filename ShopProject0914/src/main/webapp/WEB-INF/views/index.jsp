<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Braga - Fashion eCommerce HTML Template</title>
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
	
	<!--slider area start-->
	<section class="slider_section mb-100">
		<div class="slider_area owl-carousel">
			<div class="single_slider d-flex align-items-center"
				data-bgimg="assets/img/slider/slider1.jpg">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div class="slider_content">
								<h2>Get 30% Off &amp;Free Shipping</h2>
								<h1>SUmmer sale</h1>
								<p>
									An exclusive selection of this seasonâs trends. <span>Exclusively
										online </span>
								</p>
								<a href="shop.html">Shop Now+</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="single_slider d-flex align-items-center"
				data-bgimg="assets/img/slider/slider2.jpg">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div class="slider_content">
								<h2>Big sale up to 20% off</h2>
								<h1>london style</h1>
								<p>
									An exclusive selection of this seasonâs trends. <span>Exclusively
										online </span>
								</p>
								<a href="shop.html">Shop Now </a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--slider area end-->
	<!--banner area start-->
	<div class="banner_area mb-95">
		<div class="container">
			<div class="row no-gutters">
				<div class="col-lg-6 col-md-6">
					<div class="single_banner">
						<div class="banner_thumb">
							<a href="shop.html"><img src="assets/img/bg/banner1.jpg"
								alt=""></a>
							<div class="banner_text1">
								<div class="banner_text1_inner">
									<h3>
										Menâs <br>Collections
									</h3>
									<a href="shop.html">shop now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="single_banner">
						<div class="banner_thumb">
							<a href="shop.html"><img src="assets/img/bg/banner2.jpg"
								alt=""></a>
							<div class="banner_text1">
								<div class="banner_text1_inner">
									<h3>
										Womenâs <br>Collections
									</h3>
									<a href="shop.html">shop now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--banner area end-->
	<!--categories product area start-->
	<div class="categories_product_area   mb-92">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section_title">
						<h2>Top Categories</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="product_carousel product_column4 owl-carousel">
					<c:forEach items="${requestScope.productpreview }" var="dto">
						<div class="col-lg-3">
						
							<div class="product_items">
								<article class="single_product">
									<figure>
										<div class="product_thumb">
											<a class="primary_img" href="product-details.html"><img
												src="assets/img/product/product1.jpg" alt=""></a><a
												class="secondary_img" href="product-details.html"><img
												src="assets/img/product/product2.jpg" alt=""></a>
											<div class="label_product">
												<span class="label_sale">Sale</span>
											</div>
											<div class="action_links">
												<ul>
													<li class="wishlist"><a href="wishlist.html"
														title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
												</ul>
											</div>
										</div>
								
										<figcaption class="product_content">
											<div class="product_content_inner">
												<h4 class="product_name">
													<a href="product-details.html">${dto.productname }</a>
												</h4>
												<div class="price_box">
													<span class="current_price">${dto.price }</span>
												</div>
											</div>
											<div class="add_to_cart">
												<a href="productdetailview.do?productno=${dto.productno }">상품 바로가기</a>
											</div>
										</figcaption>
									</figure>
								</article>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<!--categories product area end-->
	<!--testimonial area start-->
	<div class="testimonial_area mb-95">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section_title">
						<h2>Testimonials</h2>
					</div>
				</div>
			</div>
			<div class="testimonial_container">
				<div class="row">
					<div class="col-12">
						<div
							class="testimonial_wrapper  testimonial_collumn1 owl-carousel">
							<div class="single_testimonial">
								<div class="testimonial_thumb">
									<img src="assets/img/about/testimonial1.png" alt="">
								</div>
								<div class="testimonial_content">
									<p>These guys have been absolutely outstanding. Perfect
										Themes and the best of all that you have many options to
										choose!Best Support team ever!Very fast responding!Thank you
										very much!I highly recommend this theme and these people!</p>
									<h3>
										<a href="#">John Sullivan</a>
									</h3>
									<span>Customer</span>
								</div>
							</div>
							<div class="single_testimonial">
								<div class="testimonial_thumb">
									<img src="assets/img/about/testimonial2.png" alt="">
								</div>
								<div class="testimonial_content">
									<p>Lorem ipsum dolor sit amet,consectetur adipisicing elit.
										Error in,mollitia nulla officiis excepturi repudiandae beatae
										optio,sequi maxime assumenda ipsum exercitationem nostrum
										ducimus facilis,nesciunt aliquam dicta totam.</p>
									<h3>
										<a href="#">Jenifer Brown</a>
									</h3>
									<span>Manager of AZ</span>
								</div>
							</div>
							<div class="single_testimonial">
								<div class="testimonial_thumb">
									<img src="assets/img/about/testimonial3.png" alt="">
								</div>
								<div class="testimonial_content">
									<p>These guys have been absolutely outstanding. Perfect
										Themes and the best of all that you have many options to
										choose!Best Support team ever!Very fast responding!Thank you
										very much!I highly recommend this theme and these people!</p>
									<h3>
										<a href="#">Kathy Young</a>
									</h3>
									<span>CEO of SunPark</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--testimonial area end-->
	<!--product area start-->
	<div class="product_area  mb-95">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section_title product_shop_title">
						<h2>Featured products</h2>
					</div>
					<div class="product_shop_collection">
						<a href="shop.html">Shop all collection</a>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="product_carousel product_column5 owl-carousel">
					<div class="col-lg-3">
						<div class="product_items">
							<article class="single_product">
								<figure>
									<div class="product_thumb">
										<a class="primary_img" href="product-details.html"><img
											src="assets/img/product/product1.jpg" alt=""></a><a
											class="secondary_img" href="product-details.html"><img
											src="assets/img/product/product2.jpg" alt=""></a>
										<div class="label_product">
											<span class="label_sale">Sale</span>
										</div>
										<div class="action_links">
											<ul>
												<li class="quick_button"><a href="#"
													data-toggle="modal" data-target="#modal_box"
													title="quick view"><span class="pe-7s-search"></span></a></li>
												<li class="wishlist"><a href="wishlist.html"
													title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
												<li class="compare"><a href="#" title="Add to Compare"><span
														class="pe-7s-edit"></span></a></li>
											</ul>
										</div>
									</div>
									<figcaption class="product_content">
										<div class="product_content_inner">
											<h4 class="product_name">
												<a href="product-details.html">Duis pulvinar obortis
													eleifend elementum</a>
											</h4>
											<div class="price_box">
												<span class="old_price">$84.00</span><span
													class="current_price">$79.00</span>
											</div>
										</div>
										<div class="add_to_cart">
											<a href="cart.html">Add to cart</a>
										</div>
									</figcaption>
								</figure>
							</article>
							<article class="single_product">
								<figure>
									<div class="product_thumb">
										<a class="primary_img" href="product-details.html"><img
											src="assets/img/product/product3.jpg" alt=""></a><a
											class="secondary_img" href="product-details.html"><img
											src="assets/img/product/product4.jpg" alt=""></a>
										<div class="label_product">
											<span class="label_sale">Sale</span>
										</div>
										<div class="action_links">
											<ul>
												<li class="quick_button"><a href="#"
													data-toggle="modal" data-target="#modal_box"
													title="quick view"><span class="pe-7s-search"></span></a></li>
												<li class="wishlist"><a href="wishlist.html"
													title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
												<li class="compare"><a href="#" title="Add to Compare"><span
														class="pe-7s-edit"></span></a></li>
											</ul>
										</div>
									</div>
									<figcaption class="product_content">
										<div class="product_content_inner">
											<h4 class="product_name">
												<a href="product-details.html">Eodem modo vels is mattis
													antes facilisis</a>
											</h4>
											<div class="price_box">
												<span class="old_price">$86.00</span><span
													class="current_price">$82.00</span>
											</div>
										</div>
										<div class="add_to_cart">
											<a href="cart.html">Add to cart</a>
										</div>
									</figcaption>
								</figure>
							</article>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="product_items">
							<article class="single_product">
								<figure>
									<div class="product_thumb">
										<a class="primary_img" href="product-details.html"><img
											src="assets/img/product/product5.jpg" alt=""></a><a
											class="secondary_img" href="product-details.html"><img
											src="assets/img/product/product6.jpg" alt=""></a>
										<div class="label_product">
											<span class="label_sale">Sale</span>
										</div>
										<div class="action_links">
											<ul>
												<li class="quick_button"><a href="#"
													data-toggle="modal" data-target="#modal_box"
													title="quick view"><span class="pe-7s-search"></span></a></li>
												<li class="wishlist"><a href="wishlist.html"
													title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
												<li class="compare"><a href="#" title="Add to Compare"><span
														class="pe-7s-edit"></span></a></li>
											</ul>
										</div>
									</div>
									<figcaption class="product_content">
										<div class="product_content_inner">
											<h4 class="product_name">
												<a href="product-details.html">Epicuri per lobortis
													eleifend eget laoreet</a>
											</h4>
											<div class="price_box">
												<span class="old_price">$82.00</span><span
													class="current_price">$77.00</span>
											</div>
										</div>
										<div class="add_to_cart">
											<a href="cart.html">Add to cart</a>
										</div>
									</figcaption>
								</figure>
							</article>
							<article class="single_product">
								<figure>
									<div class="product_thumb">
										<a class="primary_img" href="product-details.html"><img
											src="assets/img/product/product7.jpg" alt=""></a><a
											class="secondary_img" href="product-details.html"><img
											src="assets/img/product/product8.jpg" alt=""></a>
										<div class="label_product">
											<span class="label_sale">Sale</span>
										</div>
										<div class="action_links">
											<ul>
												<li class="quick_button"><a href="#"
													data-toggle="modal" data-target="#modal_box"
													title="quick view"><span class="pe-7s-search"></span></a></li>
												<li class="wishlist"><a href="wishlist.html"
													title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
												<li class="compare"><a href="#" title="Add to Compare"><span
														class="pe-7s-edit"></span></a></li>
											</ul>
										</div>
									</div>
									<figcaption class="product_content">
										<div class="product_content_inner">
											<h4 class="product_name">
												<a href="product-details.html">Fusce ultricies dolor
													vitae tristique suscipit</a>
											</h4>
											<div class="price_box">
												<span class="old_price">$90.00</span><span
													class="current_price">$88.00</span>
											</div>
										</div>
										<div class="add_to_cart">
											<a href="cart.html">Add to cart</a>
										</div>
									</figcaption>
								</figure>
							</article>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="product_items">
							<article class="single_product">
								<figure>
									<div class="product_thumb">
										<a class="primary_img" href="product-details.html"><img
											src="assets/img/product/product9.jpg" alt=""></a><a
											class="secondary_img" href="product-details.html"><img
											src="assets/img/product/product10.jpg" alt=""></a>
										<div class="label_product">
											<span class="label_sale">Sale</span>
										</div>
										<div class="action_links">
											<ul>
												<li class="quick_button"><a href="#"
													data-toggle="modal" data-target="#modal_box"
													title="quick view"><span class="pe-7s-search"></span></a></li>
												<li class="wishlist"><a href="wishlist.html"
													title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
												<li class="compare"><a href="#" title="Add to Compare"><span
														class="pe-7s-edit"></span></a></li>
											</ul>
										</div>
									</div>
									<figcaption class="product_content">
										<div class="product_content_inner">
											<h4 class="product_name">
												<a href="product-details.html">Kaoreet lobortis sagittis
													laoreet metus is</a>
											</h4>
											<div class="price_box">
												<span class="old_price">$94.00</span><span
													class="current_price">$92.00</span>
											</div>
										</div>
										<div class="add_to_cart">
											<a href="cart.html">Add to cart</a>
										</div>
									</figcaption>
								</figure>
							</article>
							<article class="single_product">
								<figure>
									<div class="product_thumb">
										<a class="primary_img" href="product-details.html"><img
											src="assets/img/product/product11.jpg" alt=""></a><a
											class="secondary_img" href="product-details.html"><img
											src="assets/img/product/product12.jpg" alt=""></a>
										<div class="label_product">
											<span class="label_sale">Sale</span>
										</div>
										<div class="action_links">
											<ul>
												<li class="quick_button"><a href="#"
													data-toggle="modal" data-target="#modal_box"
													title="quick view"><span class="pe-7s-search"></span></a></li>
												<li class="wishlist"><a href="wishlist.html"
													title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
												<li class="compare"><a href="#" title="Add to Compare"><span
														class="pe-7s-edit"></span></a></li>
											</ul>
										</div>
									</div>
									<figcaption class="product_content">
										<div class="product_content_inner">
											<h4 class="product_name">
												<a href="product-details.html">Nostrum exercitationem
													itae posuere nisl</a>
											</h4>
											<div class="price_box">
												<span class="old_price">$98.00</span><span
													class="current_price">$94.00</span>
											</div>
										</div>
										<div class="add_to_cart">
											<a href="cart.html">Add to cart</a>
										</div>
									</figcaption>
								</figure>
							</article>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="product_items">
							<article class="single_product">
								<figure>
									<div class="product_thumb">
										<a class="primary_img" href="product-details.html"><img
											src="assets/img/product/product13.jpg" alt=""></a><a
											class="secondary_img" href="product-details.html"><img
											src="assets/img/product/product14.jpg" alt=""></a>
										<div class="label_product">
											<span class="label_sale">Sale</span>
										</div>
										<div class="action_links">
											<ul>
												<li class="quick_button"><a href="#"
													data-toggle="modal" data-target="#modal_box"
													title="quick view"><span class="pe-7s-search"></span></a></li>
												<li class="wishlist"><a href="wishlist.html"
													title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
												<li class="compare"><a href="#" title="Add to Compare"><span
														class="pe-7s-edit"></span></a></li>
											</ul>
										</div>
									</div>
									<figcaption class="product_content">
										<div class="product_content_inner">
											<h4 class="product_name">
												<a href="product-details.html">Ornare sed consequat nisl
													eget mi porttitor</a>
											</h4>
											<div class="price_box">
												<span class="old_price">$76.00</span><span
													class="current_price">$73.00</span>
											</div>
										</div>
										<div class="add_to_cart">
											<a href="cart.html">Add to cart</a>
										</div>
									</figcaption>
								</figure>
							</article>
							<article class="single_product">
								<figure>
									<div class="product_thumb">
										<a class="primary_img" href="product-details.html"><img
											src="assets/img/product/product15.jpg" alt=""></a><a
											class="secondary_img" href="product-details.html"><img
											src="assets/img/product/product14.jpg" alt=""></a>
										<div class="label_product">
											<span class="label_sale">Sale</span>
										</div>
										<div class="action_links">
											<ul>
												<li class="quick_button"><a href="#"
													data-toggle="modal" data-target="#modal_box"
													title="quick view"><span class="pe-7s-search"></span></a></li>
												<li class="wishlist"><a href="wishlist.html"
													title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
												<li class="compare"><a href="#" title="Add to Compare"><span
														class="pe-7s-edit"></span></a></li>
											</ul>
										</div>
									</div>
									<figcaption class="product_content">
										<div class="product_content_inner">
											<h4 class="product_name">
												<a href="product-details.html">Pellentesque posuere
													hendrerit dui quis</a>
											</h4>
											<div class="price_box">
												<span class="old_price">$70.00</span><span
													class="current_price">$66.00</span>
											</div>
										</div>
										<div class="add_to_cart">
											<a href="cart.html">Add to cart</a>
										</div>
									</figcaption>
								</figure>
							</article>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="product_items">
							<article class="single_product">
								<figure>
									<div class="product_thumb">
										<a class="primary_img" href="product-details.html"><img
											src="assets/img/product/product2.jpg" alt=""></a><a
											class="secondary_img" href="product-details.html"><img
											src="assets/img/product/product1.jpg" alt=""></a>
										<div class="label_product">
											<span class="label_sale">Sale</span>
										</div>
										<div class="action_links">
											<ul>
												<li class="quick_button"><a href="#"
													data-toggle="modal" data-target="#modal_box"
													title="quick view"><span class="pe-7s-search"></span></a></li>
												<li class="wishlist"><a href="wishlist.html"
													title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
												<li class="compare"><a href="#" title="Add to Compare"><span
														class="pe-7s-edit"></span></a></li>
											</ul>
										</div>
									</div>
									<figcaption class="product_content">
										<div class="product_content_inner">
											<h4 class="product_name">
												<a href="product-details.html">Aliquam lobortis
													pellentesque nisi lectus</a>
											</h4>
											<div class="price_box">
												<span class="old_price">$66.00</span><span
													class="current_price">$62.00</span>
											</div>
										</div>
										<div class="add_to_cart">
											<a href="cart.html">Add to cart</a>
										</div>
									</figcaption>
								</figure>
							</article>
							<article class="single_product">
								<figure>
									<div class="product_thumb">
										<a class="primary_img" href="product-details.html"><img
											src="assets/img/product/product4.jpg" alt=""></a><a
											class="secondary_img" href="product-details.html"><img
											src="assets/img/product/product3.jpg" alt=""></a>
										<div class="label_product">
											<span class="label_sale">Sale</span>
										</div>
										<div class="action_links">
											<ul>
												<li class="quick_button"><a href="#"
													data-toggle="modal" data-target="#modal_box"
													title="quick view"><span class="pe-7s-search"></span></a></li>
												<li class="wishlist"><a href="wishlist.html"
													title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
												<li class="compare"><a href="#" title="Add to Compare"><span
														class="pe-7s-edit"></span></a></li>
											</ul>
										</div>
									</div>
									<figcaption class="product_content">
										<div class="product_content_inner">
											<h4 class="product_name">
												<a href="product-details.html">Donec eu libero ac
													dapibus urna placerat</a>
											</h4>
											<div class="price_box">
												<span class="old_price">$87.00</span><span
													class="current_price">$78.00</span>
											</div>
										</div>
										<div class="add_to_cart">
											<a href="cart.html">Add to cart</a>
										</div>
									</figcaption>
								</figure>
							</article>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="product_items">
							<article class="single_product">
								<figure>
									<div class="product_thumb">
										<a class="primary_img" href="product-details.html"><img
											src="assets/img/product/product6.jpg" alt=""></a><a
											class="secondary_img" href="product-details.html"><img
											src="assets/img/product/product5.jpg" alt=""></a>
										<div class="label_product">
											<span class="label_sale">Sale</span>
										</div>
										<div class="action_links">
											<ul>
												<li class="quick_button"><a href="#"
													data-toggle="modal" data-target="#modal_box"
													title="quick view"><span class="pe-7s-search"></span></a></li>
												<li class="wishlist"><a href="wishlist.html"
													title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
												<li class="compare"><a href="#" title="Add to Compare"><span
														class="pe-7s-edit"></span></a></li>
											</ul>
										</div>
									</div>
									<figcaption class="product_content">
										<div class="product_content_inner">
											<h4 class="product_name">
												<a href="product-details.html">Kaoreet lobortis sagittis
													laoreet metus is</a>
											</h4>
											<div class="price_box">
												<span class="old_price">$74.00</span><span
													class="current_price">$72.00</span>
											</div>
										</div>
										<div class="add_to_cart">
											<a href="cart.html">Add to cart</a>
										</div>
									</figcaption>
								</figure>
							</article>
							<article class="single_product">
								<figure>
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
												<li class="quick_button"><a href="#"
													data-toggle="modal" data-target="#modal_box"
													title="quick view"><span class="pe-7s-search"></span></a></li>
												<li class="wishlist"><a href="wishlist.html"
													title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
												<li class="compare"><a href="#" title="Add to Compare"><span
														class="pe-7s-edit"></span></a></li>
											</ul>
										</div>
									</div>
									<figcaption class="product_content">
										<div class="product_content_inner">
											<h4 class="product_name">
												<a href="product-details.html">Eodem modo vel mattis
													ante facilisis</a>
											</h4>
											<div class="price_box">
												<span class="old_price">$86.00</span><span
													class="current_price">$82.00</span>
											</div>
										</div>
										<div class="add_to_cart">
											<a href="cart.html">Add to cart</a>
										</div>
									</figcaption>
								</figure>
							</article>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--product area end-->
	<!--banner area start-->
	<div class="banner_area">
		<div class="container-fluid p-0">
			<div class="row no-gutters">
				<div class="col-lg-6 col-md-6">
					<div class="single_banner">
						<div class="banner_thumb">
							<a href="shop.html"><img src="assets/img/bg/banner3.jpg"
								alt=""></a>
							<div class="banner_text2">
								<h3>
									S/S-20 <br>Collections
								</h3>
								<a href="shop.html">shop now</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="single_banner">
						<div class="banner_thumb">
							<a href="shop.html"><img src="assets/img/bg/banner4.jpg"
								alt=""></a>
							<div class="banner_text2">
								<h3>
									A/W-20 <br>Collections
								</h3>
								<a href="shop.html">shop now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--banner area end-->
	<!--discount banner area start-->
	<div class="discount_banner_area mb-95">
		<div class="container-fluid p-0">
			<div class="banner_thumb">
				<a href="shop.html"><img src="assets/img/bg/banner5.jpg" alt=""></a>
				<div class="banner_text3">
					<h3>Minimalist Spring Collection</h3>
					<h2>up TO 40% off</h2>
					<p>
						An exclusive selection of this seasonâs trends. <span>Exclusively
							online!</span>
					</p>
					<a href="shop.html">shop now</a>
				</div>
			</div>
		</div>
	</div>
	<!--discount banner area end-->
	<!--product area start-->
	<div class="product_area  mb-95">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="product_header">
						<div class="section_title">
							<h2>Our Categories</h2>
						</div>
						<div class="product_tab_btn">
							<ul class="nav" role="tablist">
								<li><a class="active" data-toggle="tab" href="#tennis"
									role="tab" aria-controls="tennis" aria-selected="true">+Tennis
								</a></li>
								<li><a data-toggle="tab" href="#fitness" role="tab"
									aria-controls="fitness" aria-selected="false">+Fitness </a></li>
								<li><a data-toggle="tab" href="#football" role="tab"
									aria-controls="football" aria-selected="false">+Football </a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="product_container">
				<div class="tab-content">
					<div class="tab-pane fade show active" id="tennis" role="tabpanel">
						<div class="row">
							<div class="product_carousel product_column5 owl-carousel">
								<div class="col-lg-3">
									<article class="single_product">
										<figure>
											<div class="product_thumb">
												<a class="primary_img" href="product-details.html"><img
													src="assets/img/product/product3.jpg" alt=""></a><a
													class="secondary_img" href="product-details.html"><img
													src="assets/img/product/product4.jpg" alt=""></a>
												<div class="action_links">
													<ul>
														<li class="quick_button"><a href="#"
															data-toggle="modal" data-target="#modal_box"
															title="quick view"><span class="pe-7s-search"></span></a></li>
														<li class="wishlist"><a href="wishlist.html"
															title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
														<li class="compare"><a href="#"
															title="Add to Compare"><span class="pe-7s-edit"></span></a></li>
													</ul>
												</div>
											</div>
											<figcaption class="product_content">
												<div class="product_content_inner">
													<h4 class="product_name">
														<a href="product-details.html">Eodem modo vel are
															mattis ante facilisis</a>
													</h4>
													<div class="price_box">
														<span class="old_price">$86.00</span><span
															class="current_price">$82.00</span>
													</div>
												</div>
												<div class="add_to_cart">
													<a href="cart.html">Add to cart</a>
												</div>
											</figcaption>
										</figure>
									</article>
								</div>
								<div class="col-lg-3">
									<article class="single_product">
										<figure>
											<div class="product_thumb">
												<a class="primary_img" href="product-details.html"><img
													src="assets/img/product/product5.jpg" alt=""></a><a
													class="secondary_img" href="product-details.html"><img
													src="assets/img/product/product6.jpg" alt=""></a>
												<div class="label_product">
													<span class="label_sale">Sale</span>
												</div>
												<div class="action_links">
													<ul>
														<li class="quick_button"><a href="#"
															data-toggle="modal" data-target="#modal_box"
															title="quick view"><span class="pe-7s-search"></span></a></li>
														<li class="wishlist"><a href="wishlist.html"
															title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
														<li class="compare"><a href="#"
															title="Add to Compare"><span class="pe-7s-edit"></span></a></li>
													</ul>
												</div>
											</div>
											<figcaption class="product_content">
												<div class="product_content_inner">
													<h4 class="product_name">
														<a href="product-details.html">Epicuri per lobortis
															eleifend eget laoreet</a>
													</h4>
													<div class="price_box">
														<span class="old_price">$82.00</span><span
															class="current_price">$77.00</span>
													</div>
												</div>
												<div class="add_to_cart">
													<a href="cart.html">Add to cart</a>
												</div>
											</figcaption>
										</figure>
									</article>
								</div>
								<div class="col-lg-3">
									<article class="single_product">
										<figure>
											<div class="product_thumb">
												<a class="primary_img" href="product-details.html"><img
													src="assets/img/product/product9.jpg" alt=""></a><a
													class="secondary_img" href="product-details.html"><img
													src="assets/img/product/product10.jpg" alt=""></a>
												<div class="label_product">
													<span class="label_sale">Sale</span>
												</div>
												<div class="action_links">
													<ul>
														<li class="quick_button"><a href="#"
															data-toggle="modal" data-target="#modal_box"
															title="quick view"><span class="pe-7s-search"></span></a></li>
														<li class="wishlist"><a href="wishlist.html"
															title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
														<li class="compare"><a href="#"
															title="Add to Compare"><span class="pe-7s-edit"></span></a></li>
													</ul>
												</div>
											</div>
											<figcaption class="product_content">
												<div class="product_content_inner">
													<h4 class="product_name">
														<a href="product-details.html">Kaoreet lobortis
															sagittis laoreet metus feugiat</a>
													</h4>
													<div class="price_box">
														<span class="old_price">$94.00</span><span
															class="current_price">$92.00</span>
													</div>
												</div>
												<div class="add_to_cart">
													<a href="cart.html">Add to cart</a>
												</div>
											</figcaption>
										</figure>
									</article>
								</div>
								<div class="col-lg-3">
									<article class="single_product">
										<figure>
											<div class="product_thumb">
												<a class="primary_img" href="product-details.html"><img
													src="assets/img/product/product13.jpg" alt=""></a><a
													class="secondary_img" href="product-details.html"><img
													src="assets/img/product/product14.jpg" alt=""></a>
												<div class="action_links">
													<ul>
														<li class="quick_button"><a href="#"
															data-toggle="modal" data-target="#modal_box"
															title="quick view"><span class="pe-7s-search"></span></a></li>
														<li class="wishlist"><a href="wishlist.html"
															title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
														<li class="compare"><a href="#"
															title="Add to Compare"><span class="pe-7s-edit"></span></a></li>
													</ul>
												</div>
											</div>
											<figcaption class="product_content">
												<div class="product_content_inner">
													<h4 class="product_name">
														<a href="product-details.html">Ornare sed consequat
															nisl eget mi porttitor</a>
													</h4>
													<div class="price_box">
														<span class="old_price">$76.00</span><span
															class="current_price">$73.00</span>
													</div>
												</div>
												<div class="add_to_cart">
													<a href="cart.html">Add to cart</a>
												</div>
											</figcaption>
										</figure>
									</article>
								</div>
								<div class="col-lg-3">
									<article class="single_product">
										<figure>
											<div class="product_thumb">
												<a class="primary_img" href="product-details.html"><img
													src="assets/img/product/product4.jpg" alt=""></a><a
													class="secondary_img" href="product-details.html"><img
													src="assets/img/product/product3.jpg" alt=""></a>
												<div class="label_product">
													<span class="label_sale">Sale</span>
												</div>
												<div class="action_links">
													<ul>
														<li class="quick_button"><a href="#"
															data-toggle="modal" data-target="#modal_box"
															title="quick view"><span class="pe-7s-search"></span></a></li>
														<li class="wishlist"><a href="wishlist.html"
															title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
														<li class="compare"><a href="#"
															title="Add to Compare"><span class="pe-7s-edit"></span></a></li>
													</ul>
												</div>
											</div>
											<figcaption class="product_content">
												<div class="product_content_inner">
													<h4 class="product_name">
														<a href="product-details.html">Donec eu libero ac
															dapibus urna placerat</a>
													</h4>
													<div class="price_box">
														<span class="old_price">$87.00</span><span
															class="current_price">$78.00</span>
													</div>
												</div>
												<div class="add_to_cart">
													<a href="cart.html">Add to cart</a>
												</div>
											</figcaption>
										</figure>
									</article>
								</div>
								<div class="col-lg-3">
									<article class="single_product">
										<figure>
											<div class="product_thumb">
												<a class="primary_img" href="product-details.html"><img
													src="assets/img/product/product8.jpg" alt=""></a><a
													class="secondary_img" href="product-details.html"><img
													src="assets/img/product/product7.jpg" alt=""></a>
												<div class="action_links">
													<ul>
														<li class="quick_button"><a href="#"
															data-toggle="modal" data-target="#modal_box"
															title="quick view"><span class="pe-7s-search"></span></a></li>
														<li class="wishlist"><a href="wishlist.html"
															title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
														<li class="compare"><a href="#"
															title="Add to Compare"><span class="pe-7s-edit"></span></a></li>
													</ul>
												</div>
											</div>
											<figcaption class="product_content">
												<div class="product_content_inner">
													<h4 class="product_name">
														<a href="product-details.html">Eodem modo vel mattis
															ante facilisis</a>
													</h4>
													<div class="price_box">
														<span class="old_price">$86.00</span><span
															class="current_price">$82.00</span>
													</div>
												</div>
												<div class="add_to_cart">
													<a href="cart.html">Add to cart</a>
												</div>
											</figcaption>
										</figure>
									</article>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="fitness" role="tabpanel">
						<div class="row">
							<div class="product_carousel product_column5 owl-carousel">
								<div class="col-lg-3">
									<article class="single_product">
										<figure>
											<div class="product_thumb">
												<a class="primary_img" href="product-details.html"><img
													src="assets/img/product/product4.jpg" alt=""></a><a
													class="secondary_img" href="product-details.html"><img
													src="assets/img/product/product3.jpg" alt=""></a>
												<div class="label_product">
													<span class="label_sale">Sale</span>
												</div>
												<div class="action_links">
													<ul>
														<li class="quick_button"><a href="#"
															data-toggle="modal" data-target="#modal_box"
															title="quick view"><span class="pe-7s-search"></span></a></li>
														<li class="wishlist"><a href="wishlist.html"
															title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
														<li class="compare"><a href="#"
															title="Add to Compare"><span class="pe-7s-edit"></span></a></li>
													</ul>
												</div>
											</div>
											<figcaption class="product_content">
												<div class="product_content_inner">
													<h4 class="product_name">
														<a href="product-details.html">Donec eu libero ac
															dapibus urna placerat</a>
													</h4>
													<div class="price_box">
														<span class="old_price">$87.00</span><span
															class="current_price">$78.00</span>
													</div>
												</div>
												<div class="add_to_cart">
													<a href="cart.html">Add to cart</a>
												</div>
											</figcaption>
										</figure>
									</article>
								</div>
								<div class="col-lg-3">
									<article class="single_product">
										<figure>
											<div class="product_thumb">
												<a class="primary_img" href="product-details.html"><img
													src="assets/img/product/product8.jpg" alt=""></a><a
													class="secondary_img" href="product-details.html"><img
													src="assets/img/product/product7.jpg" alt=""></a>
												<div class="action_links">
													<ul>
														<li class="quick_button"><a href="#"
															data-toggle="modal" data-target="#modal_box"
															title="quick view"><span class="pe-7s-search"></span></a></li>
														<li class="wishlist"><a href="wishlist.html"
															title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
														<li class="compare"><a href="#"
															title="Add to Compare"><span class="pe-7s-edit"></span></a></li>
													</ul>
												</div>
											</div>
											<figcaption class="product_content">
												<div class="product_content_inner">
													<h4 class="product_name">
														<a href="product-details.html">Eodem modo vel mattis
															ante facilisis</a>
													</h4>
													<div class="price_box">
														<span class="old_price">$86.00</span><span
															class="current_price">$82.00</span>
													</div>
												</div>
												<div class="add_to_cart">
													<a href="cart.html">Add to cart</a>
												</div>
											</figcaption>
										</figure>
									</article>
								</div>
								<div class="col-lg-3">
									<article class="single_product">
										<figure>
											<div class="product_thumb">
												<a class="primary_img" href="product-details.html"><img
													src="assets/img/product/product3.jpg" alt=""></a><a
													class="secondary_img" href="product-details.html"><img
													src="assets/img/product/product4.jpg" alt=""></a>
												<div class="action_links">
													<ul>
														<li class="quick_button"><a href="#"
															data-toggle="modal" data-target="#modal_box"
															title="quick view"><span class="pe-7s-search"></span></a></li>
														<li class="wishlist"><a href="wishlist.html"
															title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
														<li class="compare"><a href="#"
															title="Add to Compare"><span class="pe-7s-edit"></span></a></li>
													</ul>
												</div>
											</div>
											<figcaption class="product_content">
												<div class="product_content_inner">
													<h4 class="product_name">
														<a href="product-details.html">Eodem modo vel mattis
															ante facilisis</a>
													</h4>
													<div class="price_box">
														<span class="old_price">$86.00</span><span
															class="current_price">$82.00</span>
													</div>
												</div>
												<div class="add_to_cart">
													<a href="cart.html">Add to cart</a>
												</div>
											</figcaption>
										</figure>
									</article>
								</div>
								<div class="col-lg-3">
									<article class="single_product">
										<figure>
											<div class="product_thumb">
												<a class="primary_img" href="product-details.html"><img
													src="assets/img/product/product5.jpg" alt=""></a><a
													class="secondary_img" href="product-details.html"><img
													src="assets/img/product/product6.jpg" alt=""></a>
												<div class="label_product">
													<span class="label_sale">Sale</span>
												</div>
												<div class="action_links">
													<ul>
														<li class="quick_button"><a href="#"
															data-toggle="modal" data-target="#modal_box"
															title="quick view"><span class="pe-7s-search"></span></a></li>
														<li class="wishlist"><a href="wishlist.html"
															title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
														<li class="compare"><a href="#"
															title="Add to Compare"><span class="pe-7s-edit"></span></a></li>
													</ul>
												</div>
											</div>
											<figcaption class="product_content">
												<div class="product_content_inner">
													<h4 class="product_name">
														<a href="product-details.html">Epicuri per lobortis
															eleifend eget laoreet</a>
													</h4>
													<div class="price_box">
														<span class="old_price">$82.00</span><span
															class="current_price">$77.00</span>
													</div>
												</div>
												<div class="add_to_cart">
													<a href="cart.html">Add to cart</a>
												</div>
											</figcaption>
										</figure>
									</article>
								</div>
								<div class="col-lg-3">
									<article class="single_product">
										<figure>
											<div class="product_thumb">
												<a class="primary_img" href="product-details.html"><img
													src="assets/img/product/product9.jpg" alt=""></a><a
													class="secondary_img" href="product-details.html"><img
													src="assets/img/product/product10.jpg" alt=""></a>
												<div class="label_product">
													<span class="label_sale">Sale</span>
												</div>
												<div class="action_links">
													<ul>
														<li class="quick_button"><a href="#"
															data-toggle="modal" data-target="#modal_box"
															title="quick view"><span class="pe-7s-search"></span></a></li>
														<li class="wishlist"><a href="wishlist.html"
															title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
														<li class="compare"><a href="#"
															title="Add to Compare"><span class="pe-7s-edit"></span></a></li>
													</ul>
												</div>
											</div>
											<figcaption class="product_content">
												<div class="product_content_inner">
													<h4 class="product_name">
														<a href="product-details.html">Kaoreet lobortis
															sagittis laoreet metus feugiat</a>
													</h4>
													<div class="price_box">
														<span class="old_price">$94.00</span><span
															class="current_price">$92.00</span>
													</div>
												</div>
												<div class="add_to_cart">
													<a href="cart.html">Add to cart</a>
												</div>
											</figcaption>
										</figure>
									</article>
								</div>
								<div class="col-lg-3">
									<article class="single_product">
										<figure>
											<div class="product_thumb">
												<a class="primary_img" href="product-details.html"><img
													src="assets/img/product/product13.jpg" alt=""></a><a
													class="secondary_img" href="product-details.html"><img
													src="assets/img/product/product14.jpg" alt=""></a>
												<div class="action_links">
													<ul>
														<li class="quick_button"><a href="#"
															data-toggle="modal" data-target="#modal_box"
															title="quick view"><span class="pe-7s-search"></span></a></li>
														<li class="wishlist"><a href="wishlist.html"
															title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
														<li class="compare"><a href="#"
															title="Add to Compare"><span class="pe-7s-edit"></span></a></li>
													</ul>
												</div>
											</div>
											<figcaption class="product_content">
												<div class="product_content_inner">
													<h4 class="product_name">
														<a href="product-details.html">Ornare sed consequat
															nisl eget mi porttitor</a>
													</h4>
													<div class="price_box">
														<span class="old_price">$76.00</span><span
															class="current_price">$73.00</span>
													</div>
												</div>
												<div class="add_to_cart">
													<a href="cart.html">Add to cart</a>
												</div>
											</figcaption>
										</figure>
									</article>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="football" role="tabpanel">
						<div class="row">
							<div class="product_carousel product_column5 owl-carousel">
								<div class="col-lg-3">
									<article class="single_product">
										<figure>
											<div class="product_thumb">
												<a class="primary_img" href="product-details.html"><img
													src="assets/img/product/product9.jpg" alt=""></a><a
													class="secondary_img" href="product-details.html"><img
													src="assets/img/product/product10.jpg" alt=""></a>
												<div class="label_product">
													<span class="label_sale">Sale</span>
												</div>
												<div class="action_links">
													<ul>
														<li class="quick_button"><a href="#"
															data-toggle="modal" data-target="#modal_box"
															title="quick view"><span class="pe-7s-search"></span></a></li>
														<li class="wishlist"><a href="wishlist.html"
															title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
														<li class="compare"><a href="#"
															title="Add to Compare"><span class="pe-7s-edit"></span></a></li>
													</ul>
												</div>
											</div>
											<figcaption class="product_content">
												<div class="product_content_inner">
													<h4 class="product_name">
														<a href="product-details.html">Kaoreet lobortis
															sagittis laoreet metus feugiat</a>
													</h4>
													<div class="price_box">
														<span class="old_price">$94.00</span><span
															class="current_price">$92.00</span>
													</div>
												</div>
												<div class="add_to_cart">
													<a href="cart.html">Add to cart</a>
												</div>
											</figcaption>
										</figure>
									</article>
								</div>
								<div class="col-lg-3">
									<article class="single_product">
										<figure>
											<div class="product_thumb">
												<a class="primary_img" href="product-details.html"><img
													src="assets/img/product/product13.jpg" alt=""></a><a
													class="secondary_img" href="product-details.html"><img
													src="assets/img/product/product14.jpg" alt=""></a>
												<div class="action_links">
													<ul>
														<li class="quick_button"><a href="#"
															data-toggle="modal" data-target="#modal_box"
															title="quick view"><span class="pe-7s-search"></span></a></li>
														<li class="wishlist"><a href="wishlist.html"
															title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
														<li class="compare"><a href="#"
															title="Add to Compare"><span class="pe-7s-edit"></span></a></li>
													</ul>
												</div>
											</div>
											<figcaption class="product_content">
												<div class="product_content_inner">
													<h4 class="product_name">
														<a href="product-details.html">Ornare sed consequat
															nisl eget mi porttitor</a>
													</h4>
													<div class="price_box">
														<span class="old_price">$76.00</span><span
															class="current_price">$73.00</span>
													</div>
												</div>
												<div class="add_to_cart">
													<a href="cart.html">Add to cart</a>
												</div>
											</figcaption>
										</figure>
									</article>
								</div>
								<div class="col-lg-3">
									<article class="single_product">
										<figure>
											<div class="product_thumb">
												<a class="primary_img" href="product-details.html"><img
													src="assets/img/product/product3.jpg" alt=""></a><a
													class="secondary_img" href="product-details.html"><img
													src="assets/img/product/product4.jpg" alt=""></a>
												<div class="action_links">
													<ul>
														<li class="quick_button"><a href="#"
															data-toggle="modal" data-target="#modal_box"
															title="quick view"><span class="pe-7s-search"></span></a></li>
														<li class="wishlist"><a href="wishlist.html"
															title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
														<li class="compare"><a href="#"
															title="Add to Compare"><span class="pe-7s-edit"></span></a></li>
													</ul>
												</div>
											</div>
											<figcaption class="product_content">
												<div class="product_content_inner">
													<h4 class="product_name">
														<a href="product-details.html">Eodem modo vel mattis
															ante facilisis</a>
													</h4>
													<div class="price_box">
														<span class="old_price">$86.00</span><span
															class="current_price">$82.00</span>
													</div>
												</div>
												<div class="add_to_cart">
													<a href="cart.html">Add to cart</a>
												</div>
											</figcaption>
										</figure>
									</article>
								</div>
								<div class="col-lg-3">
									<article class="single_product">
										<figure>
											<div class="product_thumb">
												<a class="primary_img" href="product-details.html"><img
													src="assets/img/product/product5.jpg" alt=""></a><a
													class="secondary_img" href="product-details.html"><img
													src="assets/img/product/product6.jpg" alt=""></a>
												<div class="label_product">
													<span class="label_sale">Sale</span>
												</div>
												<div class="action_links">
													<ul>
														<li class="quick_button"><a href="#"
															data-toggle="modal" data-target="#modal_box"
															title="quick view"><span class="pe-7s-search"></span></a></li>
														<li class="wishlist"><a href="wishlist.html"
															title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
														<li class="compare"><a href="#"
															title="Add to Compare"><span class="pe-7s-edit"></span></a></li>
													</ul>
												</div>
											</div>
											<figcaption class="product_content">
												<div class="product_content_inner">
													<h4 class="product_name">
														<a href="product-details.html">Epicuri per lobortis
															eleifend eget laoreet</a>
													</h4>
													<div class="price_box">
														<span class="old_price">$82.00</span><span
															class="current_price">$77.00</span>
													</div>
												</div>
												<div class="add_to_cart">
													<a href="cart.html">Add to cart</a>
												</div>
											</figcaption>
										</figure>
									</article>
								</div>
								<div class="col-lg-3">
									<article class="single_product">
										<figure>
											<div class="product_thumb">
												<a class="primary_img" href="product-details.html"><img
													src="assets/img/product/product4.jpg" alt=""></a><a
													class="secondary_img" href="product-details.html"><img
													src="assets/img/product/product3.jpg" alt=""></a>
												<div class="label_product">
													<span class="label_sale">Sale</span>
												</div>
												<div class="action_links">
													<ul>
														<li class="quick_button"><a href="#"
															data-toggle="modal" data-target="#modal_box"
															title="quick view"><span class="pe-7s-search"></span></a></li>
														<li class="wishlist"><a href="wishlist.html"
															title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
														<li class="compare"><a href="#"
															title="Add to Compare"><span class="pe-7s-edit"></span></a></li>
													</ul>
												</div>
											</div>
											<figcaption class="product_content">
												<div class="product_content_inner">
													<h4 class="product_name">
														<a href="product-details.html">Donec eu libero ac
															dapibus urna placerat</a>
													</h4>
													<div class="price_box">
														<span class="old_price">$87.00</span><span
															class="current_price">$78.00</span>
													</div>
												</div>
												<div class="add_to_cart">
													<a href="cart.html">Add to cart</a>
												</div>
											</figcaption>
										</figure>
									</article>
								</div>
								<div class="col-lg-3">
									<article class="single_product">
										<figure>
											<div class="product_thumb">
												<a class="primary_img" href="product-details.html"><img
													src="assets/img/product/product8.jpg" alt=""></a><a
													class="secondary_img" href="product-details.html"><img
													src="assets/img/product/product7.jpg" alt=""></a>
												<div class="action_links">
													<ul>
														<li class="quick_button"><a href="#"
															data-toggle="modal" data-target="#modal_box"
															title="quick view"><span class="pe-7s-search"></span></a></li>
														<li class="wishlist"><a href="wishlist.html"
															title="Add to Wishlist"><span class="pe-7s-like"></span></a></li>
														<li class="compare"><a href="#"
															title="Add to Compare"><span class="pe-7s-edit"></span></a></li>
													</ul>
												</div>
											</div>
											<figcaption class="product_content">
												<div class="product_content_inner">
													<h4 class="product_name">
														<a href="product-details.html">Eodem modo vel mattis
															ante facilisis</a>
													</h4>
													<div class="price_box">
														<span class="old_price">$86.00</span><span
															class="current_price">$82.00</span>
													</div>
												</div>
												<div class="add_to_cart">
													<a href="cart.html">Add to cart</a>
												</div>
											</figcaption>
										</figure>
									</article>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--product area end-->
	<!--shipping area start-->
	<div class="shipping_area">
		<div class="container">
			<div class="shipping_container">
				<div class="row">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="single_shipping">
							<div class="shipping_icone">
								<img src="assets/img/about/shipping1.png" alt="">
							</div>
							<div class="shipping_content">
								<h3>Free Delivery</h3>
								<p>Free shipping on all order</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="single_shipping">
							<div class="shipping_icone">
								<img src="assets/img/about/shipping2.png" alt="">
							</div>
							<div class="shipping_content">
								<h3>Online Support 24/7</h3>
								<p>Support online 24 hours a day</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="single_shipping">
							<div class="shipping_icone">
								<img src="assets/img/about/shipping3.png" alt="">
							</div>
							<div class="shipping_content">
								<h3>Money Return</h3>
								<p>Back guarantee under 7 days</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="single_shipping">
							<div class="shipping_icone">
								<img src="assets/img/about/shipping4.png" alt="">
							</div>
							<div class="shipping_content">
								<h3>Member Discount</h3>
								<p>Onevery order over $120.00</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--shipping area end-->
	<!--brand area start-->
	<div class="brand_area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="brand_container owl-carousel ">
						<div class="single_brand">
							<a href="#"><img src="assets/img/brand/brand1.jpg" alt=""></a>
						</div>
						<div class="single_brand">
							<a href="#"><img src="assets/img/brand/brand2.jpg" alt=""></a>
						</div>
						<div class="single_brand">
							<a href="#"><img src="assets/img/brand/brand3.jpg" alt=""></a>
						</div>
						<div class="single_brand">
							<a href="#"><img src="assets/img/brand/brand4.jpg" alt=""></a>
						</div>
						<div class="single_brand">
							<a href="#"><img src="assets/img/brand/brand5.jpg" alt=""></a>
						</div>
						<div class="single_brand">
							<a href="#"><img src="assets/img/brand/brand6.jpg" alt=""></a>
						</div>
						<div class="single_brand">
							<a href="#"><img src="assets/img/brand/brand7.jpg" alt=""></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--brand area end-->
	<!--footer area start-->
	<footer class="footer_widgets">
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
								<a href="/"><img src="assets/img/logo/logo2.png"
									alt=""></a>
							</div>
							<div class="copyright_area">
								<p>
									Copyright Â© 2020 <a href="/">Braga</a>. <a
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
	<!--news letter popup start-->
	<!-- 
	<div class="newletter-popup">
		<div id="boxes" class="newletter-container">
			<div id="dialog" class="window">
				<div id="popup2">
					<span class="b-close"><span>close</span></span>
				</div>
				<div class="box">
					<div class="newletter-title">
						<h2>Newsletter</h2>
					</div>
					<div class="box-content newleter-content">
						<label class="newletter-label">Enter your email address to
							subscribe our notification of our new post &amp;features by
							email.</label>
						<div id="frm_subscribe">
							<form name="subscribe" id="subscribe_popup">
							 -->
								<!-- <span class="required">*</span><span>Enter you email address here...</span>-->
								
								<!------------ 
								
								<input type="text" value="" name="subscribe_pemail"
									id="subscribe_pemail"
									placeholder="Enter you email address here..."><input
									type="hidden" value="" name="subscribe_pname"
									id="subscribe_pname">
								<div id="notification"></div>
								<a class="theme-btn-outlined" onclick="email_subscribepopup()"><span>Subscribe</span></a>
							</form>
							<div class="subscribe-bottom">
								<input type="checkbox" id="newsletter_popup_dont_show_again"><label
									for="newsletter_popup_dont_show_again">Don't show this
									popup again</label>
							</div>
						</div>
						
						 
					</div>
				</div>
			</div>
		</div>
	</div>
						 ------------>
						<!-- /#frm_subscribe -->
					<!-- /.box-content -->
		<!-- /.box -->
	
	<!--news letter popup start-->
	<!-- JS ============================================ -->
	<!--jquery min js-->
	
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