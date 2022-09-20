<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Braga - cart page</title>
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function(){
		$(".btn_like").click(function(){
			// 0 - like, 1 - hate
			// bno;
			var obj = $(this);
			var idx = $(this).index();
			d = "bno=${requestScope.board.bno}&mode="+idx;
			$.ajax({
				url : "plusLikeHate.do",
				data : d,
				method : "get",
				success:function(result){
					var msg = "이 게시물에다가";
					msg += idx == 0 ? "좋아요를 " : "싫어요를 ";
					msg += result == 1 ? "하셨습니다." : "취소하셨습니다.";
					alert(msg);
					location.reload();					
				}
			});
		});
	});
	</script>
</head>
<body>
	<!--header area start-->
	<jsp:include page="template/main/main_header.jsp" flush=""/>
	<!--header area end-->
	<!--breadcrumbs area start-->
	<div class="breadcrumbs_area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="breadcrumb_content">
						<h3>cart</h3>
						<ul>
							<li><a href="index.html">home</a></li>
							<li>Shopping Cart</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--breadcrumbs area end-->
	<!--shopping cart area start -->
	<div class="shopping_cart_area">
		<div class="container">
			<form action="#">
				<div class="row">
					<div class="col-12">
						<div class="table_desc">
							<div class="cart_page table-responsive">
								<table>
									<thead>
										<tr>
											<th class="product_remove">Delete</th>
											<th class="product_thumb">Image</th>
											<th class="product_name">Product</th>
											<th class="product_name">Color</th>
											<th class="product_name">Size</th>
											<th class="product-price">Price</th>
											<th class="product_quantity">Quantity</th>
											<th class="product_total">Total</th>
										</tr>
									</thead>
									<tbody>
											<c:forEach items="${requestScope.cartlist }" var="cdto">
										<tr>
										<!-- 삭제 -->
											<td class="product_remove"><a href="deletecart.do?productno=${cdto.productno }"><i
													class="fa fa-trash-o"></i></a></td>
											<td class="product_thumb"><a href="#"><img
													src="assets/img/s-product/product.jpg" alt=""></a></td>
											<td class="cart_product_name"><a href="#">${cdto.productname }</a></td>
											<td class="cart_color_name"><a href="#">${cdto.colorname }</a></td>
											<td class="cart_size_name"><a href="#">${cdto.sizekind }</a></td>
											<td class="product-price">${cdto.price }</td>
											<td class="product_quantity"><label>Quantity</label><input
												min="1" max="100" value="${cdto.quantity }" type="number"></td>
											<td class="product_total">￦${cdto.price  * cdto.quantity }</td>
										</tr>
											</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="cart_submit">
								<button type="submit">update cart</button>
							</div>
						</div>
					</div>
				</div>
				<!--coupon code area start-->
				<div class="coupon_area">
					<div class="row">
						<div class="col-lg-6 col-md-6">
							<div class="coupon_code left">
								<h3>Coupon</h3>
								<div class="coupon_inner">
									<p>Enter your coupon code if you have one.</p>
									<input placeholder="Coupon code" type="text">
									<button type="submit">Apply coupon</button>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-md-6">
							<div class="coupon_code right">
								<h3>Cart Totals</h3>
								<div class="coupon_inner">
									<div class="cart_subtotal">
										<p>Subtotal</p>
										<p class="cart_amount">Â£215.00</p>
									</div>
									<div class="cart_subtotal ">
										<p>Shipping</p>
										<p class="cart_amount">
											<span>Flat Rate:</span>Â£255.00
										</p>
									</div>
									<a href="#">Calculate shipping</a>
									<div class="cart_subtotal">
										<p>Total</p>
										<p class="cart_amount">Â£215.00</p>
									</div>
									<div class="checkout_btn">
										<a href="#">Proceed to Checkout</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--coupon code area end-->
			</form>
		</div>
	</div>
	<!--shopping cart area end -->
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