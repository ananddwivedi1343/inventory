<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
<link rel="stylesheet" href="/resources/static/css/style1.css">
</head>
<body >
<div align="center">


    <h1>Product List</h1>
    <img src="/resources/static/images/image1.png" width="200" height="200"><br><br>
    <hr>
    <br/><br/>
    <table border="1" cellpadding="10">
        <thead>
            <tr>
                <th>Product ID</th>
                
                <th>Name</th>
                <th>Brand</th>
                <th>Made In</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${listProducts}">
        
         <!-- construct an "update" link with customer id -->
							<c:url var="updateLink" value="/edit">
								<c:param name="id" value="${product.id}" />
							</c:url>

							<!-- construct an "delete" link with customer id -->
							<c:url var="deleteLink" value="/delete">
								<c:param name="id" value="${product.id}" />
							</c:url>
        
            <tr>
                <td>${product.id}</td>
                
                <td>${product.name}</td>
                <td>${product.brand}</td>
                <td>${product.madein}</td>
                <td>${product.price}</td>
                <td>${product.quantity}</td> 
                <td>
                   	<!-- display the update link --> 
									<a href="#buy">Buy</a>
									|
                </td>
               
            </tr>
             </c:forEach>
        </tbody>
    </table>
</div>   
</body>
</html>