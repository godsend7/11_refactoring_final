<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!--  ///////////////////////// JSTL  ////////////////////////// -->    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>

<html lang="ko">

<head>
	<meta charset="EUC-KR">
	<title>��ǰ����</title>
	
	<!-- <link rel="stylesheet" href="/css/admin.css" type="text/css">
	
	<script type="text/javascript" src="../javascript/calendar.js">
	</script>
	
	<script type="text/javascript"> -->
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!-- <link rel="stylesheet" href="/css/admin.css" type="text/css"> -->
	<script type="text/javascript" src="../javascript/calendar.js"></script>
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >	
	<!-- CDN(Content Delivery Network) ȣ��Ʈ ��� -->
	<!-- <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script> -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!-- jQuery UI CSS����  -->
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
	<!-- jQuery �⺻ js���� -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<!-- jQuery UI ���̺귯�� js���� -->
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
       /* body > div.container{
        	border: 3px solid #D6CDB7;
            margin-top: 10px;
        } */
        
        body {
            padding-top : 50px;
        }
    </style>
    
    <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
		
		//============= "����"  Event ���� =============
		 $(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "#button1" ).on("click" , function() {
				fncUpdateProduct();
			});
		});	
		
		
		//============= "���"  Event ó�� ��  ���� =============
		$(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("a[href='#' ]").on("click" , function() {
				$("form")[0].reset();
			});
		});
		
		
		function fncUpdateProduct() {
			var name=$("input[name='prodName']").val();
			
			if(name == null || name.length <1){
				alert("��ǰ �̸��� �ݵ�� �Է��ϼž� �մϴ�.");
				return;
			}
			
			$("form").attr("method" , "POST").attr("action" , "/product/updateProduct").submit();
		}
		
		
		$(function() {
		       //input�� datepicker�� ����
		       $("#manuDate").datepicker({
		           dateFormat: 'yy-mm-dd' //�޷� ��¥ ����
		           ,showOtherMonths: true //�� ������ ������� �յڿ��� ��¥�� ǥ��
		           ,showMonthAfterYear:true // ��- �� �������ƴ� �⵵ - �� ����
		           ,changeYear: true //option�� �� ���� ����
		           ,changeMonth: true //option��  �� ���� ����                
		           ,showOn: "both" //button:��ư�� ǥ���ϰ�,��ư�� �����߸� �޷� ǥ�� ^ both:��ư�� ǥ���ϰ�,��ư�� �����ų� input�� Ŭ���ϸ� �޷� ǥ��  
		           ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //��ư �̹��� ���
		           ,buttonImageOnly: true //��ư �̹����� ����ϰ� ���̰���
		           ,buttonText: "����" //��ư ȣ�� �ؽ�Ʈ              
		           ,yearSuffix: "��" //�޷��� �⵵ �κ� �� �ؽ�Ʈ
		           ,monthNamesShort: ['1��','2��','3��','4��','5��','6��','7��','8��','9��','10��','11��','12��'] //�޷��� �� �κ� �ؽ�Ʈ
		           ,monthNames: ['1��','2��','3��','4��','5��','6��','7��','8��','9��','10��','11��','12��'] //�޷��� �� �κ� Tooltip
		           ,dayNamesMin: ['��','��','ȭ','��','��','��','��'] //�޷��� ���� �ؽ�Ʈ
		           ,dayNames: ['�Ͽ���','������','ȭ����','������','�����','�ݿ���','�����'] //�޷��� ���� Tooltip
		           ,minDate: "-5Y" //�ּ� ��������(-1D:�Ϸ���, -1M:�Ѵ���, -1Y:�ϳ���)
		           ,maxDate: "+5y" //�ִ� ��������(+1D:�Ϸ���, -1M:�Ѵ���, -1Y:�ϳ���)  
		       });                    
		       
		       //�ʱⰪ�� ���� ��¥�� ��������� �մϴ�.
		       $('#manuDate').datepicker('setDate', 'today'); //(-1D:�Ϸ���, -1M:�Ѵ���, -1Y:�ϳ���), (+1D:�Ϸ���, -1M:�Ѵ���, -1Y:�ϳ���)            
		   });
		
	</script>
	
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
   	
   	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
		
		<div class="page-header text-center">
	       <h3 class=" text-info">��ǰ��������</h3>
	       <h5 class="text-muted">��ǰ ������ <strong class="text-danger">�ֽ������� ����</strong>�� �ּ���.</h5>
	    </div>
	    
	    <!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal">
		
			<div class="form-group">
			    <label for="prodNo" class="col-sm-offset-1 col-sm-3 control-label">��ǰ��ȣ</label>
			    <div class="col-sm-4">
			      <input type="text" class="form-control" id="prodNo" name="prodNo" value="${product.prodNo}" placeholder="Product Number" readonly>
			    </div>
		    </div>
		
			<div class="form-group">
			    <label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">��ǰ��</label>
			    <div class="col-sm-4">
			      <input type="text" class="form-control" id="prodName" name="prodName" value="${product.prodName}" placeholder="Product Name">
			    </div>
		    </div>
		    
		    <div class="form-group">
			    <label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">������</label>
			    <div class="col-sm-4">
			      <input type="text" class="form-control" id="prodDetail" name="prodDetail" value="${product.prodDetail}" placeholder="Product Detail">
			    </div>
		    </div>
		    
		    <div class="form-group">
			    <label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">��������</label>
			    <div class="col-sm-4">
			      <input type="text" class="form-control" id="manuDate" name="manuDate" value="${product.manuDate}" placeholder="Manufacture Day">
			    </div>
		    </div>
		    
		    <div class="form-group">
			    <label for="price" class="col-sm-offset-1 col-sm-3 control-label">����</label>
			    <div class="col-sm-4">
			      <input type="text" class="form-control" id="price" name="price" value="${product.price}" placeholder="Price">
			    </div>
		    </div>
		    
		    <div class="form-group">
			    <label for="fileName" class="col-sm-offset-1 col-sm-3 control-label">��ǰ�̹���</label>
			    <div class="col-sm-4">
			      <input type="text" class="form-control" id="fileName" name="fileName" value="${product.fileName}" placeholder="File Name">
			    </div>
		    </div></br>
		
			<div class="form-group">
			    <div class="col-sm-offset-4  col-sm-4 text-center">
			      <button type="button" class="btn btn-default btn-sm" id="button1"><strong>&nbsp;�� &nbsp;��&nbsp;</strong></button>
				  <a class="btn btn-default btn-sm" href="#" role="button"><strong>&nbsp;�� &nbsp;��&nbsp;</strong></a>
			    </div>
		    </div>
		
		</form>
		<!-- form End /////////////////////////////////////-->
		
   	</div>
	<!--  ȭ�鱸�� div End /////////////////////////////////////-->
   	

