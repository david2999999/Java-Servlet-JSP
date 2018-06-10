<html>
<body>

<h3>JSP Built-In Objects</h3>

<!-- This shows what browser and operating system the user is using -->
<h4>Request user agent: <%= request.getHeader("User-Agent") %></h4>

<br/>

<!-- Shows the language of the web browser -->
<h4>Request Language: <%= request.getLocale() %></h4>

</body>
</html>