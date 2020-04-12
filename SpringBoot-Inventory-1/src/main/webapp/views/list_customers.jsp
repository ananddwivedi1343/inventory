<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer List</title>
<link href="<c:url value="/resources/static/css/bootstrap.min.css" />"
	rel="stylesheet">
<link rel="stylesheet" href="/resources/static/css/style1.css">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
</head>
<body background="<c:url value="/resources/static/images/image2.png"/>"/>
<div align="center">


    <h1>Customers List</h1>
    
    <img src="/resources/static/images/image1.png" width="200" height="200"><br><br>
    <hr>
    <br/><br/>
    <table border="1" cellpadding="10">
        <thead>
            <tr>
                <th>Customer ID</th>
                
                <th>First Name</th>
                <th>Last Name</th>
                <th>Date of Birth</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="customer" items="${listCustomers}">
        
         <!-- construct an "update" link with customer id -->
							<c:url var="updateLink" value="/edit">
								<c:param name="id" value="${customer.id}" />
							</c:url>

							<!-- construct an "delete" link with customer id -->
							<c:url var="deleteLink" value="/delete">
								<c:param name="id" value="${customer.id}" />
							</c:url>
        
            <tr>
                <td>${customer.id}</td>
                
                <td>${customer.fname}</td>
                <td>${customer.lname}</td>
                <td>${customer.dob}</td>
                <td>${customer.email}</td>
                <td>${customer.phoneNo} </td>
                <td>
                   	<!-- display the update link --> 
									
									| <a href="${deleteLink}"
									onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
                </td>
               
            </tr>
             </c:forEach>
        </tbody>
    </table>
</div>   
</body>
</html>