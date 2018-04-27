<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@include file="/WEB-INF/pages/includes/taglibs.jsp" %>
<html>
<head>        
    
    
    <meta charset="UTF-8">
    <title>Spring CRUD Bootstrap postgresql</title>
   
</head><body class="bg-img-num1"> 
    
   <div class="container">        
        <%@include file="/WEB-INF/pages/guest/mainHeader.jsp" %>
        <c:if test="${message != null}">
		        <div id="messageInfo" class="alert alert-${messageType}">
	                    <strong>Atention!</strong> ${message}
	                    <button type="button" class="close" data-dismiss="alert" onclick="closeMessage();">×</button>
	            </div>
	        </c:if>
        <div class="row">
                    
        </div>
        
        <%@include file="/WEB-INF/pages/guest/mainFooter.jsp" %>
  </div>
  
 <script type="text/javascript" >
 function closeMessage(){
	 document.getElementById('messageInfo').style.display = 'none';
 }
</script>
