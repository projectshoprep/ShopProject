<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Braga - my account</title>
<script>
	$(function(){
		$(".comment_form textarea").keyup(function() {
			$(this).next().text($(this).val().length+"/500");
		});
		$(".comment_form button").click(function(){
			var data = $("#comment").serialize();
			$.ajax({
				url : "insertComment.do",
				data : data,
				method:"get",
				success:function(d){
					if(d == 1){
						alert("댓글 등록 성공");
					}else{
						alert("댓글 등록 실패");
					}
					location.reload();	
				}
			});
		});
		</script>
<style type="text/css">
#container {
	/* background-color: lime; */
	width: 1200px;
	margin: 0 auto;
}

#container table {
	width: 600px;
	border-collapse: collapse;
	margin: 0 auto;
}

#container th {
	width: 150px !important;
	text-align: right;
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
	min-width: 80px;
	display: inline-block;
	padding: 5px 10px;
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

.hate {
	transform: rotate(0.5turn);
}

.text_center {
	text-align: center;
}

.btn_like {
	width: 64px;
	display: inline-block;
	color: black;
	text-decoration: none;
}

.comment_form {
	width: 100%;
	border: 1px solid black;
}

.writer {
	width: 100%;
	display: inline-block;
	font-weight: bold;
	padding-left: 30px;
}

.comment_form textarea {
	width: 100%;
	height: 80px;
	margin-top: 10px;
	font-size: 18px;
	padding-left: 30px;
	padding-right: 30px;
	outline: none;
	border: none;
	resize: none;
	box-sizing: border-box;
}

.comment_form button {
	width: 100px;
	height: 40px;
	font-weight: bold;
	background-color: #ffff00;
	outline: none;
	border: none;
}

.comment_form button:hover {
	background-color: #dfdf25;
}

.length {
	text-align: right;
	padding: 10px 30px;
}

hr {
	margin: 0;
}

.comment_form p {
	margin: 0;
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
								<li><a href="my-account.do" class="nav-link ">회원정보수정</a></li>
								<li><a href="#basket" class="nav-link">장바구니</a></li>
								<li><a href="#order-list" class="nav-link">주문목록</a></li>
								<li><a href="Allqnalist.do" class="nav-link active">QNA</a></li>
								<li><a href="#qnalist.do" class="nav-link">리뷰 페이지</a></li>
								<li><a href="#event" class="nav-link">이벤트 페이지</a></li>
								<li><a href="#chatting" class="nav-link">1:1 채팅</a></li>
								<li><a href="logout.do" class="nav-link">로그아웃</a></li>
							</ul>
						</div>
					</div>
					<!-- Nav tabs end -->
					<div class="col-sm-12 col-md-9 col-lg-9">
						<!-- Tab panes -->
						<div class="tab-content dashboard_content">
							<div class="tab-pane fade show active" id="member-info">
								<h3>QnA</h3>
								<div id="container">
									<h2>글조회 페이지</h2>
									<table>
										<tr>
											<th>제목</th>
											<td>
												<!-- 조회한 내용 --> ${requestScope.qna.title }
											</td>
										</tr>
										<tr>
											<th>작성자</th>
											<td>${requestScope.qna.memberid }</td>
										</tr>
										<tr>
											<th style="vertical-align: top;">내용</th>
											<td>${requestScope.qna.qnacontent }</td>
										</tr>
										<tr>
											<td colspan="2">첨부파일<br> <c:forEach var="f"
													items="${requestScope.flist }">
													<a href="fileDown.do?fno=${f.fno}&qno=${f.qno}">
														${f.fileName}</a>
													<br>
													<!-- 해당 파일이 이미지인지? -->
													<c:if test="${f.type =='image' }">
														<img src="imageLoad.do?file=${f.fileName}&type=${f.type}">
													</c:if>
												</c:forEach>
											</td>
										</tr>
										<c:forEach var="comment" items="${ requestScope.qnacomment}">
											<td width="150">
												<div>
													${comment.writer }<br> <font size="2"
														color="lightgray">${comment.qnarecontent }</font>
												</div>
											</td>
										</c:forEach>
										<c:if test="${sessionScope.login == true}">
											<tr>
												<td colspan="2">
													<div class="comment_form">
														<form id="qnareply" action="qnareply.do">
															<input type="hidden" name="qno"
																value="${requestScope.qna.qno }"> <input
																type="hidden" name="writer"
																value="${requestScope.qna.memberid }"> <span
																class="memberid">${sessionScope.id }</span>
															<textarea name="qnarecontent" maxlength="500"></textarea>
															<p class="length">0/500</p>
															<hr>
															<p style="text-align: right;">
																<button>등록</button>
															</p>
														</form>
													</div>
												</td>
											</tr>
										</c:if>
										<!-- 댓글 목록 -->
										<tr>
											<th><a href="/main.do" class="btn">목록보기</a></th>
											<td style="text-align: right;"><c:if
													test="${sessionScope.id == requestScope.qna.memberid }">
													<a href="qnaUpdateView.do" class="btn">수정</a>
													<a href="deleteqna.do?qno=${requestScope.qna.qno }"
														class="btn">삭제</a>
												</c:if></td>
										</tr>
									</table>
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
									Copyright © 2020 <a href="/">Braga</a>. <a
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