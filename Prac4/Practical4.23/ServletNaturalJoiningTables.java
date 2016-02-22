import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class ServletNaturalJoiningTables extends HttpServlet{
	// JDBC driver name and database URL
	static final String JDBC_DRIVER = "org.postgresql.Driver";
	static final String DB_URL = "jdbc:postgresql://127.0.0.1:5433/s2b130050131063";

	//  Database credentials
	static final String USER = "postgres";
	static final String PASS = "12345";
	   
	public void init() throws ServletException{
		
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		Connection conn = null;
	    PreparedStatement pstmt = null;
		try{
			System.out.println("Enrollno: 130050131063");
            //STEP 2: Register JDBC driver
            Class.forName(JDBC_DRIVER);

            //STEP 3: Open a connection
            System.out.println("Connecting to a selected database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            System.out.println("Connected database successfully...");
			
		    
			//STEP 2: Executing query
		    String sql = "SELECT * FROM logindetails NATURAL LEFT JOIN userdetails";
		    pstmt = conn.prepareStatement(sql);
		 
		    ResultSet rs = pstmt.executeQuery();
        	out.print("| <b>Name</b>| ");
        	 out.print("<b>Password</b>| ");
            out.print("<b>Field</b>| ");
            out.println("</br>\n-------------------------------</br>");
            while (rs.next())
            {
            	out.println();
            	out.print("| "+rs.getString(1));
            	out.print("| "+rs.getString(2));
                out.print("| "+rs.getString(3)+"|");
                out.println("</br>");
           }
	            
		}catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   }finally{
		      //finally block used to close resources
		      try{
		         if(pstmt!=null)
		            conn.close();
		      }catch(SQLException se){
		      }// do nothing
		      try{
		         if(conn!=null)
		            conn.close();
		      }catch(SQLException se){
		         se.printStackTrace();
		      }//end finally try
		   }//end try
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}
	
	public void destroy(){
		
	}
  
}