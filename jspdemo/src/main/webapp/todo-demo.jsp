<%@page import="java.util.*" %>
<html>
<body>
<h1>hello</h1>
<!-- Step1: Create html form -->
<form action="todo-demo.jsp">

Add new item: <input type="text" name="theitem">
<br>
<input type="submit" value="submit">
</form>
<br>
Item entered: <%= request.getParameter("theitem") %>

<!-- Step2: Add new item to do "To Do" list -->

<%
// get the TO DO items from the session
List<String> items = (List<String>) session.getAttribute("myToDoList");
// if the TO DO items does not exists, then create a new one
if(items == null)
{
	items = new ArrayList<String>();
	session.setAttribute("myToDoList", items);
}

// see if there is form data to add
String theItem = request.getParameter("theitem");

boolean isItemNotEmpty = theItem != null && theItem.trim().length() > 0;
boolean isItemNotDuplicate = theItem != null && !items.contains(theItem.trim());

if ( isItemNotEmpty && isItemNotDuplicate )
{
	items.add(theItem);
}
%>

<hr>
<b> To do List Items</b>
<ol>
<%

for(String temp:items)
{
	out.println("<li>" + temp + "</li>");
}

%>
</ol>
</body>
</html>