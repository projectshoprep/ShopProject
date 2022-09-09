<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
	.menu_title{
		border-bottom : 1px solid #b7b7b7;
		width: 75%;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		var total_price = 0;
		$.ajax({
			url : 'cart_list.do',
			dataType : 'json',
			success : function(r){
				console.log(r.list);
				var arr = r.list;
				var data = "";
				for(i=0;i<arr.length;i++){
					data += "<div class='cart_item'>";
					data += "<div class='cart_img'>";
					data += "<a href='#'><img src='"+arr[i].photopath+"' alt=''></a></div>"
					data += "<div class='cart_info'>";
					data += "<a href='#'>"+arr[i].productname+"</a>"
					data += "<p>"+arr[i].orderquantity+" x";
					data += "<span> &#8361;"+arr[i].price+"</span></p></div>";
					data += "<div class='cart_remove'>";
					data += "<a href='#'><i class='ion-ios-close-outline'></i></a></div></div>";
					total_price += arr[i].price*arr[i].orderquantity;
				}
				$('.cart_gallery').append(data);
				$('.price').html('&#8361;'+total_price);
			}
		});
		
	})
</script>
<header>
		<div class="main_header sticky-header">
			<div class="container">
				<div class="row align-items-center">
					<div
						class="col-lg-2 col-md-4 offset-md-4 offset-lg-0 col-5 offset-3 col-sm-5">
						<div class="logo">
							<a href="/"><img src="assets/img/logo/logo.png"
								alt=""></a>
						</div>
					</div>
					<div class="col-lg-8">
						<!--main menu start-->
						<div class="main_menu menu_position">
							<nav>
								<ul>
									<li><a href="/">HOME</a>
									</li>
									<li class="mega_items"><a style="cursor : pointer;">shop<i class="fa fa-angle-down"></i></a>
										<div class="mega_menu">
											<ul class="mega_menu_inner">
												<li>
													<p class="menu_title">FOCUS</p>
													<ul>
														<li>
															<a href="shop-fullwidth.html">NEW</a>
														</li>
														<li>
															<a href="shop-fullwidth-list.html">BEST</a>
														</li>
													</ul>
												</li>
												<li>
													<p class="menu_title">CATEGORY</p>
													<ul>
														<c:forEach var="categorylist" items="${requestScope.clist }" varStatus="status">
															<li><a href="category_detail_view.do?categoryno=${categorylist.categoryno}">${categorylist.categoryname} </a></li>
														</c:forEach>
													</ul>
												</li>
												<li>
												<p></p> <br>
												<ul>
												
												</ul>
											</li>
											</ul>
										</div>
									</li>
									<li><a style="cursor : pointer;">community<i
											class="fa fa-angle-down"></i></a>
									<ul class="sub_menu pages">
											<li><a href="blog-details.html">공지사항</a></li>
											<li><a href="blog-fullwidth.html">문의하기</a></li>
											<li><a href="blog-sidebar.html">리뷰</a></li>
											<li><a href="blog-sidebar.html">이벤트 페이지</a></li>
										</ul></li>
									<li><a style="cursor : pointer;">About us<i class="fa fa-angle-down"></i></a>
										<ul class="sub_menu pages">
										<li><a href="about-page.do">쇼핑몰 소개</a></li>
										<li><a href="contact.do">오시는 길</a></li>
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
							<c:choose>
								<c:when test="${sessionScope.login }">
									<div class="language_currency header_account_list ">
										<a href="#"><span class="pe-7s-user"></span></a>
										<ul class="dropdown_currency">
											<li><a href="my-account.do">회원정보</a></li>
											<li><a href="cart.html">QNA</a></li>
											<li><a href="cart.html">쿠폰함</a></li>
											<li><a href="cart.html">1:1 채팅</a></li>
											<li><a href="logout.do">Log out</a></li>
										</ul>
									</div>
								</c:when>
								<c:otherwise>
									<div class="language_currency header_account_list ">
										<a href="#"><span class="pe-7s-user"></span></a>
										<ul class="dropdown_currency">
											<li><a href="login-page.do">Log in</a></li>
										</ul>
									</div>
								</c:otherwise>
							</c:choose>
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
				<!-- photopath, productname, price, orderquantity -->
				<!-- 예시 지우지 않고 남겨둠 
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
				 -->
				 <script>
				 	$('.cart_info span').val()
				 </script>
			</div>
			<div class="mini_cart_table">
				<div class="cart_table_border">
					<div class="cart_total mt-10">
						<span>total:</span><span class="price"></span>
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