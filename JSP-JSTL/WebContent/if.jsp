<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*, com.servlet.jsp.Student" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ForEach Student</title>
</head>
	<% 
		// creating some sample data... normally provided by MVC
		List<Student> data = new ArrayList<Student>();
	
		data.add(new Student("Tim", "Doe", false));
		data.add(new Student("Max", "Doe", true));
		data.add(new Student("Mary", "Doe", true));
		
		pageContext.setAttribute("myStudents", data);
	%>
	<body>
		<table border="1">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Gold Customer</th>
			</tr>
		<c:forEach var="tempStudent" items="${ myStudents }">
			<tr>
				<td>${ tempStudent.firstName }</td>
				<td>${ tempStudent.lastName }</td>
				<td>
					<c:if test="${ tempStudent.goldCustomer }">
						Special Discount
					</c:if>
					
					<c:if test="${ not tempStudent.goldCustomer }">
						-
					</c:if>
				</td>
			</tr>
			  
			<br/>
		</c:forEach>
		</table>

	</body>
</html>








