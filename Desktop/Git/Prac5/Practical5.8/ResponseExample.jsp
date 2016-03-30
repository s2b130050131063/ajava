<%@ page language="java"
         contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<html>
	<head><title>response Example</title></head>
	<body>
		<h4>Enroll no: 130050131063</h4>
		
		<%
			out.println("Page will refresh after 2 seconds.");
			response.setIntHeader("Refresh", 2);
	 	%>
	</body>
</html>