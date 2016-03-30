<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>

<html>
	<head><title>Creating Table</title></head>
	<body>
		<h4>Enrollno: 130050131063 </h4>
		<h3>Creating Table books_details in s2b130050131063 db.</h3>
		
		<% 
			Connection conn = null; 
		    Statement stmt = null; 
		    try {
		       Class.forName("org.postgresql.Driver");
		       conn = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5433/s2b130050131063",
		                                          "postgres", "12345");
		       stmt = conn.createStatement();
		       // dynamic query
		       String sql = "CREATE TABLE books_details"+
		       			"(id SERIAL NOT NULL, "+
						" book_name VARCHAR(255), "+
						" author VARCHAR(255), "+
						" PRIMARY KEY ( id ))";
						
		       stmt.executeUpdate(sql);
		       
		       out.println("<h2>Table successfully created</h2>");
		       
		    } catch (SQLException e) { 
		        out.println(e);
		    } finally {
		        if (stmt!= null) stmt.close();
		        if (conn!= null) conn.close();
		    }
	    %>
		
	</body>
</html>