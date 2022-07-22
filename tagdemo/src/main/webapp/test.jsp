<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<body>
<c:set var="stuff" value="<%= new java.util.Date() %>" />
<c:set var="data" value="palani" />
Time on the server is ${stuff} </br>
Length of the String ${data} : ${fn:length(data)}
</body>
</html>