<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
// just create some sample data .... normally provided by MVC
String[] cities = {"mumbai","Chennai","Chicago"};
pageContext.setAttribute("mycities", cities);

%>
<html>
<body>
<c:forEach var="tempcity" items="${mycities}">

${tempcity} <br>

</c:forEach>
</body>
</html>