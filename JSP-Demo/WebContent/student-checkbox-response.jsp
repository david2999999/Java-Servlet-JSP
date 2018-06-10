<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Response</title>
</head>
<body>
	<h2 align="center">Retrieving data from the HTML form</h2>
	<h3 align="center">The student is confirmed: ${param.firstName} ${param.lastName}</h3>
	
	<h3>Favorite Programming Languages</h3>
	<div style="font-size: 1rem;">
	<!-- display list of favorite language -->
		<ul>
			<%
				String[] langs = request.getParameterValues("favoriteLanguage");
				for(String tempLang: langs) {
					out.println("<li>" + tempLang + "</li>");
				}
			%>
		</ul>
	</div>
</body>
</html>