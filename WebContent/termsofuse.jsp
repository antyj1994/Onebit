
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:if test="${param['locale'] != null}">
 	<fmt:setLocale value="${param['locale']}" scope="session" />
</c:if>

<fmt:setBundle basename="messages" var="messages" scope="session"></fmt:setBundle>

<html lang="it">

	<head>
	
		<meta charset="ISO-8859-1">
		<title>OneBit.io</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
		<link rel="stylesheet" href="css//common.css" type="text/css">
		
	</head>
	
	<body>
		<div class="bg">
			
			<div class="container-fluid body-container">
			
				<jsp:include page="header.jsp" />
				
				<div class="jumbotron">
				  <p class="lead lead-og"> <fmt:message bundle="${messages}" key="message1"/></p>
				  <img class="logo img-main" src="images//Logo.png" height="190" width="210">
				  <h1>OneBit.io</h1>
				  <p class="lead lead-bl"> Choose your favorite plan and get started in minutes!</p>
				  <div class="container-fluid justify-content-between">
					  <a class="btn btn-warning btn-lg btnn" href="#" role="button">Signup </a>
					  <a class="btn btn-warning btn-lg" href="#" role="button">Learn More</a>
				  </div>
				</div>
				
				<jsp:include page="footer.jsp" /> 
				
			</div>
		
		</div>
		
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>	
	
	</body>
</>