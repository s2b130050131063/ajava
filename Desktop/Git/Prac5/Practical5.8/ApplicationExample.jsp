<%@ page language="java"
         contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<html>
	<head><title>application Example</title></head>
	<body>
		<h4>Enroll no: 130050131063</h4>
		
		<%   
	    	String name=application.getInitParameter("name");  
	    	out.print("Name is: "+name);   
	 	%>
	</body>
</html>