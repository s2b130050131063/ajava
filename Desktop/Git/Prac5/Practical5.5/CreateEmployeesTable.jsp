<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
	<head><title>Employee Table Creation</title></head>
	<body>
		<h4>Enrollno: 130050131063 </h4>
		
		<sql:setDataSource var="snapshot" driver="org.postgresql.Driver"
			url="jdbc:postgresql://127.0.0.1:5433/s2b130050131063"
			user="postgres" password="12345" />
		
		<sql:update dataSource="${snapshot}" var="count">
		CREATE TABLE employees(emp_id INT NOT NULL,
					emp_name VARCHAR(255),
					PRIMARY KEY ( emp_id ));
		</sql:update>
		
		<h2>Table successfully created</h2>
	</body>
</html>