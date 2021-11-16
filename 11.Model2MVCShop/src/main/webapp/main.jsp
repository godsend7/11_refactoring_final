<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	<title>비트캠프 종각점</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--   jQuery , Bootstrap CDN  -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	
	<!--  CSS 추가 : 툴바에 화면 가리는 현상 해결 :  주석처리 전, 후 확인-->
	<style>
	  body {
            padding-top : 80px;
            background-image : url(../images/shine.gif);
            background-size : cover;
        }
    </style>
   	
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	 	
	
</head>
	
<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->

	<!--  아래의 내용은 http://getbootstrap.com/getting-started/  참조 -->	
	<div class="container"  style="background-color:white;">
   	<div class="row">
      <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h1 style="text-align:left;"><img src="/images/think.png" width="7%"><strong> Welcome to JongGak</strong></h1><hr>
        <p style="text-align:right;">
        	해당 사이트에서는 비트캠프 수강생분들이 가진 모든 것들을 거래할 수 있습니다.</br>
        	현재 급전이 필요하시다면 본인을 판매하시는 것을 추천합니다. 
        </p>
        <!-- <p><a class="btn btn-link btn-sm" href="https://www.bitcamp.co.kr/" target="_blank" role="button">Learn more &raquo;</a></p> -->
     </div>
    </div>
    
    <!-- <div class="container"> -->
		<div class="row">
        <div class="col-md-8">
      	<h3>소개 영상 <small>비트캠프 LA점</small></h3>
			<div class="video">
			    <div class="video-container">
			      <iframe width="100%" height="316" 
			      src="https://www.youtube.com/embed/L14nXRxJILg?controls=0&autoplay=1&mute=1" frameborder="0" 
			      allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
			      </iframe>
			    </div>
			</div>
		</div>
		<div class="col-md-4" style="text-align:center;">
			<h3>이달의 강사 <small>11월</small></h3>
			<img class="img-circle" src="images/steve-jobs.jpg" width="210" height="140">
          	<h2>스티브 잡스</h2>
          	<p><strong>출생</strong> | &nbsp;1955-02-24</br>
          	<strong>담당과목</strong> | &nbsp;리듬체조</p></br>
          	<p style="text-align:center;"><a class="btn btn-default btn-sm" 
          	href="https://ko.wikipedia.org/wiki/%EC%8A%A4%ED%8B%B0%EB%B8%8C_%EC%9E%A1%EC%8A%A4" role="button" target="_blank">강사 프로필 &raquo;</a></p>
		</div>
		</div>
	<!-- </div> --></br></br></br>
    
    <!-- <div class="container"> -->
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-5">
          <table class="table table-hover">
		      <thead>
		      <h3>⊙ 조기취업자 명단</h3>
		        <tr>
		          <th>#</th>
		          <th>이름</th>
		          <th>거주지</th>
		          <th>회사</th>
		        </tr>
		      </thead>
		      <tbody>
		        <tr class="active">
		          <th scope="row">1</th>
		          <td>홍길동</td>
		          <td>서울시 마포구</td>
		          <td>서브웨이 종각점</td>
		        </tr>
		        <tr>
		          <th scope="row">2</th>
		          <td>일론 머스크</td>
		          <td>경기도 화성시</td>
		          <td>코다차야</td>
		        </tr>
		        <tr class="active">
		          <th scope="row">3</th>
		          <td>빌 게이츠</td>
		          <td>강원도 삼척시</td>
		          <td>거구장</td>
		        </tr>
		        <tr>
		          <th scope="row">4</th>
		          <td>지드래곤</td>
		          <td>충청남도 계룡시</td>
		          <td>얌샘 김밥</td>
		        </tr>
		      </tbody>
		    </table>
        </div>
        <div class="col-md-7" style="background-color:Oldlace; padding:15px;">
          <h3>⊙ 강의안내 <small>&nbsp;김영진 강사의 JAVA 웹 프로그래밍 풀스택 PART1</small></h3><hr>
          <p>개강일 | &nbsp;2021-11-01</br>
			교육기간 | &nbsp;2021-11-01 ~ 2021-11-26 (평일 저녁(19:00~22:00))</br>
			지원자격 | &nbsp;자바 개발자를 꿈꾸는 사람 누구나</p>
          <p style="text-align:right;"><a class="btn btn-default btn-sm" href="https://www.bitcamp.co.kr/class/89?sca=%EB%8B%A8%EA%B8%B0%EA%B3%BC%EC%A0%95" target="_blank" role="button">신청하기 &raquo;</a></p>
       </div>
      </div></br></br></br>
      </div>
      <!-- </div> -->

	<!-- 참조 : http://getbootstrap.com/css/   : container part..... -->
	<!-- <div class="container">
        <h3>나폴레옹은 이렇게 말했다.</h3>
        <p>"오늘 나의 불행은 언젠가 내가 잘못 보낸 시간의 보복이다."</p>
  	 	<h3>"... 장벽은 절실하게 원하지 않는 사람들을 걸러내려고 존재합니다. 장벽은. 당신이 아니라 '다른' 사람들을 멈추게 하려고 거기 있는 것이지요."</h3>
         <h3>혜광스님</h3>
         <p>행복한 삶의 비결은.</p>
         <p>좋아하는 일을 하는 것이 아리라,</p>
         <p>지금 하는 일을 좋아하는 것입니다.</p>
  	 </div> -->

</body>

</html>