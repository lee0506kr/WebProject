<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setAttribute("contextPath", request.getContextPath());
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인</title>


</head>

<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/main.css">


<body>
	<jsp:include page="/jsp/header.jsp"></jsp:include>

	<!-- --------------------------------------------------------------------------- -->

	<div>
		<img class="mainimg" src="${contextPath}/img/b.jpg">
	</div>

	<!-- 	검색 할 수 있는 곳 -->
	<div id="searchbox">
		<select>
			<option>전체</option>
			<option>지역</option>
		</select> <input type="text"> <input type="button" value="검색">
	</div>


	<!-- 이미지 클릭 하면  -->
	<div id="imgclick">
		<a> <span> <img src="${contextPath}/img/a.jpg" alt="지역">
		</span> <span>지역</span>
		</a>

	</div>

	<div>리스트</div>

	<div>리스트</div>
	<div>리스트</div>
	<div>리스트</div>

	<div>리스트</div>
	<div>리스트</div>



	<!-- --------------------------------------------------------------------------- -->



</body>
</html>