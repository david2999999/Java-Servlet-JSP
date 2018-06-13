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
	<%
		List<Student> theStudents = (List<Student>) request.getAttribute("STUDENT_LIST");
	%>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>University Students</h2>
		</div>
	</div>
	
	<div id="container">
		<div id="content">
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
				</tr>

				<% for(Student tempStudent: theStudents) { %>
					<tr>
						<td><%= tempStudent.getFirstName() %></td>
						<td><%= tempStudent.getLastName() %></td>
						<td><%= tempStudent.getEmail() %></td>
					</tr>
				<% } %>
			</table>
		</div>
	</div>
</body>
</html>