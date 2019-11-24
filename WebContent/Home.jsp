
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<fmt:setLocale value="it" scope="session"/>
<fmt:setBundle basename="messages" var="messages" scope="session"></fmt:setBundle>

<html lang="en">
	<head>
		<meta charset="ISO-8859-1">
		<title>OneBit.io</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
		<link rel="stylesheet" href="css//common.css" type="text/css">
		
	</head>
	
	<body>
		<div class="bg">
			
			<div class="container-fluid body-container">
			
				
					<nav class="navbar navbar-expand-lg justify-content-between navbar-top">
			 			<a href="home" class="navbar-brand">
			 				<img class="logo" src="images//Logo.png" height="60" width="66">
			 				<b>OneBit.io</b>
			 			</a>
	 					<div class="nav-item dropdown dropdown-lan">
                            <a class="nav-link dropdown-toggle lan-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            	<img class="lan-img" src="images//en.png" height="15" width="25">
                            	<b>En</b>
                            </a>
                            <div class="dropdown-menu dropdown-menu-left dropdown-menu-lan">
                                <a class="dropdown-item dropdown-item-lan" href="#it">
                                	<img class="lan-img-menu" src="images//it.png" height="15" width="25">
                                	<b>It</b>
                                </a>
                            </div>
                        </div>
						<c:if test="${not loggato}">
							<div class="nav-item">
				  				<a href="checkLogin" role="button" class="btn btn-success" ><fmt:message bundle="${messages}" key="btLogin"/></a>
				  			</div>
			  			</c:if>
			  			<c:if test="${loggato}">
			  				<li>
				  				<div class="row">
				  					<p class="login-label"><b> ${messaggio} </b></p>
				  					<hr class="my-4">
				  					<a href="checkLogout" class="btn btn-danger" role="button"><fmt:message bundle="${messages}" key="btLogout"/></a>
				  				</div>
			  				</li>
			  			</c:if>
					</nav>
					
					<nav class="navbar navbar-expand-lg navbar-dark navbar-bot">
			  			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			    			<span class="navbar-toggler-icon"></span>
			  			</button>
			  			<div class="collapse navbar-collapse" id="navbarSupportedContent">
			    			<ul class="navbar-nav mr-auto">
			      				<li class="nav-item">
			       					<a class="nav-link active" href="home">Home <span class="sr-only">(current)</span></a>
			      				</li>
			      				<c:if test="${loggato}">
				      				<li class="nav-item">
				      				<div class="nav-item dropdown">
								         <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								           Profile
								         </a>
									     <div class="dropdown-menu dropdown-menu-nav " aria-labelledby="navbarDropdown">
									        <a class="dropdown-item dropdown-item-nav" href="#">Overview</a>
									        <a class="dropdown-item dropdown-item-nav" href="#">Deposit</a>
									        <a class="dropdown-item dropdown-item-nav" href="#">Withdraw</a>
									        <div class="dropdown-divider"></div>
									        	<a class="dropdown-item dropdown-item-nav" href="#">Account</a>
									        	<a class="dropdown-item dropdown-item-nav" href="#">Settings</a>
									        </div>
							   			 </div>
								    </li>
							    </c:if>
			      				<li class="nav-item">
			       					<a class="nav-link" href="home"><fmt:message bundle="${messages}" key="nav1"/></a>
			      				</li>
			      				<li class="nav-item">
			       					<a class="nav-link" href="home"><fmt:message bundle="${messages}" key="nav2"/><</a>
			      				</li>
			      				<li class="nav-item">
			       					<a class="nav-link" href="home"><fmt:message bundle="${messages}" key="nav3"/><</a>
			      				</li>
			    			</ul>
			  			</div>
					</nav>
				
				
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
				
		        <div class="container">
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
				        <h4 class="text-carousel"> <fmt:message bundle="${messages}" key="msg1"/></h4>
		          		<p class="text-carousel end-carousel"><fmt:message bundle="${messages}" key="msg2"/></p>
				    </div>
				    <div class="carousel-item carousel-item-bl">
				   	    <h4 class="text-carousel"> <img class="logo" src="images//Logo.png" height="150" width="165"></h4>
				     	<h4 class="text-carousel"> <fmt:message bundle="${messages}" key="msg3"/></h4>
		          		<p class="text-carousel end-carousel"> <fmt:message bundle="${messages}" key="msg4"/> </p>
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
				
				<div class="container-fluid footer">
					<div class="row row-footer">
				      <div class="col-6 col-md">
				        <img class="mb-2" src="images//Logo.png" alt="" height="90" width="100">
				        <small class="d-block mb-3">© 2020</small>
				      </div>
				      <div class="col-6 col-md">
				        <h5>Resources</h5>
				        <ul class="list-unstyled text-small">
				          <li><a class="text-footer" href="#">Home</a></li>
				          <li><a class="text-footer" href="#"><fmt:message bundle="${messages}" key="res1"/></a></li>
				          <li><a class="text-footer" href="#"><fmt:message bundle="${messages}" key="res2"/></a></li>
				          <li><a class="text-footer" href="#"><fmt:message bundle="${messages}" key="res3"/></a></li>
				        </ul>
				      </div>
				      <div class="col-6 col-md">
				        <h5>About</h5>
				        <ul class="list-unstyled text-small">
				          <li><a class="text-footer" href="#"><fmt:message bundle="${messages}" key="about1"/></a></li>
				          <li><a class="text-footer" href="#"></a></li>
				          <li><a class="text-footer" href="#"></a></li>
				          <li><a class="text-footer" href="#"></a></li>
				        </ul>
				      </div>
				       <div class="col-6 col-md">
				        <h5>Follow us</h5>
				        <ul class="list-unstyled text-small">
				          <li> <a href="#"><img class="footer-logo" src="images//fblogo.png" alt="" height="35" width="40"></a></li>
				          <li> <a href="#"><img class="footer-logo" src="images//iglogo.png" alt="" height="35" width="40"></a></li>
				          <li> <a href="#"><img class="footer-logo" src="images//telogo.png" alt="" height="37" width="42"></a></li>
				        </ul>
				      </div>
				    </div>
				    
						<hr class="divider">
						<div class="container-fluid row">
							<div class="col-12 col-sm-3 address-container-footer">
								<p class="nav-address-footer">
									Onebit Cloud Services Ltd.
								</p>
								<p class="nav-address-footer nav-address-footer-2">
									Waterfront Dr, P.O. Box 34, 
									Road Town, British Virgin Islands.
								</p>
							</div>
							<div class="col-12 col-sm-6">
								<div class="nav-footer">
									<ul class="nav">
										<li class="nav-item">
			    							<a class="nav-link nav-link-footer" href="#">Privacy policy</a>
										</li>
										<li class="nav-item">
			    							<a class="nav-link nav-link-footer" href="#">Use of Cookies</a>
										</li>
										<li class="nav-item">
			    							<a class="nav-link nav-link-footer" href="#">Terms of use</a>
										</li>
										<li class="nav-item">
			    							<a class="nav-link nav-link-footer" href="#">Legal</a>
										</li>
										<li class="nav-item">
			    							<a class="nav-link nav-link-footer" href="#">Site map</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-12 col-sm-3 ssl-container-footer">
								<img class="ssl-img" src="images//ssl.png" alt="" height="70" width="150">
								<img class="ssl-img" src="images//chainlogo.png" alt="" height="40" width="65">
							</div>
						</div>
						<hr class="divider">
						<div class="container-fluid last-container">
							<p class="text-last">
								The information on this website does not convey an offer of any type and is not intended to be, 
								and should not be construed as, an offer to sell, or the solicitation of an offer to buy, any securities, 
								commodities, or other financial products. In addition, the information on this website does not constitute 
								the provision of investment advice. No assurances can be made that any aims, assumptions, expectations, 
								strategies, and/or goals expressed or implied herein were or will be realized or that the activities or any 
								performance described did or will continue at all or in the same manner as is described on this website.
							</p>	
						</div>
					</div>
			</div>
		
		</div>
		
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>	
	
	</body>
