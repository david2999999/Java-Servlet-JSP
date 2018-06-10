<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Simple Expression Test</title>
</head>
<body>
	<h3>Converting a string to uppercase: <%= new String("Hello World").toUpperCase() %></h3>
	
	<br>
	
	<h3>25 multiplied by 4 equals <%= 25 * 4 %></h3>
	
	<br>
	
	<h3>is 75 less than 70? <%= 75 < 70 %></h3>
</body>
</html>