<%-- <form name="detailForm" method="post">

<input type="hidden" name="prodNo" value="${product.prodNo}"/>

<input type="hidden" name="menu" value="${param.menu}"/>


<table width="100%" height="37" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td width="15" height="37">
			<img src="/images/ct_ttl_img01.gif" width="15" height="37"/>
		</td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left: 10px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="93%" class="ct_ttl01">��ǰ����</td>
					<td width="20%" align="right">&nbsp;</td>
				</tr>
			</table>
		</td>
		<td width="12" height="37">
			<img src="/images/ct_ttl_img03.gif" width="12" height="37"/>
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 13px;">
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">
			��ǰ�� <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="105">
						<input 	type="text" name="prodName" class="ct_input_g" 
										style="width: 100px; height: 19px" maxLength="20" value="${product.prodName}">
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">
			��ǰ������ <img	src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="prodDetail" value="${product.prodDetail}" class="ct_input_g" 
						style="width: 100px; height: 19px" maxLength="10"	minLength="6">
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">
			�������� <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" readonly="readonly" name="manuDate" value="${product.manuDate}" 	
						class="ct_input_g" style="width: 100px; height: 19px" maxLength="10" minLength="6">&nbsp;
						<img src="../images/ct_icon_date.gif" width="15" height="15" 
							onclick="show_calendar('document.detailForm.manuDate', document.detailForm.manuDate.value)" />
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">
			���� <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="price" value="${product.price}"
						class="ct_input_g" style="width: 100px; height: 19px" maxLength="50"/>&nbsp;��
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">��ǰ�̹���</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input	type="text" name="fileName" class="ct_input_g" 
						style="width: 200px; height: 19px" maxLength="13" value="${product.fileName}"/>
		</td>
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
					<td width="17" height="23">
						<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
					</td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01"	style="padding-top: 3px;">
						<a href="javascript:fncAddProduct();">����</a>
					</td>
					<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
					</td>
					<td width="30"></td>
					<td width="17" height="23">
						<img src="/images/ct_btnbg01.gif"width="17" height="23"/>
					</td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top: 3px;">
						<a href="javascript:history.go(-1)">���</a>
					</td>
					<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</form> --%>

</body>
</html>