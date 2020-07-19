<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Header</title>
</head>
<body>
	<div class=""container>
	<nav class="navbar navbar-innverse">
	<div class="container-fluid">
	  <div class="navbar-header">
	  <a class="navbar-brand" href="index">smart Mobiles</a>
	  </div>
	  
     <c:if test="${!sessionScope.loggedIn }">
			<ul class="nav navbar-nav">
				<li><a href="index" class="glyphicon glyphicon-home"> Home</a>
				<li><a href="aboutus" class="glyphicon glyphicon-user"> About Us</a></li>
				<li><a href="contactus" class="glyphicon glyphicon-earphone"> Contact Us</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="register" class= "glyphicon glyphicon-user"> Sign Up</a></li>
				<li><a href="login" class= "glyphicon glyphicon-log-in"> Sign In</a></li>
			</ul>
			</c:if>
	  
             <c:if test="${sessionScope.loggedIn }">
             
				<c:if test="${sessionScope.role=='ROLE_ADMIN' }">
					<ul class="nav navbar-nav">
						<!-- <li><a href="#" class="glyphicon glyphicon-home"> Home</a> -->
						<li><a href="category" class="glyphicon glyphicon-th-list"> Category</a></li>
						<li><a href="supplier" class="glyphicon glyphicon-user"> Supplier</a></li>
						<li><a href="product" class="glyphicon glyphicon-th"> Product</a></li>
					</ul>
				</c:if>
				<c:if test="${sessionScope.role=='ROLE_USER' }">
					<ul class="nav navbar-nav">
						<!-- <li><a href="#" class="glyphicon glyphicon-home"> Home</a> -->
						<li><a href="<c:url value="/productCatalog"/>" class="glyphicon glyphicon-th"> Product</a></li>
						<li><a href="<c:url value="/cart"/>" class="glyphicon glyphicon-shopping-cart"> Cart</a></li>
						
					</ul>
				</c:if>
           <div class="nav navbar-nav navbar-right">
            <c:if test=${sessionScope.loggedIn }">
              <font color="white" class="glyphicon glyphicon-user">${sessionScope.username }</font><br>
              <a href="perform_logout" class="glyphicon glyphicon-lo-out">sign out</a>
             </c:if> 
	      </c:if>
	</div>
	</div>
	</nav>
	</div>
</body>
</html>