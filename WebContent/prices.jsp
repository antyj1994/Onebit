
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
		<title>Prices - OneBit.io</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
		<link rel="stylesheet" href="css//common.css" type="text/css">
		<link rel="stylesheet" href="css//prices.css" type="text/css">
		
	</head>
	
	<body>
	
		<div class="bg">
			
			<div class="container-fluid body-container">
			
				<jsp:include page="header.jsp" /> 
				
				<div class="container-fluid profile-container">
					<ul class="nav nav-pills">
						<li class="active">
							<a href="#1a" data-toggle="tab">Bitcoin</a>
						</li>
						<li class="active">
							<a href="#2a" data-toggle="tab">Ethereum</a>
						</li>
					</ul>
					<div class="tab-content clearfix">
				    	<div class="tab-pane active" id="1a">
			          		<div class="container prices-container">
								<div class="row justify-content-between">
									<div class="col-sm-6 col-md-6 col-lg-3">
								        <div class="card text-center">
								        	<div class="card-header">
								        		<p class="card-text-head">Available</p>
								        	</div>
								      		<div class="card-body">
								        		<h5 class="card-title">Bitcoin</h5>
								        		<p class="card-text card-text-plan0">Bronze</p>
								        		<p class="card-text card-text-cost">$10</p>
								        		<p class="card-text card-text-rate">1 TH/s</p>
								        		<p class="card-text card-text-time">4 Months Plan</p>
								        		<p class="card-text card-text-type">SHA-256</p>
								      		</div>
								      		<div class="card-footer">
								        		<div class="col-12 btn1-col">
								        			<a href="#" class="btn btn-primary">Purchase</a>
								      			</div>
								      			<div class="col-12">
								        			<a href="#" class="btn btn-primary">Details</a>
								      			</div>
								        	</div>
								    	</div>
									</div>
								    <div class="col-sm-6 col-md-6 col-lg-3">
								        <div class="card text-center">
								        	<div class="card-header">
								        		<p class="card-text-head">Available</p>
								        	</div>
								      		<div class="card-body">
								        		<h5 class="card-title">Bitcoin</h5>
								        		<p class="card-text card-text-plan1">Silver</p>
								        		<p class="card-text card-text-cost">$25</p>
								        		<p class="card-text card-text-rate">5 TH/s</p>
								        		<p class="card-text card-text-time">2 Months Plan</p>
								        		<p class="card-text card-text-type">SHA-256</p>
								      		</div>
								      		<div class="card-footer">
								        		<div class="col-12 btn1-col">
								        			<a href="#" class="btn btn-primary">Purchase</a>
								      			</div>
								      			<div class="col-12">
								        			<a href="#" class="btn btn-primary">Details</a>
								      			</div>
								        	</div>
								    	</div>
									</div>
									<div class="col-sm-6 col-md-6 col-lg-3">
								        <div class="card text-center">
								        	<div class="card-header">
								        		<p class="card-text-head">Available</p>
								        	</div>
								      		<div class="card-body">
								        		<h5 class="card-title">Bitcoin</h5>
								        		<p class="card-text card-text-plan2">Gold</p>
								        		<p class="card-text card-text-cost">$100</p>
								        		<p class="card-text card-text-rate">25 TH/s</p>
								        		<p class="card-text card-text-time">2 Months Plan</p>
								        		<p class="card-text card-text-type">SHA-256</p>
								      		</div>
								      		<div class="card-footer">
								        		<div class="col-12 btn1-col">
								        			<a href="#" class="btn btn-primary">Purchase</a>
								      			</div>
								      			<div class="col-12">
								        			<a href="#" class="btn btn-primary">Details</a>
								      			</div>
								        	</div>
								    	</div>
									</div>
									<div class="col-sm-6 col-md-6 col-lg-3">
								        <div class="card text-center">
								        	<div class="card-header">
								        		<p class="card-text-head">Available</p>
								        	</div>
								      		<div class="card-body">
								        		<h5 class="card-title">Bitcoin</h5>
								        		<p class="card-text card-text-plan3">Black</p>
								        		<p class="card-text card-text-cost">$200</p>
								        		<p class="card-text card-text-rate">100 TH/s</p>
								        		<p class="card-text card-text-time">1 Month Plan</p>
								        		<p class="card-text card-text-type">SHA-256</p>
								      		</div>
								      		<div class="card-footer">
								        		<div class="col-12 btn1-col">
								        			<a href="#" class="btn btn-primary">Purchase</a>
								      			</div>
								      			<div class="col-12">
								        			<a href="#" class="btn btn-primary">Details</a>
								      			</div>
								        	</div>
								    	</div>
									</div>
								</div><!-- row  -->
								
							</div> <!-- prices container  -->
					
						</div><!-- tab1   -->
						
						<div class="tab-pane" id="2a">
			          		<div class="container prices-container">
								<div class="row justify-content-between">
									<div class="col-sm-6 col-md-6 col-lg-3">
								        <div class="card text-center">
								        	<div class="card-header">
								        		<p class="card-text-head">Available</p>
								        	</div>
								      		<div class="card-body">
								        		<h5 class="card-title">Ethereum</h5>
								        		<p class="card-text card-text-plan0">Bronze</p>
								        		<p class="card-text card-text-cost">$10</p>
								        		<p class="card-text card-text-rate">1 TH/s</p>
								        		<p class="card-text card-text-time">4 Months Plan</p>
								        		<p class="card-text card-text-type">SHA-256</p>
								      		</div>
								      		<div class="card-footer">
								        		<div class="col-12 btn1-col">
								        			<a href="#" class="btn btn-primary">Purchase</a>
								      			</div>
								      			<div class="col-12">
								        			<a href="#" class="btn btn-primary">Details</a>
								      			</div>
								        	</div>
								    	</div>
									</div>
								    <div class="col-sm-6 col-md-6 col-lg-3">
								        <div class="card text-center">
								        	<div class="card-header">
								        		<p class="card-text-head">Available</p>
								        	</div>
								      		<div class="card-body">
								        		<h5 class="card-title">Ethereum</h5>
								        		<p class="card-text card-text-plan1">Silver</p>
								        		<p class="card-text card-text-cost">$25</p>
								        		<p class="card-text card-text-rate">5 TH/s</p>
								        		<p class="card-text card-text-time">2 Months Plan</p>
								        		<p class="card-text card-text-type">SHA-256</p>
								      		</div>
								      		<div class="card-footer">
								        		<div class="col-12 btn1-col">
								        			<a href="#" class="btn btn-primary">Purchase</a>
								      			</div>
								      			<div class="col-12">
								        			<a href="#" class="btn btn-primary">Details</a>
								      			</div>
								        	</div>
								    	</div>
									</div>
									<div class="col-sm-6 col-md-6 col-lg-3">
								        <div class="card text-center">
								        	<div class="card-header">
								        		<p class="card-text-head">Available</p>
								        	</div>
								      		<div class="card-body">
								        		<h5 class="card-title">Ethereum</h5>
								        		<p class="card-text card-text-plan2">Gold</p>
								        		<p class="card-text card-text-cost">$100</p>
								        		<p class="card-text card-text-rate">25 TH/s</p>
								        		<p class="card-text card-text-time">2 Months Plan</p>
								        		<p class="card-text card-text-type">SHA-256</p>
								      		</div>
								      		<div class="card-footer">
								        		<div class="col-12 btn1-col">
								        			<a href="#" class="btn btn-primary">Purchase</a>
								      			</div>
								      			<div class="col-12">
								        			<a href="#" class="btn btn-primary">Details</a>
								      			</div>
								        	</div>
								    	</div>
									</div>
									<div class="col-sm-6 col-md-6 col-lg-3">
								        <div class="card text-center">
								        	<div class="card-header">
								        		<p class="card-text-head">Available</p>
								        	</div>
								      		<div class="card-body">
								        		<h5 class="card-title">Ethereum</h5>
								        		<p class="card-text card-text-plan3">Black</p>
								        		<p class="card-text card-text-cost">$200</p>
								        		<p class="card-text card-text-rate">100 TH/s</p>
								        		<p class="card-text card-text-time">1 Month Plan</p>
								        		<p class="card-text card-text-type">SHA-256</p>
								      		</div>
								      		<div class="card-footer">
								        		<div class="col-12 btn1-col">
								        			<a href="#" class="btn btn-primary">Purchase</a>
								      			</div>
								      			<div class="col-12">
								        			<a href="#" class="btn btn-primary">Details</a>
								      			</div>
								        	</div>
								    	</div>
									</div>
								</div><!-- row  -->
								
							</div> <!-- prices container  -->
					
						</div> 
					</div>
					
						
				</div> <!-- profile container  -->
				
				<jsp:include page="footer.jsp" /> 
				
			</div> <!-- body container  -->
		
		</div> <!-- bg  -->
		
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>	
	
	</body>
	
</html>