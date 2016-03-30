<%@ page language="java"
         contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
	<head><title>formatDate Example</title></head>
	<body>
		<h4>Enroll no: 130050131063</h4>
		<c:set var="now" value="<%=new java.util.Date()%>" />
		<br/>Formatted Date: <fmt:formatDate pattern="yyyy-MM-dd" 
            value="${now}" />
	</body>
</html>