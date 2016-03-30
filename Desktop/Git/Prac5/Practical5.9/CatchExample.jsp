<%@ page language="java"
         contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
	<head><title>catch Example</title></head>
	<body>
		<h4>Enroll no: 130050131063</h4>
		<c:catch var ="exc">
		   <% int x = 100/0;%>
		</c:catch>
		
		<c:if test = "${exc != null}">
		   Exception is : ${exc}
		</c:if>
	</body>
</html>