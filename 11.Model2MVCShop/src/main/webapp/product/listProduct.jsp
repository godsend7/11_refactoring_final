<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="EUC-KR">
<title>��ǰ�����ȸ</title>

<!-- ���� : http://getbootstrap.com/css/   ���� -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- <link rel="stylesheet" href="/css/admin.css" type="text/css">
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script> -->

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
   
   
  <!-- jQuery UI toolTip ��� CSS-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <!-- jQuery UI toolTip ��� JS-->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
	  body {
            padding-top : 100px;
            background-image : url(../images/chic_store.jpg);
            background-size : cover;
            
        }
    </style>

	<!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">

	//=====����Code �ּ� ó�� ��  jQuery ���� ======//
	// �˻� / page �ΰ��� ��� ��� Form ������ ���� JavaScrpt �̿�  
	function fncGetUserList(currentPage) {
		//document.getElementById("currentPage").value = currentPage;
		$("#currentPage").val(currentPage)
	   	//document.detailForm.submit();
		$("form").attr("method" , "POST").attr("action" , "/product/listProduct?menu=${param.menu}").submit();
	}
	//===========================================//
	//==> �߰��Ⱥκ� : "�˻�" ,  userId link  Event ���� �� ó��
	 $(function() {
		 
		//==> �˻� Event ����ó���κ�
		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		//==> 1 �� 3 ��� ���� : $("tagName.className:filter�Լ�") �����. 
		$( "button.btn.btn-success" ).on("click" , function() {
			//Debug..
			//alert(  $( "td.ct_btn01:contains('�˻�')" ).html() );
			fncGetUserList(1);
		});
		function fncGetUserList(currentPage) {
			$("#currentPage").val(currentPage)
			$("form").attr("method" , "POST").attr("action" , "/product/listProduct").submit();
		}
		
		//============= ������ �����ܿ� ��ǰ��������  Event  ó��(Click) =============	
		 $(function() {
		
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "td:nth-child(6) > i" ).on("click" , function() {
				//alert($(this).find("input[id=prodNo2]").val());
				//alert("${param.menu}");
				self.location ="/product/getProduct?prodNo="+$(this).find("input[id='prodNo2']").val()+"&menu=${param.menu}";
			});
						
			//==> userId LINK Event End User ���� ���ϼ� �ֵ��� 
			$( "td:nth-child(2)" ).css("color" , "Brown");
			
			$( "td:nth-child(6) > i" ).css("color" , "Darkred");
			
		});	
		
		
		//==> userId LINK Event ����ó��
		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		//==> 3 �� 1 ��� ���� : $(".className tagName:filter�Լ�") �����.
		//alert($( "td:nth-child(2)" ).html());
		$( "td:nth-child(2)" ).on("click" , function() {
				//Debug..
				//alert(  $( this ).text().trim() );
				var menu = $("#menu").val();
				//alert(menu);
				//alert($(this).find("input[id=prodNo]").val());
				if(menu == "manage") {
					//alert($(this).find("input[id=prodNo]").val());
					self.location ="/product/updateProductView?prodNo="+$(this).find("input[id=prodNo]").val();
				} else {
				//self.location ="/product/getProduct?prodNo="+$(this).find("input[id=prodNo]").val();
				var prodNo = $(this).find("input[id=prodNo]").val();
					$.ajax( 
							{
								url : "/product/json/getProduct/"+prodNo ,
								method : "GET" ,
								dataType : "json" ,
								headers : {
									"Accept" : "application/json",
									"Content-Type" : "application/json"
								},
								success : function(JSONData , status) {

									//Debug...
									//alert(status);
									//Debug...
									//alert("JSONData : \n"+JSON.stringify(JSONData));
									
									var displayValue =  "<input type='hidden' id='prodNo2' value='"+prodNo+"'/>"
														+"<h6>"
														+"<strong>��ǰ��ȣ</strong> : "+JSONData.prodNo+"<br/>"
														+"<strong>��ǰ��</strong> : "+JSONData.prodName+"<br/>"
														+"<strong>��ǰ�̹���</strong> : "+JSONData.fileName+"<br/>"
														+"<strong>��ǰ������</strong> : "+JSONData.prodDetail+"<br/>"
														+"<strong>��������</strong> : "+JSONData.manuDate+"<br/>"
														+"<strong>����</strong> : "+JSONData.price+"��"+"<br/>"
														+"<strong>�������</strong> : "+JSONData.regDateString+"<br/>" 
														//+ "<a href=\"/purchase/addPurchaseView?prod_no="+prodNo+"\">[����]</a>"
														+ "<a href=\"../soon.jsp\">[����]</a>"
														+"</h6>";
									
									//Debug...									
									//alert(displayValue);
									$("h6").remove();
									$( "#"+prodNo+"" ).html(displayValue);
								}
		
							});
				}
		});
		
	});	
	</script>
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End ///////////////////////////////////////-->
   	
   	<!-- PageNavigation Start... -->
	<jsp:include page="../common/pageNavigator_new.jsp"/>
	<!-- PageNavigation End... -->

	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container" style="background-color:Whitesmoke;">
	
		<!--  table Start /////////////////////////////////////-->
		<table class="table table-hover table-striped" >
		
		<div class="page-header text-info" style="text-align:center">
			<c:if test="${param.menu == 'manage'}">
				<h3><img src="/images/timer.gif" width="30px"><strong> ��ǰ��������</strong></h3>
			</c:if>
			<c:if test="${param.menu == 'search'}">
				<h3><img src="/images/wow.gif" width="30px"><strong> ��ǰ�����ȸ</strong></h3>
			</c:if>
	    </div>
			
			<thead>
	          <tr>
	            <th align="center">No</th>
	            <th align="left">��ǰ��</th>
	            <th align="left">����</th>
	            <th align="left">�����</th>
	            <th align="left">�������</th>
	          </tr>
	        </thead>
	        
	        <tbody>
		
			  <c:set var="i" value="0" />
			  <c:forEach var="product" items="${list}">
				<c:set var="i" value="${ i+1 }" />
				<tr>
				  <td align="center">${ i }</td>
				  <td align="left"  title="���ܻ�ǰ���� ����">
						${product.prodName}
				  		<input type="hidden" id="prodNo" value="${product.prodNo}"/>
				  </td>
				  <td align="left">${product.price}��</td>
				  <td align="left">${product.regDate}</td>
				  <td align="left">�Ǹ���</td>
				  <td align="left">
				  	<i class="glyphicon glyphicon-search" id= "${product.prodNo}">
				  		<input type="hidden" id="prodNo2" value="${product.prodNo}">
				  	</i>
			  	  </td>
				</tr>
	          </c:forEach>
	        
	        </tbody>
			
		</table><br>
		<!--  table End /////////////////////////////////////-->
	    
	    <!-- table ���� �˻� Start /////////////////////////////////////-->
	    <div class="row">
	    
		    <div class="col-md-12 text-right">
		    	<p class="text-primary">
		    		<strong>��ü</strong>  ${resultPage.totalCount } �Ǽ�, <strong>����</strong> ${resultPage.currentPage}  ������
		    	</p>
		    </div>
	    	
		</div>
		<!-- table ���� �˻� Start /////////////////////////////////////-->
	
	</div><br>
 	<!--  ȭ�鱸�� div End /////////////////////////////////////-->
 	
 			<div class="col-md-7 text-center">
			    <form class="form-inline" name="detailForm">
			    
				  <div class="form-group">
				    <select class="form-control" name="searchCondition" >
						<option value="0" ${ ! empty search.searchCondition && search.searchCondition==0 ? "selected" : "" }>��ǰ��ȣ</option>
						<option value="1" ${ ! empty search.searchCondition && search.searchCondition==1 ? "selected" : "" }>��ǰ��</option>
						<option value="2" ${ ! empty search.searchCondition && search.searchCondition==2 ? "selected" : "" }>��ǰ����</option>
					</select>
				  </div>
				  
				  <div class="form-group">
				    <label class="sr-only" for="searchKeyword">�˻���</label>
				    <input type="text" class="form-control" id="searchKeyword" name="searchKeyword"  placeholder="�˻���"
				    			 value="${! empty search.searchKeyword ? search.searchKeyword : '' }"  >
				  </div>
				  
				  <button type="button" class="btn btn-success"><strong>�˻�</strong></button>
				  
				  <!-- PageNavigation ���� ������ ���� ������ �κ� -->
				  <input type="hidden" id="currentPage" name="currentPage" value=""/>
				  <input type="hidden" id="menu" name="menu" value="${param.menu}"/>
				  
				</form></br>
	    	</div>


