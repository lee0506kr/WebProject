<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ///////////////////////////// �α��ν� Forward  /////////////////////////////////////// -->
 <c:if test="${ ! empty user }">
 	<jsp:forward page="main.jsp"/>
 </c:if>
 <!-- //////////////////////////////////////////////////////////////////////////////////////////////////// -->


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- ���� : http://getbootstrap.com/css/   -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!--  /////////////////////// �߰��� CSS , js ///////////////////////////////// -->
	<!-- Bootstrap Dropdown Hover CSS -->
    <link href="../css/animate.min.css" rel="stylesheet">
    <link href="../css/bootstrap-dropdownhover.min.css" rel="stylesheet">
    
     <!-- Bootstrap Dropdown Hover JS -->
    <script src="../javascript/bootstrap-dropdownhover.min.js"></script>
	<!--  //////////////////////////////////////////////////////////////////////////////////// -->
	
	<!--  ////////////////////// CSS////////////////////////////////////////////////////// -->
	<!--  CSS �߰� : ���ٿ� ȭ�� ������ ���� �ذ� :  �ּ�ó�� ��, �� Ȯ��-->
		<style>
	        body {
	            padding-top : 100px;
	        }
	                
    	</style>
   	
   	<!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
		
		//============= ȸ�������� ȭ���̵� =============
		$( function() {
			$("a[href='#' ]:contains('Register')").on("click" , function() {
				self.location = "/user/addUser"
			});
		});
		
		//============= �α��� ȭ���̵� =============
		$( function() {
			$("a[href='#' ]:contains('Log in')").on("click" , function() {
				self.location = "/user/loginView.jsp"
			});
		});
		
		//============= ������ ����� ȭ�� �̵� ===========
		$( function() {
			$("a[href='#' ]:contains('Mypage')").on("click" , function() {
				self.location = "/user/getUser"
			});
		});
		
	</script>	
	
</head>

