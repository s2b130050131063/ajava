import java.sql.*;
class Connect {
	// JDBC driver name and database URL
	   static final String JDBC_DRIVER = "org.postgresql.Driver";
	   static final String DB_URL = "jdbc:postgresql://127.0.0.1:5433/s2b130050131063";

	   //  Database credentials
	   static final String USER = "postgres";
	   static final String PASS = "12345";
	   
	   Connection conn;
	
	public Connection connectToDB(){
		try{
	        //STEP 1: Register JDBC driver
	        Class.forName(JDBC_DRIVER);

	        //STEP 2: Open a connection
	        System.out.println("Connecting to a selected database...");
	        conn = DriverManager.getConnection(DB_URL, USER, PASS);
			}catch(SQLException se){
		          //Handle errors for JDBC
		          se.printStackTrace();
		       }catch(Exception e){
		          //Handle errors for Class.forName
		          e.printStackTrace();
		       }
		return conn;
	}
}