<%@ page language="java"
         contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
	<head><title>param Example</title></head>
	<body>
		<h4>Enroll no: 130050131063</h4>
		<c:url value="https://www.google.co.in/search" var="myURL">
		   <c:param name="q" value="helloworld"/>
		</c:url>
		<c:redirect url="${myURL}"/>
	</body>
</html>