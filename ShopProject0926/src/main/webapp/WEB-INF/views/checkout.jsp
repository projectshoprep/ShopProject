<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Braga - checkout page</title>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
              
            
            } 

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}


</script>

</head>
<body>
	<!--header area start-->
	<!--offcanvas menu area start-->
		<jsp:include page="template/main/main_header.jsp" flush=""/>
	<!--breadcrumbs area start-->
	<div class="breadcrumbs_area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="breadcrumb_content">
						<h3>Checkout</h3>
						<ul>
							<li><a href="index.html">home</a></li>
							<li>Checkout</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--breadcrumbs area end-->
	<!--Checkout page section-->
	<div class="Checkout_section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="user-actions">
						<h3>
							<i class="fa fa-file-o" aria-hidden="true"></i>Returning
							customer? <a class="Returning" href="#" data-toggle="collapse"
								data-target="#checkout_login" aria-expanded="true">Click
								here to login</a>
						</h3>
						<div id="checkout_login" class="collapse" data-parent="#accordion">
							<div class="checkout_info">
								<p>If you have shopped with us before,please enter your
									details in the boxes below. If you are a new customer please
									proceed to the Billing & Shipping section.</p>
								<form action="#">
									<div class="form_group">
										<label>Username or email <span>*</span></label><input
											type="text">
									</div>
									<div class="form_group">
										<label>Password <span>*</span></label><input type="text">
									</div>
									<div class="form_group group_3 ">
										<button type="submit">Login</button>
										<label for="remember_box"><input id="remember_box"
											type="checkbox"><span>Remember me </span></label>
									</div>
									<a href="#">Lost your password?</a>
								</form>
							</div>
						</div>
					</div>
					<div class="user-actions">
						<h3>
							<i class="fa fa-file-o" aria-hidden="true"></i>Returning
							customer? <a class="Returning" href="#" data-toggle="collapse"
								data-target="#checkout_coupon" aria-expanded="true">Click
								here to enter your code</a>
						</h3>
						<div id="checkout_coupon" class="collapse"
							data-parent="#accordion">
							<div class="checkout_info coupon_info">
								<form action="#">
									<input placeholder="Coupon code" type="text">
									<button type="submit">Apply coupon</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="checkout_form">
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<form action="#">
							<h3>Billing Details</h3>
							<div class="row">
								<div class="col-lg-6 mb-20">
									<label>이름 <span></span></label><input type="text" name="memberName" value="${requestScope.mdto.memberName}">
								</div>
								
								<div class="col-12 mb-20">
									 <li class="member address">
                    <label>우편번호</label>
                    <div class="address_box">
                    <span class="input_area"><input type="text" name="address1" class="postcodify_postcode5 border_bottom" id="sample6_postcode" value="${requestScope.mdto.postno}"></span>
                    <input type="button" id="address_btn" onclick="sample6_execDaumPostcode()" value="우편번호 검색"><br>
                    </div>
                    <label>도로명주소</label>
                    <span class="input_area"><input type="text" name="address2" id="sample6_address" class="postcodify_address border_bottom" value="${requestScope.mdto.address}"></span>
                    <label>상세주소</label>
                    <span class="input_area"><input type="text" name="address3" id="sample6_detailAddress" class="postcodify_details border_bottom" value="${requestScope.mdto.addressdetail}"></span>
                    
                    </li>
								</div>
								<div class="col-lg-6 mb-20">
									<label>Phone<span>*</span></label><input type="text"  value="${requestScope.mdto.memberTelNo}">
								</div>
								<div class="col-lg-6 mb-20">
									<label>Email Address <span>*</span></label><input type="text">
								</div>
								<div class="col-12 mb-20">
									<input id="account" type="checkbox"
										data-target="createp_account" /><label for="account"
										data-toggle="collapse" data-target="#collapseOne"
										aria-controls="collapseOne">Create an account?</label>
									<div id="collapseOne" class="collapse one"
										data-parent="#accordion">
										<div class="card-body1">
											<label>Account password <span>*</span></label><input
												placeholder="password" type="password">
										</div>
									</div>
								</div>
								<div class="col-12 mb-20">
									<input id="address" type="checkbox"
										data-target="createp_account" /><label class="righ_0"
										for="address" data-toggle="collapse"
										data-target="#collapsetwo" aria-controls="collapseOne">Ship
										to a different address?</label>
									<div id="collapsetwo" class="collapse one"
										data-parent="#accordion">
										<div class="row">
											<div class="col-lg-6 mb-20">
												<label>First Name <span>*</span></label><input type="text">
											</div>
											<div class="col-lg-6 mb-20">
												<label>Last Name <span>*</span></label><input type="text">
											</div>
											<div class="col-12 mb-20">
												<label>Company Name</label><input type="text">
											</div>
											<div class="col-12 mb-20">
												<div class="select_form_select">
													<label for="countru_name">country <span>*</span></label><select
														class="select_option" name="cuntry" id="countru_name"><option
															value="2">bangladesh</option>
														<option value="3">Algeria</option>
														<option value="4">Afghanistan</option>
														<option value="5">Ghana</option>
														<option value="6">Albania</option>
														<option value="7">Bahrain</option>
														<option value="8">Colombia</option>
														<option value="9">Dominican Republic</option></select>
												</div>
											</div>
											<div class="col-12 mb-20">
												<label>Street address <span>*</span></label><input
													placeholder="House number and street name" type="text">
											</div>
											<div class="col-12 mb-20">
												<input placeholder="Apartment, suite, unit etc. (optional)"
													type="text">
											</div>
											<div class="col-12 mb-20">
												<label>Town / City <span>*</span></label><input type="text">
											</div>
											<div class="col-12 mb-20">
												<label>State / County <span>*</span></label><input
													type="text">
											</div>
											<div class="col-lg-6 mb-20">
												<label>Phone<span>*</span></label><input type="text">
											</div>
											<div class="col-lg-6">
												<label>Email Address <span>*</span></label><input
													type="text">
											</div>
										</div>
									</div>
								</div>
								<div class="col-12">
									<div class="order-notes">
										<label for="order_note">Order Notes</label>
										<textarea id="order_note"
											placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
									</div>
								</div>
							</div>
						</form>
					</div>
					<div class="col-lg-6 col-md-6">
						<form action="#">
							<h3>Your order</h3>
							<div class="order_table table-responsive">
								<table>
									<thead>
										<tr>
											<th>상품명</th>
											<th>가격</th>
											<th>수량</th>
											<th>합계</th>
										</tr>
									</thead>
									<tbody>
										 <c:forEach items="${requestScope.cartlist }" var="cdto">
										<tr>
											<td>${cdto.productname } <strong>${cdto.colorname } </strong><strong>${cdto.sizekind }</strong></td>
											<td>${cdto.price }</td>
											<td>${cdto.quantity }</td>
											<td>${cdto.quantity * cdto.price }</td>
										</tr>
										</c:forEach>  
										</tbody>
										<tfoot>
										<tr class="order_total">
											<th>총합계</th>
											<td><strong>&#8361;220.00</strong></td>
										</tr>
									</tfoot>
								</table>
							</div>
							<div class="payment_method">
								<div class="order_button">
									<button type="submit">Proceed to PayPal</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Checkout page section end-->
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