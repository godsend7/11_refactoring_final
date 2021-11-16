<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	<title>��Ʈķ�� ������</title>
	
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
	
	<!--  CSS �߰� : ���ٿ� ȭ�� ������ ���� �ذ� :  �ּ�ó�� ��, �� Ȯ��-->
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

	<!--  �Ʒ��� ������ http://getbootstrap.com/getting-started/  ���� -->	
	<div class="container"  style="background-color:white;">
   	<div class="row">
      <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h1 style="text-align:left;"><img src="/images/think.png" width="7%"><strong> Welcome to JongGak</strong></h1><hr>
        <p style="text-align:right;">
        	�ش� ����Ʈ������ ��Ʈķ�� �������е��� ���� ��� �͵��� �ŷ��� �� �ֽ��ϴ�.</br>
        	���� ������ �ʿ��Ͻôٸ� ������ �Ǹ��Ͻô� ���� ��õ�մϴ�. 
        </p>
        <!-- <p><a class="btn btn-link btn-sm" href="https://www.bitcamp.co.kr/" target="_blank" role="button">Learn more &raquo;</a></p> -->
     </div>
    </div>
    
    <!-- <div class="container"> -->
		<div class="row">
        <div class="col-md-8">
      	<h3>�Ұ� ���� <small>��Ʈķ�� LA��</small></h3>
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
			<h3>�̴��� ���� <small>11��</small></h3>
			<img class="img-circle" src="images/steve-jobs.jpg" width="210" height="140">
          	<h2>��Ƽ�� �⽺</h2>
          	<p><strong>���</strong> | &nbsp;1955-02-24</br>
          	<strong>������</strong> | &nbsp;����ü��</p></br>
          	<p style="text-align:center;"><a class="btn btn-default btn-sm" 
          	href="https://ko.wikipedia.org/wiki/%EC%8A%A4%ED%8B%B0%EB%B8%8C_%EC%9E%A1%EC%8A%A4" role="button" target="_blank">���� ������ &raquo;</a></p>
		</div>
		</div>
	<!-- </div> --></br></br></br>
    
    <!-- <div class="container"> -->
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-5">
          <table class="table table-hover">
		      <thead>
		      <h3>�� ��������� ���</h3>
		        <tr>
		          <th>#</th>
		          <th>�̸�</th>
		          <th>������</th>
		          <th>ȸ��</th>
		        </tr>
		      </thead>
		      <tbody>
		        <tr class="active">
		          <th scope="row">1</th>
		          <td>ȫ�浿</td>
		          <td>����� ������</td>
		          <td>������� ������</td>
		        </tr>
		        <tr>
		          <th scope="row">2</th>
		          <td>�Ϸ� �ӽ�ũ</td>
		          <td>��⵵ ȭ����</td>
		          <td>�ڴ�����</td>
		        </tr>
		        <tr class="active">
		          <th scope="row">3</th>
		          <td>�� ������</td>
		          <td>������ ��ô��</td>
		          <td>�ű���</td>
		        </tr>
		        <tr>
		          <th scope="row">4</th>
		          <td>���巡��</td>
		          <td>��û���� ����</td>
		          <td>��� ���</td>
		        </tr>
		      </tbody>
		    </table>
        </div>
        <div class="col-md-7" style="background-color:Oldlace; padding:15px;">
          <h3>�� ���Ǿȳ� <small>&nbsp;�迵�� ������ JAVA �� ���α׷��� Ǯ���� PART1</small></h3><hr>
          <p>������ | &nbsp;2021-11-01</br>
			�����Ⱓ | &nbsp;2021-11-01 ~ 2021-11-26 (���� ����(19:00~22:00))</br>
			�����ڰ� | &nbsp;�ڹ� �����ڸ� �޲ٴ� ��� ������</p>
          <p style="text-align:right;"><a class="btn btn-default btn-sm" href="https://www.bitcamp.co.kr/class/89?sca=%EB%8B%A8%EA%B8%B0%EA%B3%BC%EC%A0%95" target="_blank" role="button">��û�ϱ� &raquo;</a></p>
       </div>
      </div></br></br></br>
      </div>
      <!-- </div> -->

	<!-- ���� : http://getbootstrap.com/css/   : container part..... -->
	<!-- <div class="container">
        <h3>���������� �̷��� ���ߴ�.</h3>
        <p>"���� ���� ������ ������ ���� �߸� ���� �ð��� �����̴�."</p>
  	 	<h3>"... �庮�� �����ϰ� ������ �ʴ� ������� �ɷ������� �����մϴ�. �庮��. ����� �ƴ϶� '�ٸ�' ������� ���߰� �Ϸ��� �ű� �ִ� ��������."</h3>
         <h3>��������</h3>
         <p>�ູ�� ���� �����.</p>
         <p>�����ϴ� ���� �ϴ� ���� �Ƹ���,</p>
         <p>���� �ϴ� ���� �����ϴ� ���Դϴ�.</p>
  	 </div> -->

</body>

</html>