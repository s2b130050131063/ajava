
//STEP 1. Import required packages
import java.sql.*;

public class RetrieveData {
   // JDBC driver name and database URL
   static final String JDBC_DRIVER = "org.postgresql.Driver";
   static final String DB_URL = "jdbc:postgresql://127.0.0.1:5433/s2b130050131063";

   //  Database credentials
   static final String USER = "postgres";
   static final String PASS = "12345";
   
   

   public static void main(String[] args) {
       Connection conn = null;
       CallableStatement cStmt = null;
       String name, rollno, branch;
       try{
		      System.out.println("Enrollno: 130050131063");
              //STEP 2: Register JDBC driver
              Class.forName(JDBC_DRIVER);

              //STEP 3: Open a connection
              System.out.println("Connecting to a selected database...");
              conn = DriverManager.getConnection(DB_URL, USER, PASS);
              System.out.println("Connected database successfully...");

              //STEP 4: Execute a query
              cStmt = conn.prepareCall("{call ret_data()}");
              cStmt.execute();
              
              System.out.println("All 'student' table data with 'branch' = 'CSE'");
              System.out.println();
              
              ResultSet rs = cStmt.getResultSet();
              System.out.print("Roll_no\t");
              System.out.print("Name\t");
              System.out.print("Branch\t");
              System.out.println("\n:-------------------------------:");
              while (rs.next())
              {
            	System.out.println();
            	System.out.print(rs.getString(1)+"\t");
                System.out.print(rs.getString(2)+"\t");
                System.out.print(rs.getString(3)+"\t");
                System.out.println();
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
             if(cStmt!=null)
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
}//end main
}//end JDBCExample
