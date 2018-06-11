<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Internationalization</title>
</head>

<c:set var="theLocale" value="${ not empty param.theLocale ? param.theLocale : pageContext.request.locale }" scope="session"/>
<fmt:setLocale value="${ theLocale }"/>
<fmt:setBundle basename="com.serlvet.jsp.i18n.resources.mylabels"/>
<body>

	<a href="i18n-messages.jsp?theLocale=en_US">English (US)</a>
	|
	<a href="i18n-messages.jsp?theLocale=es_ES">Spanish (ES)</a>
	|
	<a href="i18n-messages.jsp?theLocale=de_DE">German (DE)</a>
	
	<hr>
	
	<fmt:message key="label.greeting"/> <br><br>
	<fmt:message key="label.firstName"/> <i>Tim</i> <br><br>
	<fmt:message key="label.lastName"/> <i>Doe</i> <br><br>
	<fmt:message key="label.welcome"/> <br><br>
	
	<hr>
	Selected Locale: ${ theLocale }
</body>
</html>