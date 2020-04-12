
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>index</title>

<script src="<c:url value="/resources/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

<link href="<c:url value="/resources/static/css/IndexCss.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
rel="stylesheet">

</head>
<body background="<c:url value="/resources/static/images/image2.png"/>"/>

<div class="container-fluid">
	
	<div class="d1">
	
        <header><img class="img1" src="<c:url value="/resources/static/images/image1.png"/>"/>Inventory Management System</header>
    </div>
<br><br>
<div class="topnav">

  <a  href="#home">My Info</a>
  <a href="customer_products">Product List</a>
  <a href="#contact">Buy Product</a>
  <a href="#contact">Invoice</a>
 
  
     <div class="topnav-right">
    	 
          <a href="logout">Log out</a>
           
     </div>
</div>

<div style="color: black" align="center"><h4>
Welcome ${customer.fname} ${customer.lname}- ${customer.address.city} </h4></div>

<div id="footer">
    Copyright &copy;techno.com
    <div>Inventory</div>
</div>
<div class="col-lg-2"></div>



</div>
</body>
</html>
