<%@ page language="java"
         contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
	<head><title>foreach Example</title></head>
	<body>
		<h4>Enroll no: 130050131063</h4>
		<c:set var="temp" value="true"/>
		<c:forEach var="i" begin="1" end="5">
		   Item <c:out value="${i}"/><br/>
		</c:forEach>
	</body>
</html>