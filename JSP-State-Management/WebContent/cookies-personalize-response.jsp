<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmation</title>
</head>
	<%
		// read form data
		String favLang = request.getParameter("favoriteLanguage");
	
	    // encode cookie data ... handle case of languages with spaces in them
	    favLang = URLEncoder.encode(favLang, "UTF-8");
	
		// create the cookie
		Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);
		
		// set the expiration time of the cookie in seconds
		theCookie.setMaxAge(60 * 60 * 24);
		
		// send cookie to browser
		response.addCookie(theCookie);
		
		
	%>
<body>
	<h3>We have set your favorite language to: ${ param.favoriteLanguage }</h3>
	<br><br>
	<a href="cookies-homepage.jsp">Return to home page</a>
</body>
</html>