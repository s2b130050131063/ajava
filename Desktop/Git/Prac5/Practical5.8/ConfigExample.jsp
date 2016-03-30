<%@ page language="java"
         contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<html>
	<head><title>config Example</title></head>
	<body>
		<h4>Enroll no: 130050131063</h4>
		
		<%   
	    	String name=config.getServletName();  
	    	out.print("Servlet name is: "+name);   
	 	%>
	</body>
</html>