<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
	<head><title>Employee Information</title></head>
	<body>
		
		<% 
			String choice = request.getParameter("process");
			out.println(request.getParameter("process"));
			if(request.getParameter("process").equals("insert")){
				RequestDispatcher rd = request.getRequestDispatcher("JSPInsertAction.jsp");
				rd.forward(request, response);
			}else if(request.getParameter("process").equals("delete")){
				RequestDispatcher rd = request.getRequestDispatcher("ClearAction.jsp"); 
				rd.forward(request, response);
			}else if(request.getParameter("process").equals("modify")){
				RequestDispatcher rd = request.getRequestDispatcher("Update.jsp"); 
				rd.forward(request, response);
			}
		%>
		
	</body>
</html>