<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- ToolBar Start /////////////////////////////////////-->
<div class="navbar  navbar-inverse navbar-fixed-top">
	
	<div class="container">
	       
		<a class="navbar-brand" href="/index.jsp" style="color:Gainsboro;"><strong>��Ʈķ�� ������</strong></a>
		
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
		
	    <!--  dropdown hover Start -->
		<div class="collapse navbar-collapse" id="target"
	       			data-hover="dropdown" data-animations="fadeInDownNew fadeInRightNew fadeInUpNew fadeInLeftNew">
	         
	         	<!-- Tool Bar �� �پ��ϰ� ����ϸ�.... -->
	             <ul class="nav navbar-nav">
	             
	              <!--  ȸ������ DrowDown -->
	              <c:if test="${user.role == 'user' || user.role == 'admin'}">
	              	<li class="dropdown">
	                     <a  href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
	                         <span>ȸ������</span>
	                         <span class="caret"></span>
	                     </a>
	                     <ul class="dropdown-menu" style="background-color:black;">
	                         <li><a href="#" style="color:green;"><strong>����������ȸ</strong></a></li>
	                         
	                         <c:if test="${sessionScope.user.role == 'admin'}">
	                         	<li><a href="#" style="color:green;">ȸ��������ȸ</a></li>
	                         </c:if>
	                         
	                         <li class="divider"></li>
	                         <li><a href="#"><img src="/images/follow.gif" width="70%"></a></li>
	                     </ul>
	                 </li>
	                </c:if>
	                 
	              <!-- �ǸŻ�ǰ���� DrowDown  -->
	               <c:if test="${sessionScope.user.role == 'admin'}">
		              <li class="dropdown">
		                     <a  href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
		                         <span>�ǸŻ�ǰ����</span>
		                         <span class="caret"></span>
		                     </a>
		                     <ul class="dropdown-menu" style="background-color:black;">
		                         <li><a href="#" style="color:green;"><strong>�ǸŻ�ǰ���</strong></a></li>
		                         <li><a href="#" style="color:green;">�ǸŻ�ǰ����</a></li>
		                         <li class="divider"></li>
		                         <li><a href="#"><img src="/images/uploadFiles/ohh.jpg" width="70%"></a></li>
		                     </ul>
		                </li>
	                 </c:if>
	                 
	              <!-- ���Ű��� DrowDown -->
	              <li class="dropdown">
	                     <a  href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
	                         <span >��ǰ����</span>
	                         <span class="caret"></span>
	                     </a>
	                     <ul class="dropdown-menu" style="background-color:black;">
	                         <li><a href="#" style="color:green;"><strong>�� ǰ �� ��</strong></a></li>
	                         
	                         <c:if test="${sessionScope.user.role == 'user'}">
	                           <li><a href="../soon.jsp" style="color:green;">�����̷���ȸ</a></li>
	                         </c:if>
	                         
	                         <li><a href="#" style="color:green;">�ֱٺ���ǰ</a></li>
	                         <li class="divider"></li>
	                         <li><a href="#"><img src="/images/ahha.png" width="70%"></a></li>
	                     </ul>
	                 </li>
	                 
	                 <li><a href="http://naver.me/Fyex2mTz" target="_blank">etc...</a></li>
	             </ul>
	             
	             <ul class="nav navbar-nav navbar-right">
	             <c:if test="${sessionScope.user.role == 'user' || sessionScope.user.role == 'admin'}">
	                <li><a href="#">�α׾ƿ�</a></li>
	             </c:if>
	            </ul>
	             
		</div>
		<!-- dropdown hover END -->	       
	    
	</div>
</div>
		<!-- ToolBar End /////////////////////////////////////-->
 	
   	
   	
   	<script type="text/javascript">
	
		//============= logout Event  ó�� =============
		 $(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			 	$("a:contains('�α׾ƿ�')").on("click" , function() {
					$(self.location).attr("href","/user/logout");
					//self.location = "/user/logout"
				}); 
		 });
		
		//============= ȸ��������ȸ Event  ó�� =============	
		 $(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		 	$("a:contains('ȸ��������ȸ')").on("click" , function() {
				//$(self.location).attr("href","/user/logout");
				self.location = "/user/listUser"
			}); 
		 });
		
		//=============  ����������ȸ Event  ó�� =============	
	 	$( "a:contains('����������ȸ')" ).on("click" , function() {
	 		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$(self.location).attr("href","/user/getUser?userId=${sessionScope.user.userId}");
		});
		
	 	//=============  �ǸŻ�ǰ��� Event  ó�� =============	
	 	$( "a:contains('�ǸŻ�ǰ���')" ).on("click" , function() {
	 		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$(self.location).attr("href","../product/addProductView.jsp;");
		});
	 	
	 	//=============  �ǸŻ�ǰ���� Event  ó�� =============	
	 	$( "a:contains('�ǸŻ�ǰ����')" ).on("click" , function() {
	 		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$(self.location).attr("href","/product/listProduct?menu=manage");
		});
		
	 	//============= �� ǰ �� �� Event  ó�� =============	
		 $(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		 	$("a:contains('�� ǰ �� ��')").on("click" , function() {
				//$(self.location).attr("href","/user/logout");
				self.location = "/product/listProduct?menu=search"
			}); 
		 });
	 	
		/* //=============  �ֱٺ���ǰ Event  ó�� =============	
		 $( "a:contains('�ֱٺ���ǰ')" ).on("click" , function() {
		 	//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$(self.location).attr("href","../history.jsp");
		}); */
		
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