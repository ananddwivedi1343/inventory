<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>crm</title>
<link href="<c:url value="/resources/static/css/bootstrap.min.css" />"
	rel="stylesheet">
	<link href="<c:url value="/resources/style/style1.css" />"
 rel="stylesheet">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
</head>
<body background="<c:url value="/resources/static/images/image2.png"/>"/>
	<div class="container">
		<div class="col-md-offset-1 col-md-10">
			
			<hr color="pink" size="3" />

			
				
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title"><h1>Customer List</h1></div>
				</div>
				<div class="panel-body">
					<table class="table table-striped table-bordered">
						<tr>
							<th>Customer ID</th>
                
                <th>First Name</th>
                <th>Last Name</th>
                <th>Date of Birth</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Actions</th>
						</tr>

						<!-- loop over and print our customers -->
						<c:forEach var="customer" items="${listCustomers}">

							

							<!-- construct an "delete" link with customer id -->
							<c:url var="deleteLink" value="/delete_customer">
								<c:param name="id" value="${customer.id}" />
							</c:url>

							<tr bgcolor="pink">
								                <td>${customer.id}</td>
                
                <td>${customer.fname}</td>
                <td>${customer.lname}</td>
                <td>${customer.dob}</td>
                <td>${customer.email}</td>
                <td>${customer.phoneNo} </td>


								<td>
									
									| <a href="${deleteLink}"
									onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
								</td>

							</tr>

						</c:forEach>

					</table>

				</div>
			</div>
		</div>

	</div>
</body>

</html>