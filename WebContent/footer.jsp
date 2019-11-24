<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="container-fluid footer">
	<div class="row row-footer">
      <div class="col-6 col-md">
        <img class="mb-2" src="images//Logo.png" alt="" height="90" width="100">
        <small class="d-block mb-3">© 2020</small>
      </div>
      <div class="col-6 col-md">
        <h5><fmt:message bundle="${messages}" key="res0"/></h5>
        <ul class="list-unstyled text-small">
          <li><a class="text-footer" href="home"><fmt:message bundle="${messages}" key="res1"/></a></li>
          <li><a class="text-footer" href="#"><fmt:message bundle="${messages}" key="res2"/></a></li>
		  <li><a class="text-footer" href="#"><fmt:message bundle="${messages}" key="res3"/></a></li>
		  <li><a class="text-footer" href="#"><fmt:message bundle="${messages}" key="res4"/></a></li>
        </ul>
      </div>
      <div class="col-6 col-md">
        <h5><fmt:message bundle="${messages}" key="about0"/></h5>
        <ul class="list-unstyled text-small">
          <li><a class="text-footer" href="#"><fmt:message bundle="${messages}" key="about1"/></a></li>
          <li><a class="text-footer" href="#"><fmt:message bundle="${messages}" key="about2"/></a></li>
          <li><a class="text-footer" href="#"><fmt:message bundle="${messages}" key="about3"/></a></li>
          <li><a class="text-footer" href="#"><fmt:message bundle="${messages}" key="about4"/></a></li>
        </ul>
      </div>
       <div class="col-6 col-md">
        <h5><fmt:message bundle="${messages}" key="follow"/></h5>
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
   							<a class="nav-link nav-link-footer" href="#"><fmt:message bundle="${messages}" key="footer1"/></a>
						</li>
						<li class="nav-item">
   							<a class="nav-link nav-link-footer" href="#"><fmt:message bundle="${messages}" key="footer2"/></a>
						</li>
						<li class="nav-item">
   							<a class="nav-link nav-link-footer" href="termsofuse"><fmt:message bundle="${messages}" key="footer3"/></a>
						</li>
						<li class="nav-item">
   							<a class="nav-link nav-link-footer" href="#"><fmt:message bundle="${messages}" key="footer4"/></a>
						</li>
						<li class="nav-item">
   							<a class="nav-link nav-link-footer" href="#"><fmt:message bundle="${messages}" key="footer5"/></a>
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
				<fmt:message bundle="${messages}" key="end"/>
			</p>	
		</div>
</div>