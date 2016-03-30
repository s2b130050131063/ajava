<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
	<head>
		<title>Employee Information</title>	
		<script type="text/javascript">
			function UpdateId(){
				var id = document.emp_form.select_id.value;
				document.emp_form.emp_id.value = id;
			}
		</script>
		<style>
			form {
				display: inline-block;
				text-align: left;
				border-style: solid;
			}
			#div1 {
				font-weight: bold;
				background-color: pink;
			}
			#div2 {
				background-color: lightgreen;
			}
		</style>
	</head>
	<body>
		<center>
		<h4>Enrollno: 130050131063 </h4>
		
		<sql:setDataSource var="snapshot" driver="org.postgresql.Driver"
			url="jdbc:postgresql://127.0.0.1:5433/s2b130050131063"
			user="postgres" password="12345" />
		
		<sql:query dataSource="${snapshot}" var="result">
			SELECT emp_id from employees;
		</sql:query>
		
		<form action="ProcessAction.jsp" method="POST" name="emp_form">
			<div id="div1">
				EMPLOYEE INFORMATION
			</div>
			<div id="div2">
				<br/><label>Enter Employee ID</label><input type="text" name="emp_id" value="">
				<select name="select_id" onblur="UpdateId()">
					<option selected disabled>Select one</option>
					<c:forEach var="row" items="${result.rows}">
						<option><c:out value="${row.emp_id}"/></option>
					</c:forEach>
				</select>
				<br/><label>Enter Employee Name</label><input type="text" name="emp_name" value="">
				
				<br/><input type="radio" name="process" value="insert">Insert
				<br/><input type="radio" name="process" value="delete">Delete
				<br/><input type="radio" name="process" value="modify">Modify
				
				<br/><input type="submit" name="submit" value="Submit">
				<input type="reset" name="reset" value="Reset">	
			</div>
					
		</form>
		</center>
	</body>
</html>