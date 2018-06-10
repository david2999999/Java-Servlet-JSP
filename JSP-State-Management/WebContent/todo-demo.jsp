<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Todo List</title>
</head>
<body>

	<form action="todo-demo.jsp">
		Add new item: <input type="text" name="theItem"/>
		<button type="submit">Submit</button>
	</form>

	<br/>

	<!-- Add the new item to "to do list" -->
	<%
		// get the to do items from the session
		List<String> items = (List<String>)session.getAttribute("myTodoList");
		
		// if the to do items doesn't exist, then create a new one
		if(items == null) {
			items = new ArrayList<String>();
			session.setAttribute("myTodoList", items);
		}
		
		// see if there is form data to add
		String theItem = request.getParameter("theItem");
		if(theItem != null){
			items.add(theItem);
		}
	%>
	
	<!-- Display all of the todo items from the session -->
	<hr/>
	<h3>To do List Items:</h3>
	<ol>
		<%
			for(String temp: items) {
				out.println("<li>" + temp + "</li>");
			}
		%>
	</ol>

</body>
</html>
















