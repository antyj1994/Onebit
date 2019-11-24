<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<nav class="navbar navbar-expand-lg justify-content-between navbar-top">
			 			<a href="home" class="navbar-brand">
			 				<img class="logo" src="images//Logo.png" height="60" width="66">
			 				<b>OneBit.io</b>
			 			</a>
	 					<div class="nav-item dropdown dropdown-lan">
	 						<c:choose>
	 						<c:when test="${sessionScope.locale == null}">
  								<a class="nav-link dropdown-toggle lan-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                            	<img class="lan-img" src="images//en.png" height="15" width="25">
	                            	<b>en</b>
                            	</a>
                            	<div class="dropdown-menu dropdown-menu-left dropdown-menu-lan">
                               	 	<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=it">
                                		<img class="lan-img-menu" src="images//it.png" height="15" width="25">
                                		<b>it</b>
                                	</a>
                                	<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=fr">
                                		<img class="lan-img-menu" src="images//fr.png" height="15" width="25">
                                		<b>fr</b>
                                	</a>
                                	<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=de">
										<img class="lan-img-menu" src="images//de.png" height="15" width="25">
										<b>de</b>
									</a>
									<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=ru">
										<img class="lan-img-menu" src="images//ru.png" height="15" width="25">
										<b>ru</b>
									</a>
                            	</div>
                            </c:when>
	 						<c:when test="${sessionScope.locale == 'en'}">
								<a class="nav-link dropdown-toggle lan-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									<img class="lan-img" src="images//en.png" height="15" width="25">
									<b>en</b>
								</a>
								<div class="dropdown-menu dropdown-menu-left dropdown-menu-lan">
									<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=it">
										<img class="lan-img-menu" src="images//it.png" height="15" width="25">
										<b>it</b>
									</a>
									<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=fr">
										<img class="lan-img-menu" src="images//fr.png" height="15" width="25">
										<b>fr</b>
									</a>
									<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=de">
										<img class="lan-img-menu" src="images//de.png" height="15" width="25">
										<b>de</b>
									</a>
									<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=ru">
										<img class="lan-img-menu" src="images//ru.png" height="15" width="25">
										<b>ru</b>
									</a>
								</div>
                            </c:when>
                            <c:when test="${sessionScope.locale == 'it'}">
								<a class="nav-link dropdown-toggle lan-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									<img class="lan-img" src="images//it.png" height="15" width="25">
									<b>it</b>
								</a>
								<div class="dropdown-menu dropdown-menu-left dropdown-menu-lan">
									<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=en">
										<img class="lan-img-menu" src="images//en.png" height="15" width="25">
										<b>en</b>
									</a>
									<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=fr">
										<img class="lan-img-menu" src="images//fr.png" height="15" width="25">
										<b>fr</b>
									</a>
									<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=de">
										<img class="lan-img-menu" src="images//de.png" height="15" width="25">
										<b>de</b>
									</a>
									<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=ru">
										<img class="lan-img-menu" src="images//ru.png" height="15" width="25">
										<b>ru</b>
									</a>
								</div>
                            </c:when>
                            <c:when test="${sessionScope.locale == 'fr'}">
								<a class="nav-link dropdown-toggle lan-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									<img class="lan-img" src="images//fr.png" height="15" width="25">
									<b>fr</b>
								</a>
								<div class="dropdown-menu dropdown-menu-left dropdown-menu-lan">
									<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=en">
										<img class="lan-img-menu" src="images//en.png" height="15" width="25">
										<b>en</b>
									</a>
									<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=it">
										<img class="lan-img-menu" src="images//it.png" height="15" width="25">
										<b>it</b>
									</a>
									<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=de">
										<img class="lan-img-menu" src="images//de.png" height="15" width="25">
										<b>de</b>
									</a>
									<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=ru">
										<img class="lan-img-menu" src="images//ru.png" height="15" width="25">
										<b>ru</b>
									</a>
								</div>
                            </c:when>
                            <c:when test="${sessionScope.locale == 'de'}">
								<a class="nav-link dropdown-toggle lan-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									<img class="lan-img" src="images//de.png" height="15" width="25">
									<b>de</b>
								</a>
								<div class="dropdown-menu dropdown-menu-left dropdown-menu-lan">
									<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=en">
										<img class="lan-img-menu" src="images//en.png" height="15" width="25">
										<b>en</b>
									</a>
									<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=it">
										<img class="lan-img-menu" src="images//it.png" height="15" width="25">
										<b>it</b>
									</a>
									<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=fr">
										<img class="lan-img-menu" src="images//fr.png" height="15" width="25">
										<b>fr</b>
									</a>
									<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=ru">
										<img class="lan-img-menu" src="images//ru.png" height="15" width="25">
										<b>ru</b>
									</a>
								</div>
                            </c:when>
                            <c:when test="${sessionScope.locale == 'ru'}">
								<a class="nav-link dropdown-toggle lan-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									<img class="lan-img" src="images//ru.png" height="15" width="25">
									<b>ru</b>
								</a>
								<div class="dropdown-menu dropdown-menu-left dropdown-menu-lan">
									<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=en">
										<img class="lan-img-menu" src="images//en.png" height="15" width="25">
										<b>en</b>
									</a>
									<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=it">
										<img class="lan-img-menu" src="images//it.png" height="15" width="25">
										<b>it</b>
									</a>
									<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=fr">
										<img class="lan-img-menu" src="images//fr.png" height="15" width="25">
										<b>fr</b>
									</a>
									<a class="dropdown-item dropdown-item-lan" href="${servlet}?locale=de">
										<img class="lan-img-menu" src="images//de.png" height="15" width="25">
										<b>de</b>
									</a>
								</div>
                            </c:when>
                            </c:choose>
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
			       					<a class="nav-link" href="home"><fmt:message bundle="${messages}" key="nav2"/></a>
			      				</li>
			      				<li class="nav-item">
			       					<a class="nav-link" href="home"><fmt:message bundle="${messages}" key="nav3"/></a>
			      				</li>
			    			</ul>
			  			</div>
					</nav>