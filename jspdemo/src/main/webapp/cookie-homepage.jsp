<html>

<body>
<%

String country = "India";

Cookie[] thecookie = request.getCookies();

if (thecookie != null)
{
	for ( Cookie tempcookie : thecookie)
	{
		if("myapp.country".equals(tempcookie.getName()))
		{
			country = tempcookie.getValue();
			break;
		}
	}
}



%>
The cookie we have set is <%= country %>

</body>
</html>