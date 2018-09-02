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


<style type="text/css">
.mySlides {
	display: none;
}
</style>
</head>

<link rel="stylesheet" type="text/css" href="${contextPath}/css/main.css">


<body>
	<jsp:include page="/jsp/header.jsp"></jsp:include>
	<!-- --------------------------------------------------------------------------- -->
		<br>
		<!-- 슬라이드 -->
		<div id="slider">
			<div >
				<img class="mySlides" src="${contextPath}/img/a.jpg"> 
				<img class="mySlides"src="${contextPath}/img/b.jpg"> 
			</div>

		</div>

		 <script>
			var myIndex = 0;
			carousel();

			function carousel() {
				var i;
				var x = document.getElementsByClassName("mySlides");
				for (i = 0; i < x.length; i++) {
					x[i].style.display = "none";
				}
				myIndex++;
				if (myIndex > x.length) {
					myIndex = 1
				}
				x[myIndex - 1].style.display = "block";
				setTimeout(carousel, 2000); // Change image every 2 seconds
			}
		</script>

		<!-- 슬라이드 -->

		<div>
		
		</div>











	<!-- --------------------------------------------------------------------------- -->



</body>
</html>