<%-- <div style="width:98%; margin-left:10px;">

<!-- form name="detailForm" action="/product/listProduct?menu=${param.menu}" method="post" -->
<form name="detailForm">

<table width="100%" height="37" border="0" cellpadding="0"	cellspacing="0">
	<input type="hidden" id="menu" name="menu" value="${param.menu}"/>
	<tr>
		<td width="15" height="37">
			<img src="/images/ct_ttl_img01.gif" width="15" height="37"/>
		</td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left:10px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="93%" class="ct_ttl01">
					
					<c:if test="${param.menu == 'manage'}">
							��ǰ ����
					</c:if>
					<c:if test="${param.menu == 'search'}">
							��ǰ �����ȸ
					</c:if>

					</td>
				</tr>
			</table>
		</td>
		<td width="12" height="37">
			<img src="/images/ct_ttl_img03.gif" width="12" height="37"/>
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
	<tr>
		<td align="right">
			<select name="searchCondition" class="ct_input_g" style="width:80px">
				<option value="0" ${ ! empty search.searchCondition && search.searchCondition==0 ? "selected" : "" }>��ǰ��ȣ</option>
				<option value="1" ${ ! empty search.searchCondition && search.searchCondition==1 ? "selected" : "" }>��ǰ��</option>
				<option value="2" ${ ! empty search.searchCondition && search.searchCondition==2 ? "selected" : "" }>��ǰ����</option>
			</select>
			<input 	type="text" name="searchKeyword" value="${! empty search.searchKeyword ? search.searchKeyword : ""}"  class="ct_input_g" 
							style="width:200px; height:20px" >
		</td>
		<td align="right" width="70">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="17" height="23">
						<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
					</td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;">
						<!-- <a href="javascript:fncGetUserList('1');">�˻�</a> -->
						�˻�
					</td>
					<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
	<tr>
		<td colspan="11" >��ü ${resultPage.totalCount} �Ǽ�,	���� ${resultPage.currentPage} ������</td>
	</tr>
	<tr>
		<td class="ct_list_b" width="100">No</td>
		<td class="ct_line02"></td>
		<!-- <td class="ct_list_b" width="150">��ǰ��</td> -->
		<td class="ct_list_b" width="150">
			��ǰ��<br>
			<h7>(click:������)</h7>
		</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="150">����</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b">�����</td>	
		<td class="ct_line02"></td>
		<td class="ct_list_b">�������</td>	
	</tr>
	<tr>
		<td colspan="11" bgcolor="EA9999" height="1"></td>
	</tr>
		
		for(int i=0; i<list.size(); i++) {
			Product vo = list.get(i);
			
			//System.out.println("dddddddd" + vo);

	
	
	<c:set var="i" value="0" />
	<c:forEach var="product" items="${list}">
		<c:set var="i" value="${ i+1 }" />
		<tr class="ct_list_pop">
		<td align="center">${ i }</td>
		<td></td>
		<td align="left">

			<c:if test="${param.menu == 'manage'}">
				<%-- <a href="/product/updateProductView?prodNo=${product.prodNo}&menu=${param.menu}">${product.prodName}<!-- </a> -->
				<input type="hidden" id="prodNo" value="${product.prodNo}"/>
			</c:if>	
			<c:if test="${param.menu == 'search'}">
				<a href="/product/getProduct?prodNo=${product.prodNo}&menu=${param.menu}">${product.prodName}<!-- </a> -->
				<input type="hidden" id="prodNo" value="${product.prodNo}"/>
			</c:if>
			
		</td>
		<td></td>
		<td align="left">${product.price}��</td>
		<td></td>
		<td align="left">${product.regDate}</td>
		<td></td>
		<td align="left">�Ǹ���</td>	
	</tr>
	
	<tr>
		<!-- <td colspan="11" bgcolor="D6D7D6" height="1"></td> -->
		<td id="${product.prodNo}" colspan="11" bgcolor="D6D7D6" height="1"></td>
	</tr>	
	</c:forEach>
</table>

<!-- PageNavigation Start... -->
<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top:10px;">
	<tr>
		<td align="center">
		   <input type="hidden" id="currentPage" name="currentPage" value="0"/>
			
			<jsp:include page="../common/pageNavigator.jsp"/>
		
    	</td>
	</tr>
</table>
<!-- PageNavigation End... -->

</form>

</div> --%>

</body>
</html>
