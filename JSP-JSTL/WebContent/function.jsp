<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Functions</title>
</head>
<body>
	<c:set var="data" value="Anything"></c:set>
	Length of String <b>"${ data }"</b>: ${ fn:length(data) } <br>
	Length of String <b>"${ data }"</b>: ${ data.length() } <br><br>
	
	Uppercase of the string <b>${ data }</b>: ${ fn:toUpperCase(data) } <br>
	Uppercase of the string <b>${ data }</b>: ${ data.toUpperCase() } <br><br>
	
	Does the string <b>${ data }</b> start with <b>Any</b>?: ${ fn:startsWith(data, "Any")}
</body>
</html>