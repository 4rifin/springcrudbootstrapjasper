<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@include file="/WEB-INF/pages/includes/taglibs.jsp" %>
<html>
<head>        
    
    
    <meta charset="UTF-8">
    <title>Spring CRUD Bootstrap postgresql</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/css/stylesheets.css"/>" rel="stylesheet" type="text/css" />
        <link href="<c:url value="/resources/js/plugins/jquery/jquery.min.js"/>" rel="stylesheet" type="text/css" />
        <link href="<c:url value="/resources/js/plugins/jquery/jquery-ui.min.js"/>" rel="stylesheet" type="text/css" />
        <link href="<c:url value="/resources/js/plugins/jquery/jquery-migrate.min.js"/>" rel="stylesheet" type="text/css" />
        <link href="<c:url value="/resources/js/plugins/jquery/globalize.js"/>" rel="stylesheet" type="text/css" />
        <link href="<c:url value="/resources/js/plugins/bootstrap/bootstrap.min.js"/>" rel="stylesheet" type="text/css" />
        <link href="<c:url value="/resources/js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"/>" rel="stylesheet" type="text/css" />
        <link href="<c:url value="/resources/js/plugins/uniform/jquery.uniform.min.js"/>" rel="stylesheet" type="text/css" />
        <link href="<c:url value="/resources/js/plugins/knob/jquery.knob.js"/>" rel="stylesheet" type="text/css" />
        <link href="<c:url value="/resources/js/plugins/sparkline/jquery.sparkline.min.js"/>" rel="stylesheet" type="text/css" />
        <link href="<c:url value="/resources/js/plugins/flot/jquery.flot.js"/>" rel="stylesheet" type="text/css" />
        <link href="<c:url value="/resources/js/plugins/flot/jquery.flot.resize.js"/>" rel="stylesheet" type="text/css" />
        <link href="<c:url value="/resources/js/plugins.js"/>" rel="stylesheet" type="text/css" />
        <link href="<c:url value="/resources/css/stylesheets.css"/>" rel="stylesheet" type="text/css" />
        <link href="<c:url value="/resources/js/charts.js"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/js/settings.js"/>" rel="stylesheet" type="text/css" />
    
    
</head><body class="bg-img-num1"> 
    
    <div class="container">        
        <%@include file="/WEB-INF/pages/guest/mainHeader.jsp" %>
        <div class="scroll">
                <div class="row">
		            <div class="col-md-12">
		                <ol class="breadcrumb">
		                	<li><a href="<c:url value='/'/>">Home</a></li>     
		                    <li><a href="<c:url value='/listGuest'/>">List Guest</a></li>                                        
		                    <li class="active">Edit Guest</li>
		                </ol>
		            </div>
		        </div>        
		        <div class="row">
		        </div>
		    </div>
        <c:if test="${message != null}">
		        <div id="messageInfo" class="alert alert-${messageType}">
	                    <strong>Atention!</strong> ${message}
	                    <button type="button" class="close" data-dismiss="alert" onclick="closeMessage();">×</button>
	            </div>
	        </c:if>
	       <div class="login-block">
            <div class="block block-transparent">
			                <div class="row">
					            <div class="col-md-12">
					                <form id="editGuest"  method="post" action="<c:url value='/editGuest/submit'/>">
					                <div class="block">
					                    <div class="content">
					                        <div class="form-row">
						                        <div class="col-md-12">
						                            <div class="input-group">
						                                <div class="input-group-addon">
						                                    <span class="icon-user"></span>
						                                </div>
						                                <input type="hidden" class="form-control" placeholder="id" name="id" value="${guest.id}" required autocomplete="off"/>
						                                <input type="text" class="form-control" placeholder="Name" name="name" value="${guest.name}" required autocomplete="off"/>
						                            </div>
						                        </div>
						                    </div>
						                    <div class="form-row">
						                        <div class="col-md-12">
						                            <div class="input-group">
						                                <div class="input-group-addon">
						                                    <span class="icon-home"></span>
						                                </div>
						                                <input id="address" type="text" class="form-control" placeholder="Address" name="address" value="${guest.address}" autocomplete="off"/>
						                            </div>
						                        </div>
						                    </div>
						                    <div class="form-row">
						                        <div class="col-md-12">
						                            <div class="input-group">
						                                <div class="input-group-addon">
						                                    <span class="icon-smile"></span>
						                                </div>
						                                <input id="employment" type="text" class="form-control" placeholder="Employment" name="employment" value="${guest.employment}" autocomplete="off"/>
						                            </div>
						                            <span id='message'></span>
						                        </div>
						                    </div>
						                    </div>
						                    <div class="form-row">
									            <div class="col-md-12">
						                            <a href="#" class="btn btn-default btn-block btn-clean" onclick="validationSubmit();">Submit</a>
						                        </div>
			                                </div>                 
					                    </div>
					                   </form> 
					                </div>                
					                
					            </div>
					        </div>
			       </div>      
	   <%@include file="/WEB-INF/pages/guest/mainFooter.jsp" %>
    </div>
    
  
 <script type="text/javascript" >
 function validationSubmit(){
	 	var x = confirm('are you sure');
		var exec = document.getElementById('editGuest');
		if(x){
			exec.submit();
			return true;
		}else{
			return false;
		}
	}

 
 function closeMessage(){
	 document.getElementById('messageInfo').style.display = 'none';
 }
 
</script>
