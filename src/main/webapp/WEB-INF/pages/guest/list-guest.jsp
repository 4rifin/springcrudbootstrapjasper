<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@include file="/WEB-INF/pages/includes/taglibs.jsp" %>
<html>
<head>        
    
    
    <meta charset="UTF-8">
    <title>Spring Login Bootstrap postgresql</title>
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
		                    <li class="active" >List Guest</li>                                        
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
	       
            
			                <div class="row">
					            <div class="col-md-12">
					                
					                <div class="table-responsive">
					                    <div class="header">
					                       <div class="col-md-4">
						                       <a class="addNew btn btn-info" href="/newGuest">Add New Guest</a>
						                   </div>
						                   <div class="col-md-4">
						                   </div>
						                   <div class="col-md-4">
						                       <div class="block block-transparent block-drop-shadow">
								                    <div class="head bg-dot20">
								                        <div class="input-group">
								                            <div class="input-group-addon"><span class="icon-search"></span></div>
								                            <input id="search" type="text" class="form-control" placeholder="what you are locking for?" name="searchName" onkeyup="search();return false;" value="${mySearch}"/>
								                        </div>                    
								                    </div>
								                </div>
							                </div>
					                    </div>
					                    <div class="content">
					                        <table class="table table-bordered table-striped table-hover table-responsive">
					                            <thead>
					                                <tr>
					                                    <th>#</th>
					                                    <th>Name</th>
					                                    <th>Address</th>
					                                    <th>Employment</th>
					                                    <th>Action</th>
					                                </tr>
					                            </thead>
					                            <tbody>
					                               <c:forEach items="${guestList}" var="guestList" varStatus="theNumber">
														<tr align="center">
															<td>${theNumber.index+1}</td>
															<td>${guestList.name}</td>
															<td>${guestList.address}</td>
															<td>${guestList.employment}</td>
															<td>
																 <form action="/deleteGuest/${guestList.id}" method="post">
																  	<button type="button" class="btn btn-warning icon-edit" onclick="location.href = '/editGuest/${guestList.id}';" style="width: 100px;">Edit</button>
																	<input type="hidden" name="id" value="${guestList.id}">
																	<button type="submit" class="btn btn-danger icon-remove" value="Delete" onclick="return confirm('Do you want delete?');return false;" style="width: 100px;"> Delete </button>
																</form>
														</tr>
													</c:forEach>                     
					                            </tbody>
					                        </table>                       
					                    </div>
					                </div>                
					                
					            </div>
					        </div>
			                
			          
			             <c:set var="val" value="${mySearch}"/>
                  <form id="formSearch" method="get">
                                            	<div class="row">
                                            		<div class="col-xs-6">                                            		
														<div class="dataTables_info" id="confirmlistTable_info">${infoPage}</div>
													</div>																								
													<div class="col-xs-6">
														<div class="dataTables_paginate paging_bootstrap">														
															<ul class="pagination">
																 <c:if test="${currentPage != 1 && currentPage != null}">
															        <li><a href="/listGuest?page=${currentPage-1}&mySearch=${val}">PREVIOUS</a></li>
															    </c:if>
															     <c:forEach begin="${startPage}" end="${endPage}"  var="i">												   
															        <li <c:if test="${i==currentPage}">class="active"</c:if>><a href="/listGuest?page=${i}&mySearch=${val}">${i}</a></li>
					                                            </c:forEach>
					                                            <c:if test="${currentPage != totalPage && currentPage != null}">
															        <li><a href="/listGuest?page=${currentPage+1}&mySearch=${val}">NEXT</a></li>
															    </c:if>
					                                        </ul>
														</div>
													</div>
												</div>

                                            </form>
			      
    </div>
     <%-- <%@include file="/WEB-INF/pages/guest/mainFooter.jsp" %> --%>
<script>
	function search(){
		var mySearch = document.getElementById('search').value;
		if (mySearch == undefined)
		    return;
		window.location = "/listGuest?mySearch="+mySearch;
		$.get("/listGuest?mySearch="+mySearch, function(data, status){
		});
	}
</script>
  
 <script type="text/javascript" >
 function validationDelete(id){
		var x = confirm('are you sure delete');
		var exec = document.getElementById('delete'+id);
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
