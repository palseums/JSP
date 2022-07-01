<html>
<body>
<h3>
Welcome to Declaration
</h3>

<%!
String makeitLower(String data)
{
	return data.toLowerCase();
}
%>

We are making it lower the given word : <%= makeitLower("HELLO WORLD")  %>
</body>
</html>