<body>


	<!-- ToolBar Start /////////////////////////////////////-->
	<div class="navbar  navbar-inverse navbar-fixed-top">
		
        <div class="container">
        
        	<a class="navbar-brand" href="/index.jsp">JUAN SHOP</a>
			
			<!-- toolBar Button Start //////////////////////// -->
			<div class="navbar-header">
			    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#target">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			    </button>
			</div>
			<!-- toolBar Button End //////////////////////// -->
			
			<!-- //////////////////////////// dropdown�� ���ؼ� ���� �κ� ////////////////////////////////////// -->
			<div class="collapse navbar-collapse"  id="target"
						data-hover="dropdown" 
  						data-animations="fadeInDownNew fadeInRightNew fadeInUpNew fadeInLeftNew">
  				
  				<!-- Tool Bar �� �پ��ϰ� ����ϸ�.... -->
	                <ul class="nav navbar-nav">
	                
		                <!--  DrowDown ��� -->
		                <li class="dropdown">
	                        <a  href="#" class="dropdown-toggle" data-toggle="dropdown">
	                            <span>JUAN SHOP</span>
	                            <span class="caret"></span>
	                        </a>
	                        <ul class="dropdown-menu">
	                            <li><a href="#">Web UI</a></li>
	                            <li><a href="#">W3C</a></li>
	                            <li class="divider"></li>
	                            <li><a href="#">Static Contents</a></li>
	                        </ul>
	                    </li>
	                
	                    <li><a href="#">ȸ��Ұ�</a></li>
	                    <li><a href="#">���翵��</a></li>
	                    
	                    <!--  /////////////////////// DropDown ���ο� �ٽ� DropDown///////////////////////////////// -->
	                    <!--  DropDown ��� -->
		                <li class="dropdown">
	                        <a  href="#" class="dropdown-toggle" data-toggle="dropdown">
	                            <span>�ɾ�±�</span>
	                            <span class="caret"></span>
	                        </a>
	                        <ul class="dropdown-menu">
	                            <li><a href="#">Web UI</a></li>
	                            <li><a href="#">W3C</a></li>
	                            
	                            <!--  DrowDown ��� -->
				                <li class="dropdown">
			                        <a  href="#" class="dropdown-toggle" data-toggle="dropdown">
			                            <span>ȸ��濵</span>
			                            <span class="caret"></span>
			                        </a>
			                        <ul class="dropdown-menu">
			                            <li><a href="#">Web UI</a></li>
			                            <li><a href="#">W3C</a></li>
			                            <li class="divider"></li>
			                            <li><a href="#">Static Contents</a></li>
			                        </ul>
			                    </li>
	                            
	                            <li class="divider"></li>
	                            <li><a href="#">Static Contents</a></li>
	                        </ul>
	                    </li>
	                    <!--  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
	                    
	                </ul>
	                
	                <ul class="nav navbar-nav navbar-right">
	                    <li><a href="#">Register</a></li>
	                    <li><a href="#">Log in</a></li>
	                    <li><a href="#">Mypage</a></li>
	               	</ul>
	               	
				</div>	       
	       
    		</div>
    	</div>
   	<!-- ToolBar End /////////////////////////////////////-->
   	
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
		
		<!-- �ٴܷ��̾ƿ�  Start /////////////////////////////////////-->
		<div class="row">
	
			<!--  Menu ���� Start /////////////////////////////////////-->     	
			<div class="col-md-2">
		        
		       	<!--  ȸ������ ��Ͽ� ���� -->
				<div class="panel panel-primary">
					<div class="panel-heading">
						<i class="glyphicon glyphicon-heart"></i> ȸ������
         			</div>
         			<!--  ȸ������ ������ -->
					<ul class="list-group">
						 <li class="list-group-item">
						 	<a href="#">����������ȸ</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
						 <li class="list-group-item">
						 	<a href="#">ȸ��������ȸ</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
					</ul>
		        </div>
               
               
				<div class="panel panel-primary">
					<div class="panel-heading">
							<i class="glyphicon glyphicon-briefcase"></i> �ǸŻ�ǰ����
         			</div>
					<ul class="list-group">
						 <li class="list-group-item">
						 	<a href="#">�ǸŻ�ǰ���</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
						 <li class="list-group-item">
						 	<a href="#">�ǸŻ�ǰ����</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
					</ul>
		        </div>
               
               
				<div class="panel panel-primary">
					<div class="panel-heading">
							<i class="glyphicon glyphicon-shopping-cart"></i> ��ǰ����
	    			</div>
					<ul class="list-group">
						 <li class="list-group-item"><a href="#">��ǰ�˻�</a></li>
						  <li class="list-group-item">
						  	<a href="#">�����̷���ȸ</a> <i class="glyphicon glyphicon-ban-circle"></i>
						  </li>
						 <li class="list-group-item">
						 	<a href="#">�ֱٺ���ǰ</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
					</ul>
				</div>
				
			</div>
			<!--  Menu ���� end /////////////////////////////////////-->   

	 	 	<!--  Main start /////////////////////////////////////-->   		
	 	 	<div class="col-md-10">
				<div class="jumbotron">
			  		<h1>Model2 MVC Shop</h1>
			  		<p>�α��� �� ��밡��...</p>
			  		<p>�α��� �� �˻��� �����մϴ�.</p>
			  		<p>ȸ������ �ϼ���.</p>
			  		
			  		<div class="text-center">
			  			<a class="btn btn-info btn-lg" href="#" role="button">ȸ������</a>
			  			<a class="btn btn-info btn-lg" href="#" role="button">�� �� ��</a>
			  		</div>
			  	
			  	</div>
	        </div>
	   	 	<!--  Main end /////////////////////////////////////-->   		
	 	 	
		</div>
		<!-- �ٴܷ��̾ƿ�  end /////////////////////////////////////-->
		
	</div>
	<!--  ȭ�鱸�� div end /////////////////////////////////////-->

</body>

</html>