<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee Management Screen</title>
</head>
<body>
<center>
	<div align="center">
		<h1>Employee List</h1>
		
		<table border="1">

			<th>ID</th>
			<th>FirstName</th>
			<th>LastName</th>
			
			<th>Email</th>
			<th>City</th>
			<th>Telephone</th>
			<th>Gender</th>
			<th>Action</th>

			<c:forEach var="employee" items="${listEmployee}">
				<tr>
					<td>${employee.id }</td>
					<td>${employee.fname}</td>
					<td>${employee.lname}</td>
					<td>${employee.email}</td>
					<td>${employee.city}</td>
					<td>${employee.telephone}</td>
					<td>${employee.gender}</td>
					<td><a href="editEmployee?id=${employee.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; 
						<a href="deleteEmployee?id=${employee.id}" onclick="if(!(confirm('Are you Want to delete this record!!!!'')))return false">Delete</a></td>
						
						
						
						
						</script>
				</tr>
			</c:forEach>
		</table>
		<h4>
			New Employee Register <a href="newEmployee">here</a>
		</h4>
	</div>
	</center>
</body>
</html>