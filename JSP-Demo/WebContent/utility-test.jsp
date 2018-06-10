<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.servlet.jsp.Utility" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Utility Test</title>
</head>
<body>
	<h1>Testing Method from java class</h1>
	<h3>Making the string "QWERQWER" to lower case: <%= Utility.makeItLower("QWERQWER") %></h3>
</body>
</html>