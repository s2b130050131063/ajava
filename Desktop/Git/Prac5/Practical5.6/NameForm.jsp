<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
	<head><title>Employee Information</title></head>
	<body>
		<h4>Enroll no: 130050131063</h4>
		<form action="NameForm.jsp" method="POST" name="userForm">
			Username:<input type="text" name="user" value=""/>
			<input type="submit" name="Submit" value="submit"/>
		</form>
		
		<c:if test="${not empty param.user}">
			<%
			 	String userKey = new String("user");
			   	String userValue = request.getParameter("user");	
				session.setAttribute(userKey, userValue);
			%>
		</c:if>
		
		<a href="OtherPage.jsp">Other Page</a>
	</body>
</html>