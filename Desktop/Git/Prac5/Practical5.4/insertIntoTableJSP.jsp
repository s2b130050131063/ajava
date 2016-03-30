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
		
		<% 
			Connection conn = null; 
		    Statement stmt = null;
		    PreparedStatement pstmt = null;
		    try {
		       Class.forName("org.postgresql.Driver");
		       conn = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5433/s2b130050131063",
		                                          "postgres", "12345");
		       stmt = conn.createStatement();
		    } catch (SQLException e) { 
		        out.println(e);
		    }
	    %>
		
		
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
					<% 	
						// dynamic query
			       		try {
							String sql = "INSERT INTO books_details(book_name, author) VALUES (?, ?)";
							pstmt = conn.prepareStatement(sql);
							pstmt.setString(1, request.getParameter("book_name"));
							pstmt.setString(2, request.getParameter("author"));
				       		pstmt.executeUpdate(sql);
			       		} catch (SQLException e) { 
					        out.println(e);
					    }
					%>
					<c:set var="formSubmitted" value="true"/>
				</c:if>
		
		
				<!-- Display data from the table -->
				<h2>Book List</h2>
				<% 
					try {
						String sql = "SELECT * from books_details";
				       	ResultSet rs = stmt.executeQuery(sql); 
				%>
			       		<sql:query dataSource="${snapshot}" var="result">
					SELECT * from books_details;
				</sql:query>
					 
				<table border="1" width="100%">
					<tr>
						<th>S.No</th>
						<th>Book Name</th>
						<th>Author</th>
					</tr>
					<%
						while(rs.next()){
							out.println("<tr>");
							out.println("<td>"+rs.getInt(1)+"</td>");
							out.println("<td>"+rs.getString(2)+"</td>");
							out.println("<td>"+rs.getString(3)+"</td>");
							out.println("</tr>");
						}
					} catch (SQLException e) { 
				        out.println(e);
				    }
					%>
				</table>
		<% }%>
			<%
		        if (stmt!= null) stmt.close();
		        if (pstmt!= null) stmt.close();
		        if (conn!= null) conn.close();
			%>
		</center>
	</body>
</html>