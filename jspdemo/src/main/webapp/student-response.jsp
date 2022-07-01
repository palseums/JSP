<html>

<head>
<title> Student Confirmation title</title>
</head>
<body>

The student is confirmed <%= request.getParameter("firstname") %> <%= request.getParameter("lastname") %>
<br>

The student is confirmed: ${param.firstname} ${param.lastname}

<br>

The student country is: ${param.country}

<br>

The student favourite subject is : ${param.language}

<br>

The student spoken languages are : 
<ul>
<% 

String[] str = request.getParameterValues("spokenlanguage");

if(str!=null)
{
for (String templang : str)
{
	out.println("<li>" + templang + "</li>");
}
}

%>
</ul>

</body>

</html>