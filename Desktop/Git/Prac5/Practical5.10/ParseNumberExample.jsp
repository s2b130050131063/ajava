<%@ page language="java"
         contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
	<head><title>parseNumber Example</title></head>
	<body>
		<h4>Enroll no: 130050131063</h4>
		<c:set var="num" value="1000000.99900000" />
		<fmt:parseNumber var="i" type="number" value="${num}" />
		<br/>Parsed Number: <c:out value="${i}" />
	</body>
</html>