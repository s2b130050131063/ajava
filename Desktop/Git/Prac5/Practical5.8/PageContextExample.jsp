<%@ page language="java"
         contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<html>
	<head><title>pageContext Example</title></head>
	<body>
	<% 
		pageContext.setAttribute("name","Krut",PageContext.SESSION_SCOPE);
	%>
		<h4>Enroll no: 130050131063</h4>
	<%
		String name=(String)pageContext.getAttribute("name",PageContext.SESSION_SCOPE); 
	%>
		Name is: <% out.println(name); %>
	</body>
</html>