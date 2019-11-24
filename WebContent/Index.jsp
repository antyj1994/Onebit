
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:if test="${param['locale'] == null}">
 	<fmt:setLocale value="en" scope="session" />
</c:if>
<c:if test="${param['locale'] != null}">
 	<fmt:setLocale value="${param['locale']}" scope="session" />
</c:if>

<fmt:setBundle basename="messages" var="messages" scope="session"></fmt:setBundle>

<html>

	<head>
	
		<meta charset="ISO-8859-1">
		<title>Home - OneBit.io</title>
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
				  <p class="lead lead-bl"> <fmt:message bundle="${messages}" key="message2"/></p>
				  <div class="container-fluid justify-content-between">
					  <a class="btn btn-warning btn-lg btnn" href="#" role="button">Signup </a>
					  <a class="btn btn-warning btn-lg" href="#" role="button">Learn More</a>
				  </div>
				</div>
				
		        <div class="container-fluid">
		        	<h2>
						<fmt:message bundle="${messages}" key="string1"/>
					</h2>
		        	<div class="row first-time-user-row justify-content-between">
		        		<div class="col-lg-4">
							<img src="images//cointoonebit.png" alt="" height="180" width="240">
							<h2><fmt:message bundle="${messages}" key="string2"/></h2>
							<p class="first-time-user-text"><fmt:message bundle="${messages}" key="message3"/></p>
						</div>
						<div class="col-lg-4">
							<img src="images//antminer.png" alt="" height="180" width="240">
							<h2><fmt:message bundle="${messages}" key="string3"/></h2>
							<p class="first-time-user-text"><fmt:message bundle="${messages}" key="message4"/></p>
						</div>
						<div class="col-lg-4">
							<img src="images//mine.png" alt="" height="180" width="240">
							<h2><fmt:message bundle="${messages}" key="string4"/></h2>
							<p class="first-time-user-text"><fmt:message bundle="${messages}" key="message5"/></p>
						</div>
					</div>
				</div>
				
				<div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
				  <div class="carousel-inner">
				    <div class="carousel-item carousel-item-og active justify-content-between">
				    	<h4 class="display-3 text-carousel"> <img class="logo" src="images//bc_logo.png" height="150" width="165"> </h4>
				        <h4 class="text-carousel"> <fmt:message bundle="${messages}" key="msg1"/> </h4>
		          		<p class="text-carousel end-carousel"><fmt:message bundle="${messages}" key="msg2"/></p>
				    </div>
				    <div class="carousel-item carousel-item-bl">
				   	    <h4 class="text-carousel"> <img class="logo" src="images//Logo.png" height="150" width="165"></h4>
				     	<h4 class="text-carousel">  <fmt:message bundle="${messages}" key="msg3"/></h4>
		          		<p class="text-carousel end-carousel"><fmt:message bundle="${messages}" key="msg4"/></p>
				    </div>
				  </div>
				  <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="false"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				  </a>
				</div>
				
				<jsp:include page="footer.jsp" /> 
				
			</div>
		
		</div>
		
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>	
	
	</body>
</>