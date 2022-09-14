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
	console.log("sfdds");
</script>
	<%
		request.setCharacterEncoding("utf-8");
	String colorname = request.getParameter("colorname");
	String productno = request.getParameter("productno");
	String sizekind = request.getParameter("sizekind");
	int price = Integer.parseInt(request.getParameter("price"));
	int quantity = Integer.parseInt(request.getParameter("quantity"));
	String memberid = request.getParameter("memberid");
	String productname = request.getParameter("productname");
	
	%>
</head>
<body>
8451256258
	<p><%=colorname%>9852956</p>
	<p><%=productno%>sdfs</p>
	<p><%=sizekind%>sef</p>
	<p><%=price%></p>
	<p><%=quantity%></p>
	<p><%=memberid%></p>
	<p><%=productname%></p>
</body>
</html>