=======

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
			
				
					<nav class="navbar navbar-expand-lg justify-content-between navbar-top">
			 			<a href="home" class="navbar-brand">
			 				<img class="logo" src="images//Logo.png" height="60" width="66">
			 				<b>OneBit.io</b>
			 			</a>
	 					<div class="nav-item dropdown dropdown-lan">
	 						<c:choose>
	 						<c:when test="${param['locale'] == null}">
  								<a class="nav-link dropdown-toggle lan-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                            	<img class="lan-img" src="images//en.png" height="15" width="25">
	                            	<b>en</b>
                            	</a>
                            	<div class="dropdown-menu dropdown-menu-left dropdown-menu-lan">
                               	 	<a class="dropdown-item dropdown-item-lan" href="Index.jsp?locale=it">
                                		<img class="lan-img-menu" src="images//it.png" height="15" width="25">
                                		<b>it</b>
                                	</a>
                            	</div>
                            </c:when>
	 						<c:when test="${param['locale'] == 'it'}">
  								<a class="nav-link dropdown-toggle lan-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                            	<img class="lan-img" src="images//it.png" height="15" width="25">
	                            	<b>it</b>
                            	</a>
                            	<div class="dropdown-menu dropdown-menu-left dropdown-menu-lan">
                               	 	<a class="dropdown-item dropdown-item-lan" href="Index.jsp?locale=en">
                                		<img class="lan-img-menu" src="images//en.png" height="15" width="25">
                                		<b>en</b>
                                	</a>
                            	</div>
                            </c:when>
                            <c:when test="${param['locale'] == 'en'}">
  								<a class="nav-link dropdown-toggle lan-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                            	<img class="lan-img" src="images//en.png" height="15" width="25">
	                            	<b>en</b>
                            	</a>
                            	<div class="dropdown-menu dropdown-menu-left dropdown-menu-lan">
                               	 	<a class="dropdown-item dropdown-item-lan" href="Index.jsp?locale=it">
                                		<img class="lan-img-menu" src="images//it.png" height="15" width="25">
                                		<b>it</b>
                                	</a>
                            	</div>
                            </c:when>
                            </c:choose>
                        </div>
						<c:if test="${not loggato}">
							<div class="nav-item">
				  				<a href="checkLogin" role="button" class="btn btn-success" >Login</a>
				  			</div>
			  			</c:if>
			  			<c:if test="${loggato}">
			  				<li>
				  				<div class="row">
				  					<p class="login-label"><b> ${messaggio} </b></p>
				  					<hr class="my-4">
				  					<a href="checkLogout" class="btn btn-danger" role="button">Logout</a>
				  				</div>
			  				</li>
			  			</c:if>
					</nav>
					
					<nav class="navbar navbar-expand-lg navbar-dark navbar-bot">
			  			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			    			<span class="navbar-toggler-icon"></span>
			  			</button>
			  			<div class="collapse navbar-collapse" id="navbarSupportedContent">
			    			<ul class="navbar-nav mr-auto">
			      				<li class="nav-item">
			       					<a class="nav-link active" href="home">Home <span class="sr-only">(current)</span></a>
			      				</li>
			      				<c:if test="${loggato}">
				      				<li class="nav-item">
				      				<div class="nav-item dropdown">
								         <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								           Profile
								         </a>
									     <div class="dropdown-menu dropdown-menu-nav " aria-labelledby="navbarDropdown">
									        <a class="dropdown-item dropdown-item-nav" href="#">Overview</a>
									        <a class="dropdown-item dropdown-item-nav" href="#">Deposit</a>
									        <a class="dropdown-item dropdown-item-nav" href="#">Withdraw</a>
									        <div class="dropdown-divider"></div>
									        	<a class="dropdown-item dropdown-item-nav" href="#">Account</a>
									        	<a class="dropdown-item dropdown-item-nav" href="#">Settings</a>
									        </div>
							   			 </div>
								    </li>
							    </c:if>
			      				<li class="nav-item">
			       					<a class="nav-link" href="home">Pricing</a>
			      				</li>
			      				<li class="nav-item">
			       					<a class="nav-link" href="home">About Us</a>
			      				</li>
			      				<li class="nav-item">
			       					<a class="nav-link" href="home">Customer Service</a>
			      				</li>
			    			</ul>
			  			</div>
					</nav>
				
				
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
				
		        <div class="container">
		        	<h2>
						First Time User?
					</h2>
		        	<div class="row first-time-user-row justify-content-between">
		        		<div class="col-lg-4">
							<img src="images//cointoonebit.png" alt="" height="180" width="240">
							<h2>Ready Hardware</h2>
							<p class="first-time-user-text">Fast and innovative mining system</p>
						</div>
						<div class="col-lg-4">
							<img src="images//antminer.png" alt="" height="180" width="240">
							<h2>Mine Bitcoins</h2>
							<p class="first-time-user-text">Remotely control your machines</p>
						</div>
						<div class="col-lg-4">
							<img src="images//mine.png" alt="" height="180" width="240">
							<h2>Get Income</h2>
							<p class="first-time-user-text">Real-time income on your Wallet</p>
						</div>
					</div>
				</div>
				
				<div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
				  <div class="carousel-inner">
				    <div class="carousel-item carousel-item-og active justify-content-between">
				    	<h4 class="display-3 text-carousel"> <img class="logo" src="images//bc_logo.png" height="150" width="165"> </h4>
				        <h4 class="text-carousel"> Bitcoin payments avaiable now! </h4>
		          		<p class="text-carousel end-carousel">Our system supports Bitcoin payments from today!</p>
				    </div>
				    <div class="carousel-item carousel-item-bl">
				   	    <h4 class="text-carousel"> <img class="logo" src="images//Logo.png" height="150" width="165"></h4>
				     	<h4 class="text-carousel"> OneBit.io global launch!</h4>
		          		<p class="text-carousel end-carousel">Onebit.io global launch scheduled on Jan 7 2020 (si vacia tuttu buannu)</p>
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
				
				<div class="container-fluid footer">
					<div class="row row-footer">
				      <div class="col-6 col-md">
				        <img class="mb-2" src="images//Logo.png" alt="" height="90" width="100">
				        <small class="d-block mb-3">© 2020</small>
				      </div>
				      <div class="col-6 col-md">
				        <h5>Resources</h5>
				        <ul class="list-unstyled text-small">
				          <li><a class="text-footer" href="#">Home</a></li>
				          <li><a class="text-footer" href="#">Pricing</a></li>
				          <li><a class="text-footer" href="#">Mining</a></li>
				          <li><a class="text-footer" href="#">Datacenter</a></li>
				        </ul>
				      </div>
				      <div class="col-6 col-md">
				        <h5>About</h5>
				        <ul class="list-unstyled text-small">
				          <li><a class="text-footer" href="#">Newsroom</a></li>
				          <li><a class="text-footer" href="#">Customer service</a></li>
				          <li><a class="text-footer" href="#">Sales and refund</a></li>
				          <li><a class="text-footer" href="#">Contact Onebit</a></li>
				        </ul>
				      </div>
				       <div class="col-6 col-md">
				        <h5>Follow us</h5>
				        <ul class="list-unstyled text-small">
				          <li> <a href="#"><img class="footer-logo" src="images//fblogo.png" alt="" height="35" width="40"></a></li>
				          <li> <a href="#"><img class="footer-logo" src="images//iglogo.png" alt="" height="35" width="40"></a></li>
				          <li> <a href="#"><img class="footer-logo" src="images//telogo.png" alt="" height="37" width="42"></a></li>
				        </ul>
				      </div>
				    </div>
				    
						<hr class="divider">
						<div class="container-fluid row">
							<div class="col-12 col-sm-3 address-container-footer">
								<p class="nav-address-footer">
									Onebit Cloud Services Ltd.
								</p>
								<p class="nav-address-footer nav-address-footer-2">
									Waterfront Dr, P.O. Box 34, 
									Road Town, British Virgin Islands.
								</p>
							</div>
							<div class="col-12 col-sm-6">
								<div class="nav-footer">
									<ul class="nav">
										<li class="nav-item">
			    							<a class="nav-link nav-link-footer" href="#">Privacy policy</a>
										</li>
										<li class="nav-item">
			    							<a class="nav-link nav-link-footer" href="#">Use of Cookies</a>
										</li>
										<li class="nav-item">
			    							<a class="nav-link nav-link-footer" href="#">Terms of use</a>
										</li>
										<li class="nav-item">
			    							<a class="nav-link nav-link-footer" href="#">Legal</a>
										</li>
										<li class="nav-item">
			    							<a class="nav-link nav-link-footer" href="#">Site map</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-12 col-sm-3 ssl-container-footer">
								<img class="ssl-img" src="images//ssl.png" alt="" height="70" width="150">
								<img class="ssl-img" src="images//chainlogo.png" alt="" height="40" width="65">
							</div>
						</div>
						<hr class="divider">
						<div class="container-fluid last-container">
							<p class="text-last">
								The information on this website does not convey an offer of any type and is not intended to be, 
								and should not be construed as, an offer to sell, or the solicitation of an offer to buy, any securities, 
								commodities, or other financial products. In addition, the information on this website does not constitute 
								the provision of investment advice. No assurances can be made that any aims, assumptions, expectations, 
								strategies, and/or goals expressed or implied herein were or will be realized or that the activities or any 
								performance described did or will continue at all or in the same manner as is described on this website.
							</p>	
						</div>
					</div>
			</div>
		
		</div>
		
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>	
	
	</body>
>>>>>>> faafb90cd64d247f77375fa018e07c399d860bea
</>