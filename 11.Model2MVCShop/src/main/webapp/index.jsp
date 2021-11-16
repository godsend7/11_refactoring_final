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
	
	<title>��Ʈķ�� ������</title>
	
	<!-- ���� : http://getbootstrap.com/css/   -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style></style>
   	
   	<!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
		/* $( function() {
			//==> ��α��� ����� �˸�
			$("a[href='#' ]:contains('�� �� ��')").on("click" , function() {
				self.location = "/user/login"
			});
		}); */
		
		//============= ȸ������ ȭ���̵� =============
		$( function() {
			//==> �߰��Ⱥκ� : "addUser"  Event ����
			$("a[href='#' ]:contains('ȸ������')").on("click" , function() {
				self.location = "/user/addUser"
			});
		});
		
		//============= �α��� ȭ���̵� =============
		$( function() {
			//==> �߰��Ⱥκ� : "login"  Event ����
			$("a[href='#' ]:contains('�� �� ��')").on("click" , function() {
				self.location = "/user/login"
			});
		});
		
		//============= ��ǰ�˻� ȭ���̵� =============
		$( function() {
			//==> �߰��Ⱥκ� : "listproduct"  Event ����
			$("a[href='#' ]:contains('��ǰ�˻�')").on("click" , function() {
				self.location = "/product/listProduct?menu=search"
			});
		});
		
		//=============  �ֱٺ���ǰ Event  ó�� =============
		 $(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			 $("a:contains('�ֱٺ���ǰ')").on("click" , function() {
				popWin 
				= window.open("../history.jsp",
								"popWin", 
								"left=300,top=200,width=450,height=450,marginwidth=0,marginheight=0,"+
								"scrollbars=no,scrolling=no,menubar=no,resizable=no");
			});
		});	
		
	</script>	
	
</head>

<body style="background-color:lightgray;">

	<!-- ToolBar Start /////////////////////////////////////-->
	<div class="navbar navbar-inverse navbar-default">
		
        <div class="container">
        
        	<a class="navbar-brand" href="#">
        		<strong>��Ʈķ�� ������</strong>
        	</a>
			
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
			
			<div class="collapse navbar-collapse"  id="target">
	             <ul class="nav navbar-nav navbar-right">
	                 <li><a href="#">ȸ������</a></li>
	                 <li><a href="#">�� �� ��</a></li>
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
			<div class="col-md-3">
			
				<a href="https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=0&ie=utf8&query=%EB%B9%84%ED%8A%B8%EC%BA%A0%ED%94%84"
				class="thumbnail" target="_blank">
	      			<img src="images/bitcamp.png" style="height:150px;">
	    		</a>
	    		
	    		<div class="text-center">
			  		<a class="btn btn-default btn btn-block" href="#" role="button" style="color: Navy;"><strong>ȸ������</strong></a>
			  		<a class="btn btn-primary btn btn-block" href="#" role="button"><strong>�� �� ��</strong></a>
			  	</div><br>
		        
		       	<!--  ȸ������ ��Ͽ� ���� -->
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="glyphicon glyphicon-user"></i> &nbsp;ȸ��
         			</div>
         			<!--  ȸ������ ������ -->
					<ul class="list-group">
						 <li class="list-group-item">
						 	<a href="#"><del>����������ȸ</del></a> <!-- <i class="glyphicon glyphicon-remove-circle"></i> -->
						 </li>
						 <li class="list-group-item">
						 	<a href="#"><del>ȸ��������ȸ</del></a> <!-- <i class="glyphicon glyphicon-remove-circle"></i> -->
						 </li>
					</ul>
		        </div>
               
               
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="glyphicon glyphicon-gift"></i> &nbsp;�ǸŻ�ǰ
         			</div>
					<ul class="list-group">
						 <li class="list-group-item">
						 	<a href="#"><del>�ǸŻ�ǰ���</del></a> <!-- <i class="glyphicon glyphicon-remove-circle"></i> -->
						 </li>
						 <li class="list-group-item">
						 	<a href="#"><del>�ǸŻ�ǰ����</del></a> <!-- <i class="glyphicon glyphicon-remove-circle"></i> -->
						 </li>
					</ul>
		        </div>
               
               
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="glyphicon glyphicon-shopping-cart"></i> &nbsp;��ǰ����
	    			</div>
					<ul class="list-group">
						 <li class="list-group-item"><a href="#">��ǰ�˻�</a></li>
						  <li class="list-group-item">
						  	<a href="#"><del>�����̷���ȸ</del></a> <!-- <i class="glyphicon glyphicon-remove-circle"></i> -->
						  </li>
						 <li class="list-group-item">
						 	<a href="#">�ֱٺ���ǰ</a> <!-- <i class="glyphicon glyphicon-remove-circle"></i> -->
						 </li>
					</ul>
				</div>
				
				<p style="text-align:center;">�α��� ������ �˻��� �����մϴ�!</p>
				
			</div>
			<!--  Menu ���� end /////////////////////////////////////-->   

	 	 	<!--  Main start /////////////////////////////////////-->   		
	 	 	<div class="col-md-9">
				<div class="jumbotron" style="color: Navy;">
			  		<h1 style="text-align:center;" class="text-success"><strong>��Ʈķ�� ������</strong></h1><hr/><br/>
			  		<!-- <div style="text-align : center;">
			  			<img src="images/bitcamp.png" class="img-circle">
			  		</div><br/> -->
			  		
			  		<div id="myCarousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
							<li data-target="#myCarousel" data-slide-to="3"></li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
								<img src="images/index-pic1.jpg">
							</div>
							<div class="item">
								<img src="images/index-pic2.jpg">
							</div>
							<div class="item">
								<img src="images/index-pic3.jpg">
							</div>
						</div>
						<a class="left carousel-control" href="#myCarousel" data-slide="prev">
							<span class="glyphicon glyphicon-chevron-left"></span>
						</a>
						<a class="right carousel-control" href="#myCarousel" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right"></span>
						</a>
					</div><br><br>
			  		
			  		<!-- <p style="text-align:right;">�α��� �� ��밡��...</p> -->
			  		<!-- <p style="text-align:center;">�α��� ������ �˻��� �����մϴ�!</p> -->
			  		<hr/><br/>
			  		<p style="font-size:15px;"><center>�� ����Ʈ�� ��Ʈķ�� ������ ���������� ���� �߰�ŷ� �÷��� �Դϴ�.</center></p>
			  		
			  	</div>
	        </div>
	   	 	<!--  Main end /////////////////////////////////////-->   		
	 	 	
		</div>
		<!-- �ٴܷ��̾ƿ�  end /////////////////////////////////////-->
		
	</div><br><br><br><br><br>
	<!--  ȭ�鱸�� div end /////////////////////////////////////-->
	
	<!-- footer -->
	<div class="jumbotron text-center" style="background-color:Dimgray; color:Darkgray;">
	  <h5><strong>��Ʈķ�� �� ���� ������ �������94�� 20, �������(5�� ~ 9��)�� ����ڵ�Ϲ�ȣ : 214-85-24928</strong></h5>
		<h4 style="color:Lightgray">Copyright (c) ��Ʈķ�� All rights reserved</h4>
	</div>


</body>

</html>