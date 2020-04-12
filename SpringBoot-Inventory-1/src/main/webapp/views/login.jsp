<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>


<meta charset="ISO-8859-1">
<title>Login</title>
<link href="<c:url value="/resources/static/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/static/css/login.css" />"
 rel="stylesheet">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
<script type="text/javascript" src="/resources/static/js/app.js"></script>
</head>
<body background="<c:url value="/resources/static/images/image2.png"/>"/>
<br><br><br>
<div align="center">
<div class="container">
		<div class="col-md-offset-1 col-md-6">
			<h2 class="text-center">Login</h2>
			<div class="panel panel-info">
				<div class="panel-heading">
					
				</div>
               
                   
					<form:form action="loginCustomer"  cssClass="form-horizontal"
						method="post" modelAttribute="customer">
  
  <div class="container" style="background-color:#FFFFFF">
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Email address" name="email" required>

    <label for="password"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>

    <button type="submit">Login</button>
    <label>
     <b> Not Registered? <a  href="register">Create an account</a></b>
    </label>
  </div>

  </form:form>
  </div>
</div>
</div>
</div>


	
</body>
</html>
