<%@ page language="java"
         contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
	<head><title>formatNumber Example</title></head>
	<body>
		<h4>Enroll no: 130050131063</h4>
		<c:set var="num" value="1000000.9999900" />
		<br/>Formatted Number 1: <fmt:formatNumber type="percent" minFractionDigits="2" value="${num}" />
		<br/>Formatted Number 2: <fmt:formatNumber type="number" pattern="##.##E0" value="${num}" />
		<br/>Formatted Number 3:
		<fmt:setLocale value="en_US"/>
		<fmt:formatNumber value="${num}" type="currency"/></p>
	</body>
</html>