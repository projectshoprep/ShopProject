<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <script type="text/javascript">
$ (function(){
	
	
	
	$(".add_cart").click(function() {
		var tag ="";
		tag +="productname=" + $("#productname").text()+"&";
		 tag +="quantity=" + $("#quantity").val()+"&";
		tag +="sizeno=" + $("#sizes").val()+"&";
		tag +="colorno=" + $(".color").val()+"&"; 
		tag +="productno=" + $("#productno").val()+"&"; 
	
			console.log(tag);
			$.ajax({
				url:"insert-cart.do",
				data : tag,
				dataType:"json",
				success:function(result){
					console.log(result);
					$("#form").attr('action','checkcartpop.do');
			  		  $("#form").append($('<input type="hidden" class="t1" value="' + result.colorname + '" name=colorname>')); 
			  		  $("#form").append($('<input type="hidden" class="t1" value="' + result.productno+ '" name=productno>')); 
			  		  $("#form").append($('<input type="hidden" class="t1" value="' + result.productname+ '" name=productname>')); 
			  		  $("#form").append($('<input type="hidden" class="t1" value="' + result.price+ '" name=price>')); 
			  		  $("#form").append($('<input type="hidden" class="t1" value="' + result.sizekind+ '" name=sizekind>')); 
			  		  $("#form").append($('<input type="hidden" class="t1" value="' + result.quantity+ '" name=quantity>')); 
			  		  $("#form").append($('<input type="hidden" class="t1" value="' + result.memberid+ '" name=memberid>')); 
			  	  	window.open('','POP',"width=500, height=800, resizable=no, scrollbars=no, status=no;"); 
			  	  	$("#form").submit();
					
					}
				});
			});
	});




</script> 

<style>
	.choosecolor{
		border: 2px solid red;
		color : green;
		background : green;
		
	
	}

</style>

</head>


<body>
<div class="product_details variable_product mb-80">
		<div class="container">
			<div class="row">
				<div class="col-lg-5 col-md-5">
					<div class="product-details-tab">
						<div id="img-1" class="zoomWrapper single-zoom">
							<a href="#"><img id="zoom1"
								src="assets/img/product/productbig4.jpg"
								data-zoom-image="assets/img/product/productbig1.jpg" alt="big-1"></a>
						</div>
						<div class="single-zoom-thumb">
							<ul class="s-tab-zoom owl-carousel single-product-active"
								id="gallery_01">
								<li><a href="#" class="elevatezoom-gallery active"
									data-update="" data-image="assets/img/product/productbig4.jpg"
									data-zoom-image="assets/img/product/productbig4.jpg"><img
										src="assets/img/product/productbig4.jpg" alt="zo-th-1" /></a></li>
								<li><a href="#" class="elevatezoom-gallery active"
									data-update="" data-image="assets/img/product/productbig1.jpg"
									data-zoom-image="assets/img/product/productbig1.jpg"><img
										src="assets/img/product/productbig1.jpg" alt="zo-th-1" /></a></li>
								<li><a href="#" class="elevatezoom-gallery active"
									data-update="" data-image="assets/img/product/productbig2.jpg"
									data-zoom-image="assets/img/product/productbig2.jpg"><img
										src="assets/img/product/productbig2.jpg" alt="zo-th-1" /></a></li>
								<li><a href="#" class="elevatezoom-gallery active"
									data-update="" data-image="assets/img/product/productbig3.jpg"
									data-zoom-image="assets/img/product/productbig3.jpg"><img
										src="assets/img/product/productbig3.jpg" alt="zo-th-1" /></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-7 col-md-7">
					<div class="product_d_right">
						<div class="productd_title_nav">
							<h1>
								<a href="#" id="productname">${requestScope.productdto.productname }</a>
								<input type="hidden" id="productno" value="${requestScope.productdto.productno }">
							</h1>
						</div>
						<div class=" product_ratting">
							<ul>
								<li><a href="#"><i class="ion-android-star"></i></a></li>
								<li><a href="#"><i class="ion-android-star"></i></a></li>
								<li><a href="#"><i class="ion-android-star"></i></a></li>
								<li><a href="#"><i class="ion-android-star"></i></a></li>
								<li><a href="#"><i class="ion-android-star"></i></a></li>
								<li class="review"><a href="#">(customer review) </a></li>
							</ul>
						</div>
						<div class="price_box">
							<span class="current_price">${requestScope.productdto.price }</span>
						</div>
						<div class="product_desc">
							<p>eget velit. Donec ac tempus ante. Fusce ultricies massa
								massa. Fusce aliquam,purus eget sagittis vulputate,sapien libero
								hendrerit est,sed commodo augue nisi non neque. Lorem ipsum
								dolor sit amet,consectetur adipiscing elit. Sed tempor,lorem et
								placerat vestibulum,metus nisi posuere nisl,in</p>
						</div>
						<div class="product_variant size">
							<label>color</label><select class="select_option color" id="color2"
								name="produc_color2"><option selected value="0">color
									in option</option>
								<c:forEach items="${requestScope.colorlist}" var="colorlist">
									<option value="${colorlist.colorno}">${colorlist.colorname}</option>
								</c:forEach>
							</select>
						</div>
						<div class="product_variant size">
							<label>size</label><select class="select_option" id="sizes"
								name="produc_color2"><option selected value="0
								">size
									in option</option>
								<c:forEach items="${requestScope.sizeslist}" var="sizeslist">
									<option value="${sizeslist.sizeno}">${sizeslist.sizekind}</option>
								</c:forEach>
							</select>
						</div>
						<div class="product_variant quantity">
							<label>quantity</label><input min="1" max="100" value="1"
								type="number" id="quantity">
							<button class="button add_cart" id="add_cart" type="button">add
								to cart</button>
						</div>
						<div class=" product_d_action">
							<ul>
								<li><a href="#" title="Add to wishlist">+Add to
										Wishlist</a></li>
								<li><a href="#" title="Add to wishlist">+Compare</a></li>
							</ul>
						</div>
						<div class="product_d_meta">
							<span>SKU:N/A</span><span>Category:<a href="#">Clothings</a></span><span>Tags:<a
								href="#">Creams</a><a href="#">Lotions</a></span>
						</div>
						<div class="priduct_social">
							<ul>
								<li><a class="facebook" href="#" title="facebook"><i
										class="fa fa-facebook"></i>Like</a></li>
								<li><a class="twitter" href="#" title="twitter"><i
										class="fa fa-twitter"></i>tweet</a></li>
								<li><a class="pinterest" href="#" title="pinterest"><i
										class="fa fa-pinterest"></i>save</a></li>
								<li><a class="google-plus" href="#" title="google +"><i
										class="fa fa-google-plus"></i>share</a></li>
								<li><a class="linkedin" href="#" title="linkedin"><i
										class="fa fa-linkedin"></i>linked</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<form id='form' method='post' target=POP>
	</form>
</body>
</html>