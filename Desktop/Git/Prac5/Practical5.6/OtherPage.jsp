<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
	<head><title>Employee Information</title></head>
	<body>
		<h4>Enroll no: 130050131063</h4>
		User name is: <% out.println(session.getAttribute("user")); %>
	</body>
</html>