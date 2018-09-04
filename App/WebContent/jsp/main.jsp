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


<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(37.250943, 127.028344),
    zoom:5,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>



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
	<h1 id="searchtitle">지역 검색</h1>
	<div class="box">
		<div class="container-1">
			<span class="icon"><i class="fa fa-search"></i></span> 
			<input type="search" id="search" placeholder="Search..." />
		</div>
	</div>


	
	<!-- 이미지 클릭 하면  -->
<div id="container">



<!-- 이미지 선택하면 이동 -->
<br>
<h1 id="firsttitle">먹놀자 둘러보기(인기순)</h1>

		<div id="menu">
			<img alt="test" src="${contextPath}/img/a.jpg" class="menu" >&nbsp;&nbsp;
			<img alt="test" src="${contextPath}/img/a.jpg" class="menu" >&nbsp;&nbsp;
			<img alt="test" src="${contextPath}/img/a.jpg" class="menu" >&nbsp;&nbsp;
			<img alt="test" src="${contextPath}/img/a.jpg" class="menu" >&nbsp;&nbsp;
			<img alt="test" src="${contextPath}/img/a.jpg" class="menu" >&nbsp;&nbsp;
			<img alt="test" src="${contextPath}/img/a.jpg" class="menu" >
			
		</div>
		<!-- 지도 -->
<div id="googleMap" style="width:500px;height:380px;margin:0 auto;"></div>


   
</div>


	<!-- --------------------------------------------------------------------------- -->



</body>
</html>