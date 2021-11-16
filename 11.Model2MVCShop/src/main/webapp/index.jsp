<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ///////////////////////////// 로그인시 Forward  /////////////////////////////////////// -->
 <c:if test="${ ! empty user }">
 	<jsp:forward page="main.jsp"/>
 </c:if>
 <!-- //////////////////////////////////////////////////////////////////////////////////////////////////// -->


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<title>비트캠프 종각점</title>
	
	<!-- 참조 : http://getbootstrap.com/css/   -->
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
			//==> 비로그인 사용자 알림
			$("a[href='#' ]:contains('로 그 인')").on("click" , function() {
				self.location = "/user/login"
			});
		}); */
		
		//============= 회원가입 화면이동 =============
		$( function() {
			//==> 추가된부분 : "addUser"  Event 연결
			$("a[href='#' ]:contains('회원가입')").on("click" , function() {
				self.location = "/user/addUser"
			});
		});
		
		//============= 로그인 화면이동 =============
		$( function() {
			//==> 추가된부분 : "login"  Event 연결
			$("a[href='#' ]:contains('로 그 인')").on("click" , function() {
				self.location = "/user/login"
			});
		});
		
		//============= 상품검색 화면이동 =============
		$( function() {
			//==> 추가된부분 : "listproduct"  Event 연결
			$("a[href='#' ]:contains('상품검색')").on("click" , function() {
				self.location = "/product/listProduct?menu=search"
			});
		});
		
		//=============  최근본상품 Event  처리 =============
		 $(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			 $("a:contains('최근본상품')").on("click" , function() {
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
        		<strong>비트캠프 종각점</strong>
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
	                 <li><a href="#">회원가입</a></li>
	                 <li><a href="#">로 그 인</a></li>
	           	</ul>
	       </div>
   		
   		</div>
   	</div>
   	<!-- ToolBar End /////////////////////////////////////-->
   	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
		
		<!-- 다단레이아웃  Start /////////////////////////////////////-->
		<div class="row">
	
			<!--  Menu 구성 Start /////////////////////////////////////-->     	
			<div class="col-md-3">
			
				<a href="https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=0&ie=utf8&query=%EB%B9%84%ED%8A%B8%EC%BA%A0%ED%94%84"
				class="thumbnail" target="_blank">
	      			<img src="images/bitcamp.png" style="height:150px;">
	    		</a>
	    		
	    		<div class="text-center">
			  		<a class="btn btn-default btn btn-block" href="#" role="button" style="color: Navy;"><strong>회원가입</strong></a>
			  		<a class="btn btn-primary btn btn-block" href="#" role="button"><strong>로 그 인</strong></a>
			  	</div><br>
		        
		       	<!--  회원관리 목록에 제목 -->
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="glyphicon glyphicon-user"></i> &nbsp;회원
         			</div>
         			<!--  회원관리 아이템 -->
					<ul class="list-group">
						 <li class="list-group-item">
						 	<a href="#"><del>개인정보조회</del></a> <!-- <i class="glyphicon glyphicon-remove-circle"></i> -->
						 </li>
						 <li class="list-group-item">
						 	<a href="#"><del>회원정보조회</del></a> <!-- <i class="glyphicon glyphicon-remove-circle"></i> -->
						 </li>
					</ul>
		        </div>
               
               
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="glyphicon glyphicon-gift"></i> &nbsp;판매상품
         			</div>
					<ul class="list-group">
						 <li class="list-group-item">
						 	<a href="#"><del>판매상품등록</del></a> <!-- <i class="glyphicon glyphicon-remove-circle"></i> -->
						 </li>
						 <li class="list-group-item">
						 	<a href="#"><del>판매상품관리</del></a> <!-- <i class="glyphicon glyphicon-remove-circle"></i> -->
						 </li>
					</ul>
		        </div>
               
               
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="glyphicon glyphicon-shopping-cart"></i> &nbsp;상품구매
	    			</div>
					<ul class="list-group">
						 <li class="list-group-item"><a href="#">상품검색</a></li>
						  <li class="list-group-item">
						  	<a href="#"><del>구매이력조회</del></a> <!-- <i class="glyphicon glyphicon-remove-circle"></i> -->
						  </li>
						 <li class="list-group-item">
						 	<a href="#">최근본상품</a> <!-- <i class="glyphicon glyphicon-remove-circle"></i> -->
						 </li>
					</ul>
				</div>
				
				<p style="text-align:center;">로그인 전에는 검색만 가능합니다!</p>
				
			</div>
			<!--  Menu 구성 end /////////////////////////////////////-->   

	 	 	<!--  Main start /////////////////////////////////////-->   		
	 	 	<div class="col-md-9">
				<div class="jumbotron" style="color: Navy;">
			  		<h1 style="text-align:center;" class="text-success"><strong>비트캠프 종각점</strong></h1><hr/><br/>
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
			  		
			  		<!-- <p style="text-align:right;">로그인 후 사용가능...</p> -->
			  		<!-- <p style="text-align:center;">로그인 전에는 검색만 가능합니다!</p> -->
			  		<hr/><br/>
			  		<p style="font-size:15px;"><center>본 사이트는 비트캠프 종각점 수강생들을 위한 중고거래 플랫폼 입니다.</center></p>
			  		
			  	</div>
	        </div>
	   	 	<!--  Main end /////////////////////////////////////-->   		
	 	 	
		</div>
		<!-- 다단레이아웃  end /////////////////////////////////////-->
		
	</div><br><br><br><br><br>
	<!--  화면구성 div end /////////////////////////////////////-->
	
	<!-- footer -->
	<div class="jumbotron text-center" style="background-color:Dimgray; color:Darkgray;">
	  <h5><strong>비트캠프 ｜ 서울 강남구 강남대로94길 20, 삼오빌딩(5층 ~ 9층)｜ 사업자등록번호 : 214-85-24928</strong></h5>
		<h4 style="color:Lightgray">Copyright (c) 비트캠프 All rights reserved</h4>
	</div>


</body>

</html>