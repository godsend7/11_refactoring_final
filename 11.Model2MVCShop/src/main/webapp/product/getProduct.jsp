<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>

<html lang="ko">

<head>
	<meta charset="EUC-KR">
	<title>��ǰ����ȸ</title>
	
	<!-- ���� : http://getbootstrap.com/css/   ���� -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
	<link href="/css/animate.min.css" rel="stylesheet">
	<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
	<script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
 		body {
            padding-top : 50px;
        }
	</style>
	
	<!-- <link rel="stylesheet" href="/css/admin.css" type="text/css"> -->
	
	<!-- CDN(Content Delivery Network) ȣ��Ʈ ��� -->
	<!-- <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script> -->
	
	<!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
		
		//==> �߰��Ⱥκ� : "����" "Ȯ��"  Event ���� �� ó��
		$(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			//==> 1 �� 3 ��� ���� : $("tagName.className:filter�Լ�") �����.	
			$( "#btn1" ).on("click" , function() {
				//Debug..
				//alert(  $( "td.ct_btn01:contains('����')" ).html() );
				history.go(-1);
			});
			
			$( "#btn2" ).on("click" , function() {
				//Debug..
				//alert(  $( "td.ct_btn01:contains('����')" ).html() );
				//self.location = "/purchase/addPurchaseView?prod_no=${product.prodNo}"
				//self.location = "../images/tbc.jpg"
				self.location = "../soon.jsp"
			});
			
			$( "#btn3" ).on("click" , function() {
				var menu = $("#menu").val();
				//Debug..
				//alert(  $( "td.ct_btn01:contains('���')" ).html() );
				//alert("${param.menu}");
				self.location = "/product/listProduct?menu=${param.menu}";
			});
			
		});
		
	</script>

</head>

	<body>
	
		<!-- ToolBar Start /////////////////////////////////////-->
		<jsp:include page="/layout/toolbar.jsp" />
	   	<!-- ToolBar End /////////////////////////////////////-->
	   	
	   	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
		<div class="container">
			
			<div class="page-header">
				<h3 class=" text-info"><strong>��ǰ����ȸ</strong></h3>
				<h5 class="text-muted">��� ���� �Ҷ��� <strong class="text-danger">������ ��°Ŵ�</strong> ����?</h5>
			</div><hr/>
			
			<div class="row">
	  			<div class="col-xs-4 col-md-2"><strong>��ǰ��ȣ</strong></div>
				<div class="col-xs-8 col-md-4">${product.prodNo}</div>
			</div><hr/>
			
			<div class="row">
	  			<div class="col-xs-4 col-md-2"><strong>��ǰ��</strong></div>
				<div class="col-xs-8 col-md-4">${product.prodName}</div>
			</div><hr/>
			
			<div class="row">
	  			<div class="col-xs-4 col-md-2"><strong>��ǰ�̹���</strong></div>
				<div class="col-xs-8 col-md-4">
					<img src="/images/uploadFiles/${product.fileName}"/>
				</div>
			</div><hr/>
			
			<div class="row">
	  			<div class="col-xs-4 col-md-2"><strong>��ǰ������</strong></div>
				<div class="col-xs-8 col-md-4">${product.prodDetail}</div>
			</div><hr/>
			
			<div class="row">
	  			<div class="col-xs-4 col-md-2"><strong>��������</strong></div>
				<div class="col-xs-8 col-md-4">${product.manuDate}</div>
			</div><hr/>
			
			<div class="row">
	  			<div class="col-xs-4 col-md-2"><strong>����</strong></div>
				<div class="col-xs-8 col-md-4">${product.price}��</div>
			</div><hr/>
			
			<div class="row">
	  			<div class="col-xs-4 col-md-2"><strong>�������</strong></div>
				<div class="col-xs-8 col-md-4">${product.regDate}</div>
			</div><hr/>
			
			<div class="row">
		  		<div class="col-md-12 text-right ">
		  			<!-- <button type="button" id="btn1" class="btn btn-link btn-sm">����</button> -->
		  			<button type="button" id="btn2" class="btn btn-link btn-sm">����</button>
		  			<button type="button" id="btn3" class="btn btn-link btn-sm">���</button>
		  		</div>
			</div><br>
			
		</div>
 		<!--  ȭ�鱸�� div End /////////////////////////////////////-->
	

<%-- <form name="detailForm" method="post" enctype="multipart/form-data">

<table width="100%" height="37" border="0" cellpadding="0"	cellspacing="0">
	<tr>
		<td width="15" height="37"><img src="/images/ct_ttl_img01.gif"	width="15" height="37"></td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left: 10px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="93%" class="ct_ttl01">��ǰ����ȸ</td>
					<td width="20%" align="right">&nbsp;</td>
				</tr>
			</table>
		</td>
		<td width="12" height="37">
			<img src="/images/ct_ttl_img03.gif"  width="12" height="37"/>
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top: 13px;">
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">
			��ǰ��ȣ <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">${product.prodNo}</td>
			<!--<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="105"><img src="/images/ct_ttl_img03.gif" width="12" height="37"></td>
					 ${product.prodNo} 
				</tr>
			</table> -->
		
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">
			��ǰ�� <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">${product.prodName}</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">
			��ǰ�̹��� <img 	src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">${product.fileName}</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">
			��ǰ������ <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">${product.prodDetail}</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">��������</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">${product.manuDate}</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">����</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">${product.price}</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">�������</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">${product.regDate}</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top: 10px;">
	<tr>
		<td width="53%"></td>
		<td align="right">

		<table border="0" cellspacing="0" cellpadding="0">
			<tr>
		
				<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;">
						 ����
					</td>
					<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>
					<td width="30"></td>					
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;">
						����
					</td>
					<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>
					<td width="30"></td>
					<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"></td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;">
						���
					</td>
				<td width="14" height="23"><img src="/images/ct_btnbg03.gif" width="14" height="23"></td>
			</tr>
		</table>

		</td>
	</tr>
</table>
</form> --%>

	</body>
</html>
