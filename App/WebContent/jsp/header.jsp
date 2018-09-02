<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setAttribute("contextPath", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Header</title>
</head>
<link rel="stylesheet" type="text/css" href="${contextPath}/css/header.css">
<body>
	<div class="navber">
		 <div class="container">
		
		<a class="logo" href="/index.jsp">Test Logo</a>
		
		<ul class="menu">
			<li><a>지역</a></li>
			<li><a>지역</a></li>
			<li><a>지역</a></li>	
		</ul>
		
		
		<ul class="login">
			<li><a>로그인</a></li>
			<li><a>회원가입</a></li>
		</ul>
			
		</div>
	
	
	
	</div>




</body>
</html>