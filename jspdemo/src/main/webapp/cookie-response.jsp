<html>

<body>

<%

// read form data
String coun = request.getParameter("country");
Cookie thecookie = new Cookie("myapp.country", coun);
thecookie.setMaxAge(60*60*24*365);
response.addCookie(thecookie);


%>

</body>

</html>