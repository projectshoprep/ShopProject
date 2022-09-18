<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Braga - login</title>
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
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>
<body>

	<!--header area start-->
	<jsp:include page="template/main/main_header.jsp"></jsp:include>
	<!--header area end-->
	
	<script type="text/javascript">
		$(function(){
			Kakao.init('b76a0ecb195913e883fb1984fe078269');
			$('#naver_id_login img').attr('src','img/icon/naver_login_btn.png');
		});
	</script>
	
	<!--breadcrumbs area start-->
	<div class="breadcrumbs_area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="breadcrumb_content">
						<h3>Login</h3>
						<ul>
							<li><a href="/">home</a></li>
							<li>Login</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--breadcrumbs area end-->
	
	
	<!-- customer login start -->
	<div class="customer_login">
		<div class="container">
			<div class="row">
				<!--login area start-->
				<div class="col-lg-6 col-md-6">
					<div class="account_form">
						<h2>login</h2>
						<form method="post" action="login.do">
							<p>
								<label>Username or email <span>*</span></label><input
									type="text" name ="id">
							</p>
							<p>
								<label>Passwords <span>*</span></label><input type="password" name="passwd">
							</p>
							<div class="login_submit">
								<a href="#">Lost your password?</a><label for="remember"><input
									id="remember" type="checkbox">Remember me </label>
								<button type="submit">login</button>
								<a href="register-page.do">register</a>
							</div>
						</form>
						<a id="custom-login-btn" href="javascript:loginWithKakao()">
			                <img src="img/icon/kakao_login_large_wide.png" width="222" alt="카카오 로그인 버튼" />
			            </a>
			            <script type="text/javascript">
					        function loginWithKakao() {
					        	Kakao.Auth.authorize({
					        		redirectUri : 'http://127.0.0.1:9999/kakaoLogin.do'	
					        	});
					        }
					    </script>
					    <a id="naver_id_login" href="https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=1gT6ptILkTkiIXDqGrGi&redirect_uri=http://localhost:9999/naverLogin.do">
					    <img src="img/header/naver_login_btn.png"/>
					    </a>
					</div>
				</div>
				<!--login area start-->
				<!--register area start-->
				<!-- <div class="col-lg-6 col-md-6">
					<div class="account_form register">
						<h2>Register</h2>
						<form action="#">
							<p>
								<label>Email address <span>*</span></label><input type="text">
							</p>
							<p>
								<label>Passwords <span>*</span></label><input type="password">
							</p>
							<div class="login_submit">
								<button type="submit">Register</button>
							</div>
						</form>
					</div>
				</div>--!>
				<!--register area end-->
				<script>
			    function kakaoLogout() {
			    	var nickname = '${sessionScope.nickname}';
			    	if (!Kakao.Auth.getAccessToken()) {
			    		  console.log('Not logged in.');
			    		  return;
		    		}
		    		Kakao.Auth.logout(function() {
		    		  console.log(Kakao.Auth.getAccessToken());
		    		});
			  	}
		    </script>
			</div>
		</div>
	</div>
	<!-- customer login end -->
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
								<a href="/"><img src="assets/img/logo/logo2.png"
									alt=""></a>
							</div>
							<div class="copyright_area">
								<p>
									Copyright ?2020 <a href="/">Braga</a>. <a
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