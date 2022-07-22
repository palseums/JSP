<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*,tagdemo.package1.Student" %>

<%

List<Student> data = new ArrayList<>();
data.add(new Student("John","Doe",false));
data.add(new Student("John1","Doe",true));
data.add(new Student("John2","Doe",false));

pageContext.setAttribute("myStudents", data);


%>
<%-- tr = table row --%>
<%-- th = table head --%>
<%-- td = table data --%>
 
 

<html>
<body>
<table border="1">

<tr>
<th>First Name</th>
<th>Last Name</th>
<th>Gold Customer</th>
</tr>
<c:forEach var="tempstudent" items="${myStudents}">

	<tr>
	<td>${tempstudent.firstname} </td>
	<td>${tempstudent.lastname} </td>
	<td>
	
	<c:if test="${tempstudent.goldcustomer}" >
	Special Discount
	</c:if>
	
	<c:if test="${not tempstudent.goldcustomer}" >
	No Special Discount
	</c:if>
	
	</td>
	</tr>
</c:forEach>
</table>
</body>
</html>
