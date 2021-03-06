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
	<c:set var="data" value="Singapore,Tokyo,Mumbai,London"/>
	
	<h3>Split Demo</h3>
	<c:set var="citiesArray" value="${fn:split(data, ',')}"/>
	
	<c:forEach var="tempCity" items="${ citiesArray }">
		${ tempCity } <br>
	</c:forEach>
	
	<c:set var="fun" value="${fn:join(citiesArray, '*')}"/>
	Result of joining the array: ${ fun }
</body>
</html>