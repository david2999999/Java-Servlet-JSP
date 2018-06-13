<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="java.util.*, com.servlet.jsp.jdbc.* " %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Tracker App</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>University Students</h2>
		</div>
	</div>
	
	<div id="container">
		<div id="content">
			
			<input type="button" value="Add Student" onClick="window.location.href='add-student-form.jsp'; return false;" class="add-student-button">
			
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>

				<c:forEach var="tempStudent" items="${ STUDENT_LIST }">
				
					<c:url var="tempLink" value="StudentControllerServlet">
						<c:param name="command" value="LOAD"/>
						<c:param name="studentID" value="${tempStudent.id}"/>
					</c:url>
					
					<tr>
						<td>${ tempStudent.firstName }</td>
						<td>${ tempStudent.getLastName() }</td>
						<td>${ tempStudent.getEmail() }</td>
						<td><a href="${ tempLink }">Update</a></td>
					</tr>
				</c:forEach>
			</table> 
		</div>
	</div>
</body>
</html>