<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Exam</title>
	<link href="Template/FrontendAdmin/css/bootstrap.css" rel="stylesheet">
    <link href="Template/FrontendAdmin/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="Template/FrontendAdmin/css/style.css" rel="stylesheet"> 
    
   
   	<!-- font -->
	<link rel="stylesheet" href="Template/FrontendAdmin/font/font-awesome.min.css" />
    
    <script src="Template/FrontendAdmin/js/jquery-1.js"></script>
    <script src="Template/FrontendAdmin/js/bootstrap.min.js"></script>
    
    <style type="text/css">
    
    	#para1
    	{
    		padding-top:50px;
    	}
    
    </style>
</head>
<body>
	<!--HEADER ROW-->
	  	<jsp:include page="Header.jsp"></jsp:include>
	 <!-- /HEADER ROW -->
	 
		<div class="container">
			  <!--PAGE TITLE-->
		
			<div class="row">
				<div class="span12">
						<div class="page-header">
							<h3>
								List Exam toeic
							</h3>
							
							<p style="color:red">
								<%=request.getAttribute("msgloidnlambai")!=null?request.getAttribute("msgloidnlambai"):" "%> 
							</p>
						</div>
						
				</div>
				
			</div>
		
		  <!-- /. PAGE TITLE-->
		  	
		  	<%
		  		if (request.getAttribute("msgdsdethi")!=null)
		  		{	  		
		  	%>
		  		<div class="row">	
					
						<div class="span6">			
								<div class="media">
									 <p style="color:red">${msgdsdethi}</p>
								</div>						
						</div>	
							
				</div>
		  	<%
		  		}
		  		else
		  		{
		  	%>
			<div class="row">	
					<c:forEach items="${danhsachdethi}" var="list">
						<div class="span6">			
								<div class="media">
									 <a href="#" class="pull-left"><img src="ImageAudioExam/${list.examinatioimage}" class="media-object" alt='' width="128px" height="128px"/></a>
									<div class="media-body">
										 
										<p>
											${list.examinationame}
										</p>
										<!--a href="Lambaithitoeic?examinationid=${list.examinationid}" class="btn" type="button">L�m b�i thi toeic</a-->
										<a href="ExamToDo?examinationid=${list.examinationid}" class="btn" type="button">Test exam</a>
									</div>
								</div>						
						</div>	
					</c:forEach>				
			</div>
			<%
		  		}
			%>
			
			
			<!--Pagination-->
			<div class="row">
				<div class="span6">
					
					<div class="pagination">
						<ul>
							<c:if test="${numberpage == 1}">
							   <li class = "disabled"><a href = "#">Prev</a></li>
							  
							   <li><a href = "ListExamForward?pageid=${numberpage+1}">Next</a></li>
						   </c:if>
						   <c:if test="${numberpage == maxpageid}">
							   <li><a href = "ListExamForward?pageid=${numberpage-1}">Prev</a></li>
							  
							   <li class = "disabled"><a href ="#">Next</a></li>
						   </c:if>
						   
						   <c:if test="${numberpage > 1 && numberpage < maxpageid}">
							   <li><a href = "ListExamForward?pageid=${numberpage-1}">Prev</a></li>
							   
							   <li><a href = "ListExamForward?pageid=${numberpage+1}">Next</a></li>
						   </c:if>
					
						   
						</ul>
					</div>	
					
			 	</div>
			</div>
			<!--/.Pagination-->
			
		</div>
	 
	 <div id="para1">
	 	<jsp:include page="Footer.jsp"></jsp:include>
	 </div>

</body>
</html>