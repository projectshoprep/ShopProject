<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pop_title</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <script>
$(function(){
	var count = 3;
	$("#plus").click(function(){
		if(count == 5) return;
		count++;
		$("#file_form1").append("<p><input type='file' name='file'></p>");
	});
	$("#minus").click(function(){
		if(count == 1) return;
			$(this).parent().children("p").last().remove();
		count--;
	});
});
</script> 
</head>
<body>
		<form id="file_form" action="insertproduct.do" method="post" enctype="multipart/form-data">
		<p>제품 명<input type="text" name="productname" value=""placeholder="재품명"></p>
		<p>제품 카테고리<input type="text" name="category" value=""placeholder="카테고리"></p>
		<p>제품 사이즈<input type="text" name="sizename" value=""placeholder="사이즈"></p>
		<p>제품 컬러<input type="text" name="color" value=""placeholder="컬러"></p>
		<p>제품 단가<input type="text" name="cost" value=""placeholder="단가()"></p>
		<p>제품 가격<input type="text" name="price" value=""placeholder="가격()"></p>
		<p>제품 수량<input type="text" name="productstock" value=""placeholder="수량()"></p>
		<p>입고일<input type="text" name="receivingdate" value=""placeholder="입고일"></p>
		<p>입고량<input type="text" name="inquantity" value=""placeholder="입고일"></p>
		<button>업로드</button>
	 	<div id="file_form1">
						<button type="button" id="plus">+</button> <button type="button" id="minus">-</button>
						<p><input type="file" name="file"> </p>
						<p><input type="file" name="file"></p>
						<p><input type="file" name="file"></p>
		</div> 
	</form>
</body>
</html>