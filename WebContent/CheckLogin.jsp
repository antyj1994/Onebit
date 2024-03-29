
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:if test="${sessionScope.locale == null}">
 	<fmt:setLocale value="en" scope="session" />
</c:if>
<c:if test="${param['locale'] != null}">
 	<fmt:setLocale value="${param['locale']}" scope="session" />
</c:if>

<fmt:setBundle basename="messages" var="messages" scope="session"></fmt:setBundle>

<html>

	<head>
	
		<meta charset="ISO-8859-1">
		<title>Login - Onebit.io</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
		<link rel="stylesheet" href="css//common.css" type="text/css">
	
	</head>
	
	<body>

		<div class="bg">
		
			<div class="container-fluid body-container">
			
				<jsp:include page="header.jsp" />
				
		  		<!--<c:if test="${not loggato}">
					<div class="jumbotron">
			        	<div class="container">
			          		<h1 class="display-3"> ${messaggio} </h1>
			          		<hr class="my-4">
			        	</div>
			        </div>
		        </c:if>-->
		        
		        <c:if test="${loggato}">
			        <div class="jumbotron">
			        	<div class="container">
			        		<c:if test="${not giaLoggato}">
			          			<h1 class="display-3">Successfully Logged As ${messaggio}</h1>
			          			<hr class="my-4">
			          		</c:if>
			          		<c:if test="${giaLoggato}">
			          			<h1 class="display-3">You Are Already Logged As ${messaggio}</h1>
			          			<hr class="my-4">
			          		</c:if>
			        	</div>
			        </div>
		        </c:if>
				
				<jsp:include page="footer.jsp" /> 
			
			</div>
			
		</div>
		
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>	
		
	</body>
	
</html>