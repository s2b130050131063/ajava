<%@ page import="java.sql.*, javax.servlet.*, java.io.*, java.util.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
	<head><title>Creating Table</title>
	<style>
		form {
			display: inline-block;
			text-align: center;
			border-style: solid;
		}
	</style>
	</head>
	<body>
		<center>
		<h4>Enrollno: 130050131063 </h4>
		<c:set var="formSubmitted" value="false"/>
		
		<sql:setDataSource var="snapshot" driver="org.postgresql.Driver"
				url="jdbc:postgresql://127.0.0.1:5433/s2b130050131063"
				user="postgres" password="12345" />
				
		<!-- Checking if the form is submitted. If not load the form and after submission load the list. 
				It is done using a hidden field "action".
			-->
		<% if(request.getParameter("action") == null){ %>
		
				
				<form action="insertIntoTable.jsp" method="POST" name="insertForm">
					<h2>Book Entry Form</h2>
					<br><label>Book Name:<input type="text" name="book_name" value=""></label>
					<br><label>Author:<input type="text" name="author" value=""></label>
					<br><input type="submit" value="Submit">
					<input type="hidden" value="temp" name="action">
				</form>
		<% }else{ %>
				<!-- Insert the data from the form into table -->
				<c:if test="${not empty param.book_name
										   && not empty param.author}"> 
					<sql:update dataSource="${snapshot}" var="result">
						INSERT INTO books_details(book_name, author) VALUES (?, ?)
						<sql:param value="${param.book_name}"/>
						<sql:param value="${param.author}"/>
					</sql:update>
					<c:set var="formSubmitted" value="true"/>
				</c:if>
		
		
				<!-- Display data from the table -->
				<h2>Book List</h2>
				<sql:query dataSource="${snapshot}" var="result">
					SELECT * from books_details;
				</sql:query>
					 
				<table border="1" width="100%">
					<tr>
						<th>S.No</th>
						<th>Book Name</th>
						<th>Author</th>
					</tr>
					<c:forEach var="row" items="${result.rows}">
						<tr>
							<td><c:out value="${row.id}"/></td>
							<td><c:out value="${row.book_name}"/></td>
							<td><c:out value="${row.author}"/></td>
						</tr>
					</c:forEach>
				</table>
		<% }%>
		</center>
	</body>
</html>