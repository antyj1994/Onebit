
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
	</body>
	
</html>