<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Cookies Home Page</title>
</head>
<body>
	<h3>Training Portal</h3>
	<%
		// set the default value if there are no cookies
		String favLang = "Java";
		
		// get the cookies from the browser request
		Cookie[] theCookies = request.getCookies();
		
		// find our favorite language
		if(theCookies != null) {
			for(Cookie tempCookie: theCookies) {
				if("myApp.favoriteLanguage".equals(tempCookie.getName())) {
					favLang = URLDecoder.decode(tempCookie.getValue(), "UTF-8");
					break;
				}
			}
		}
		
	%>
	
	<!-- Show the personalize page based on the cookie -->
	<h4>New Books for <%= favLang %></h4>
	<ul>
		<li>random text blah</li>
		<li>random text blah</li>
		<li>random text blah</li>
	</ul>
	<h4>Hot Jobs for <%= favLang %></h4>
	<ul>
		<li>random text blah</li>
		<li>random text blah</li>
		<li>random text blah</li>
	</ul>
	<hr/>
	
	<a href="cookies-personalize-form.html">Personalize this page</a>
</body>
</html>














