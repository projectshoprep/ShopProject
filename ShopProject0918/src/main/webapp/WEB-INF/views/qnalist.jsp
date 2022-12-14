<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Braga - my account</title>
<style type="text/css">
#container {
	/* background-color: lime; */
	width: 1200px;
	margin: 0 auto;
}

#container table {
	width: 600px;
	border-collapse: collapse;
	margin: 5 auto;
}

#container th {
	width: 150px !important;
	text-align: left;
	padding: 5px;
}

#container td {
	width: 500px;
	padding: 5px;
	height: 40px;
}

#container input {
	width: 100%;
	height: 40px;
	box-sizing: border-box;
	border-width: 1px;
	border-radius: 5px;
}

h2 {
	text-align: center;
}

.btn {
	text-decoration: none;
	background-color: #e8e8e8;
	width: 80px;
	display: inline-block;
	padding: 5px 0px;
	font-weight: normal;
	border: 1px solid #585858;
	text-align: center;
	color: black;
	font-size: 14px;
	box-sizing: border-box;
}

.btn:hover {
	background-color: #282828;
	color: #FFFFFF
}

textarea {
	width: 100%;
	height: 300px;
	resize: none;
	box-sizing: border-box;
}

p input {
	width: 80% !important;
}

.ck-editor__editable_inline {
	min-height: 500px;
}
</style>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


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
						<h3>My account</h3>
						<ul>
							<li><a href="/">home</a></li>
							<li>My account</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--breadcrumbs area end-->
	<!-- my account start -->
	<section class="main_content_area">
		<div class="container">
			<div class="account_dashboard">
				<div class="row">
					<!-- Nav tabs start -->
					<div class="col-sm-12 col-md-3 col-lg-3">
						<div class="dashboard_tab_button">
							<ul role="tablist" class="nav flex-column dashboard-list">
								<li><a href="my-account.do" class="nav-link">??????????????????</a></li>
								<li><a href="Allqnalist.do" class="nav-link active">QNA</a></li>
								<li><a href="#event" class="nav-link">?????????</a></li>
								<li><a href="#chatting" class="nav-link">1:1 ??????</a></li>
								<li><a href="logout.do" class="nav-link">Log out</a></li>
							</ul>
						</div>
					</div>
					<!-- Nav tabs end -->
					<div class="col-sm-12 col-md-9 col-lg-9">
						<!-- Tab panes -->
						<div class="tab-content dashboard_content">
							<div class="tab-pane fade show active" id="member-info">
								<h3>QnA</h3>

								<!-- 	<c:if test="${sessionScope.login == null || sessionScope.login == false  }">
		<c:set var="page" target="${sessionScope }" value="${pageContext.request.requestURI}${pageContext.request.queryString }" property="resultPage" scope="session"/>
		${pageContext.request.requestURI}${pageContext.request.queryString }
		<script>
			alert("???????????? ????????? ???????????? ????????????.");
			location.href="loginView.do";
		</script>
	</c:if>-->


								<div id="Allqnalist">
									<section id="container">
										<form role="form" method="post" action="qnalist.do">
											<table>
												<tr>
													<th>??????</th>
													<th>??????</th>
													<th>?????????</th>
													<th>?????????</th>
												</tr>

												<c:forEach items="${requestScope.list}" var="list">
													<tr>
														<td>${list.qno}</td>
														<td><a href="qnaview_page.do?qno=${list.qno }">${list.title }</a></td>
														<td>${list.memberid}</td>

														<td></td>
													</tr>
												</c:forEach>

											</table>
										</form>
									</section>
									<th><a
										href="main.do?pageNo=${requestScope.pageNo == null ? 1 : requestScope.pageNo }"
										class="btn">????????????</a></th>
									<td style="text-align: right;"><a
										href="javascript:history.back();" class="btn">????????????</a>
										<button class="btn">
											<a href="qna_page.do">?????????
										</button></td>

								</div>
							</div>
							<div class="tab-pane fade" id="basket">
								<h3>Orders</h3>
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>Order</th>
												<th>Date</th>
												<th>Status</th>
												<th>Total</th>
												<th>Actions</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>May 10,2018</td>
												<td><span class="success">Completed</span></td>
												<td>$25.00 for 1 item</td>
												<td><a href="cart.html" class="view">view</a></td>
											</tr>
											<tr>
												<td>2</td>
												<td>May 10,2018</td>
												<td>Processing</td>
												<td>$17.00 for 1 item</td>
												<td><a href="cart.html" class="view">view</a></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="tab-pane fade" id="order-list">
								<h3>Downloads</h3>
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>Product</th>
												<th>Downloads</th>
												<th>Expires</th>
												<th>Download</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Shopnovilla - Free Real Estate PSD Template</td>
												<td>May 10,2018</td>
												<td><span class="danger">Expired</span></td>
												<td><a href="#" class="view">Click Here To Download
														Your File</a></td>
											</tr>
											<tr>
												<td>Organic - ecommerce html template</td>
												<td>Sep 11,2018</td>
												<td>Never</td>
												<td><a href="#" class="view">Click Here To Download
														Your File</a></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="tab-pane" id="qna"></div>
							<div class="tab-pane" id="review"></div>
							<div class="tab-pane" id="event"></div>
							<div class="tab-pane" id="chatting"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- my account end -->
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
								<a href="/"><img src="assets/img/logo/logo2.png" alt=""></a>
							</div>
							<div class="copyright_area">
								<p>
									Copyright ?? 2020 <a href="/">Braga</a>. <a
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