<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Community - 공지사항</title>
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
<style>
	.plus_comment{
		margin : 20px 0;
		padding-left : 70px;
	}
	.single_blog{
		flex: 0 0 100%;
	}
</style>
</head>
<body>
	<!--header area start-->
	<jsp:include page="template/main/main_header.jsp"></jsp:include>
	<!--header area end-->
	<!-- script area start -->
	<script>
		$(function(){
			$('.comment_reply a').click(function(){
				$('.plus_comment').empty();
				var d = '';
				d += `<div class="comments_form plus_comment">
					<form action="insertNoticeReply.do" class="frm">
						<div class="row">
							<input type="hidden" name="writer" value="${sessionScope.name }">
							<input type="hidden" name="noticeno" value="${sessionScope.noticeno }">
							<input type="hidden" name="memberid" value="${sessionScope.id }">
							<div class="col-lg-4 col-md-4">
								<label for="author">Name</label><input id="author" type="text" value="${sessionScope.name }" disabled>
							</div>
							<div class="col-12">
								<label for="review_comment">Comment </label>
								<textarea name="content" id="review_comment" style="element.style : 0; height : 100px"></textarea>
							</div>
						</div>
						<button class="frm_button" type="button" style="color : white;">Post Comment</button>
					</form>
				</div>`;
				$(this).parent().parent().parent().after(d);
			});
			$(document).on("click",".frm_button",function(){
				var replyno = $(this).parent().parent().prev().children('input[class="replyno"]').val();
				var d = $(this).parent().serialize()+"&replyno="+replyno;
				//var d = frm.children().children('input[name="writer"]').val();
				//console.log(replyno);
				console.log(d);
				$.ajax({
					url : 'insertNoticeReplyRe.do',
					data : d,
					type : 'post',
					dataType : 'json',
					success : function(r){
						if(r!=0)
							location.href='notice_detail.do?noticeno='+r;
						else
							alert('댓글 입력에 실패하였습니다.');
					}
				});
			});
			var comments_ea = $('.comment_list').length;
			$('.comments_box h3').html(comments_ea + ' Comments');
			$('figure').css('margin','20px');
		});
	</script>
	
	<!-- script area end -->
	<!--breadcrumbs area start-->
	<div class="breadcrumbs_area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="breadcrumb_content">
						<ul>
							<li><a href="index.html">community</a></li>
							<li>공지사항</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--breadcrumbs area end-->
	<!--blog body area start-->
	<div class="blog_details">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 col-md-12">
					<!--blog grid area start-->
					<div class="blog_wrapper blog_wrapper_details">
						<article class="single_blog">
							<figure>
								<div class="post_header">
									<h3 class="post_title">${requestScope.notice.title }</h3>
									<div class="blog_meta">
										<p>
											Posted by:<a href="#">${requestScope.notice.writer }</a> / On:<a href="#">${requestScope.notice.wdate }</a>
										</p>
									</div>
								</div>
								<!-- 
								<div class="blog_d_thumb">
									<img src="assets/img/blog/blog-big1.jpg" alt="">
								</div>
								 -->
								<figcaption class="blog_content">
									<div class="post_content">
										${requestScope.notice.content }
									</div>
									<div class="entry_content">
										<div class="post_meta">
											<span>Tags:</span><span><a href="#">,fashion</a></span><span><a
												href="#">,t-shirt</a></span><span><a href="#">,white</a></span>
										</div>
										<div class="social_sharing">
											<p>share this post:</p>
											<ul>
												<li><a href="#" title="facebook"><i
														class="fa fa-facebook"></i></a></li>
												<li><a href="#" title="twitter"><i
														class="fa fa-twitter"></i></a></li>
												<li><a href="#" title="pinterest"><i
														class="fa fa-pinterest"></i></a></li>
												<li><a href="#" title="google+"><i
														class="fa fa-google-plus"></i></a></li>
												<li><a href="#" title="linkedin"><i
														class="fa fa-linkedin"></i></a></li>
											</ul>
										</div>
									</div>
									<c:if test="${sessionScope.mLogin }">
									<a href="notice_updateView.do?noticeno=${requestScope.notice.noticeno }">글 수정</a>
									<a href="noticeDelete.do?noticeno=${requestScope.notice.noticeno }">삭제</a>
									</c:if>
								</figcaption>
							</figure>
						</article>
						<!--
						<div class="related_posts">
							<h3>Related posts</h3>
							<div class="row">
								<div class="col-lg-4 col-md-4 col-sm-6">
									<article class="single_related">
										<figure>
											<div class="related_thumb">
												<a href="blog-details.html"><img
													src="assets/img/blog/blog1.jpg" alt=""></a>
											</div>
											<figcaption class="related_content">
												<h4>
													<a href="#">Post with Gallery</a>
												</h4>
												<div class="blog_meta">
													<span class="author">By:<a href="#">admin</a>/
													</span><span class="meta_date">April 11,2019 </span>
												</div>
											</figcaption>
										</figure>
									</article>
								</div>
								<div class="col-lg-4 col-md-4 col-sm-6">
									<article class="single_related">
										<figure>
											<div class="related_thumb">
												<a href="blog-details.html"><img
													src="assets/img/blog/blog2.jpg" alt=""></a>
											</div>
											<figcaption class="related_content">
												<h4>
													<a href="#">Post with Audio</a>
												</h4>
												<div class="blog_meta">
													<span class="author">By:<a href="#">admin</a>/
													</span><span class="meta_date">April 11,2019 </span>
												</div>
											</figcaption>
										</figure>
									</article>
								</div>
								<div class="col-lg-4 col-md-4 col-sm-6">
									<article class="single_related">
										<figure>
											<div class="related_thumb">
												<a href="blog-details.html"><img
													src="assets/img/blog/blog3.jpg" alt=""></a>
											</div>
											<figcaption class="related_content">
												<h4>
													<a href="#">Maecenas ultricies</a>
												</h4>
												<div class="blog_meta">
													<span class="author">By:<a href="#">admin</a>/
													</span><span class="meta_date">April 11,2019 </span>
												</div>
											</figcaption>
										</figure>
									</article>
								</div>
							</div>
						</div>
						-->
						<div class="comments_box">
							<h3></h3>
							<c:forEach var="re" items="${requestScope.noticeRe }">
								<c:if test="${re.replyforno == 0 }">
									<div class="comment_list cmt_flag">
									<input type="hidden" class="replyno" value="${re.replyno }">
										<div class="comment_thumb">
											<img src="assets/img/blog/comment3.png.jpg" alt="">
										</div>
										<div class="comment_content">
											<div class="comment_meta">
												<h5>
													<form action="deleteReply.do">
													<input type="hidden" name="replyno" value="${re.replyno }">
													<a href="#">
													${re.writer }
													</a>
													|
													<button>삭제</button>
													</form>
												</h5>
												<span>${re.rdate }</span>
											</div>
											<p>${re.content }</p>
											<div class="comment_reply"> 
												<a style="cursor:pointer; color : white;">Reply</a>
											</div>
										</div>
									</div>
								</c:if>
								<c:forEach var="re2" items="${requestScope.noticeRe }">
									<c:if test="${re2.replyforno == re.replyno }">
										<div class="comment_list list_two">
											<input type="hidden" class="replyno" value="${re.replyno }">
											<div class="comment_thumb">
												<img src="assets/img/blog/comment3.png.jpg" alt="">
											</div>
											<div class="comment_content">
												<div class="comment_meta">
													<h5>
													<form action="deleteReply.do">
													<input type="hidden" name="replyno" value="${re2.replyno }">
														<a href="#">${re2.writer }</a>
													|
													<button>삭제</button>
													</form>
													<span>${re2.rdate }</span>
													</h5>
												</div>
												<p>${re2.content }</p>
												<div class="comment_reply">
													<a style="cursor:pointer; color : white;">Reply</a>
												</div>
											</div>
										</div>
									</c:if>
								</c:forEach>
							</c:forEach>
							</div>
						<div class="comments_form">
							<h3>Leave a Reply</h3>
							<p>Your email address will not be published. Required fields
								are marked *</p>
							<form action="insertNoticeReply.do">
								<div class="row">
									<input type="hidden" name="writer" value="${sessionScope.name }">
									<input type="hidden" name="noticeno" value="${sessionScope.noticeno }">
									<input type="hidden" name="memberid" value="${sessionScope.id }">
									<div class="col-lg-4 col-md-4">
										<label for="author">Name</label><input id="author" type="text" value="${sessionScope.name }" disabled>
									</div>
									<div class="col-12">
										<label for="review_comment">Comment </label>
										<textarea name="content" id="review_comment"></textarea>
									</div>
								</div>
									<!-- 
									<div class="col-lg-4 col-md-4">
										<label for="email">Email </label><input id="email" type="text">
									</div>
									<div class="col-lg-4 col-md-4">
										<label for="website">Website </label><input id="website"
											type="text">
									</div>
									 -->
								<button class="button" type="submit">Post Comment</button>
							</form>
						</div>
					</div>
					<!--blog grid area start-->
				</div>
				<div class="col-lg-3 col-md-12">
					<div class="blog_sidebar_widget">
						<c:if test="${sessionScope.mLogin }">
							<div class="widget_list">
								<a href="manager_notice_write.do">공지사항 글쓰기</a>
							</div>
						</c:if>
						<div class="widget_list widget_search">
							<div class="widget_title">
								<h3>Search</h3>
							</div>
							<form action="searchNotice.do">
								<input placeholder="제목으로 검색하기" name="search" type="text">
								<button type="submit">search</button>
							</form>
						</div>
						<div class="widget_list comments">
							<div class="widget_title">
								<h3>Recent Comments</h3>
							</div>
							<c:forEach var="re" items="${requestScope.recent3re }">
								<div class="post_wrapper">
									<div class="post_thumb">
										<a href="blog-details.html"><img
											src="assets/img/blog/comment2.png.jpg" alt=""></a>
									</div>
									<div class="post_info">
										<span><a>${re.writer }</a> | </span><a
											>${re.content }</a>
									</div>
								</div>
							</c:forEach>
							<!-- 
							<div class="post_wrapper">
								<div class="post_thumb">
									<a href="blog-details.html"><img
										src="assets/img/blog/comment2.png.jpg" alt=""></a>
								</div>
								<div class="post_info">
									<span><a href="#">admin</a>says:</span><a
										href="blog-details.html">Quisque orci porta...</a>
								</div>
							</div>
							<div class="post_wrapper">
								<div class="post_thumb">
									<a href="blog-details.html"><img
										src="assets/img/blog/comment2.png.jpg" alt=""></a>
								</div>
								<div class="post_info">
									<span><a href="#">demo</a>says:</span><a
										href="blog-details.html">Quisque semper nunc</a>
								</div>
							</div>
							 -->
						</div>
						<div class="widget_list widget_post">
							<div class="widget_title">
								<h3>Recent Posts</h3>
							</div>
							<c:forEach var="no" items="${requestScope.recent3no }">
								<div class="post_wrapper">
									<div class="post_thumb">
										<a href="notice_detail.do?noticeno=${no.noticeno }"><img
											src="${no.photopath }" alt=""></a>
									</div>
									<div class="post_info">
										<h4>
											<a href="notice_detail.do?noticeno=${no.noticeno }">${no.title }</a>
										</h4>
										<span>${no.wdate }</span>
									</div>
								</div>
							</c:forEach>
						</div>
						<!-- 
						<div class="widget_list widget_categories">
							<div class="widget_title">
								<h3>Categories</h3>
							</div>
							<ul>
								<li><a href="#">Audio</a></li>
								<li><a href="#">Company</a></li>
								<li><a href="#">Gallery</a></li>
								<li><a href="#">Image</a></li>
								<li><a href="#">Other</a></li>
								<li><a href="#">Travel</a></li>
							</ul>
						</div>
						<div class="widget_list widget_tag">
							<div class="widget_title">
								<h3>Tag products</h3>
							</div>
							<div class="tag_widget">
								<ul>
									<li><a href="#">asian</a></li>
									<li><a href="#">brown</a></li>
									<li><a href="#">euro</a></li>
								</ul>
							</div>
						</div>
						-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--blog section area end-->
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