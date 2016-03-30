<%@ page language="java"
         contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
	<head><title>message Example</title></head>
	<body>
		<h4>Enroll no: 130050131063</h4>
		<fmt:setLocale value="en"/>
		<fmt:setBundle basename="com.tutorialspoint.Example" var="lang"/>

		<fmt:message key="count.one" bundle="${lang}"/><br/>
		<fmt:message key="count.two" bundle="${lang}"/><br/>
		<fmt:message key="count.three" bundle="${lang}"/><br/>
	</body>
</html>