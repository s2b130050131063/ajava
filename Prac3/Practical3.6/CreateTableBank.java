//STEP 1. Import required packages
import java.sql.*;

public class CreateTableBank {
   
   public static void main(String[] args) {
   Connection conn = null;
   Statement stmt = null;
   try{
	 //STEP 1: Connecting to Database
       conn = new Connect().connectToDB();
       System.out.println("Connected database successfully...");

      //STEP 2: Execute a query
      System.out.println("Creating table in given database...");
      stmt = conn.createStatement();

      String sql = "CREATE TABLE bank " +
                   "(account_no VARCHAR(255) not NULL, " +
                   " customer_name VARCHAR(255), " +
                   " balance INTEGER,"+
                   "phone VARCHAR(255),"+
                   "address VARCHAR(255),"+
                   " PRIMARY KEY ( account_no ))";

      stmt.executeUpdate(sql);
      System.out.println("Created table in given database...");
      
   }catch(SQLException se){
      //Handle errors for JDBC
      se.printStackTrace();
   }catch(Exception e){
      //Handle errors for Class.forName
      e.printStackTrace();
   }finally{
      //finally block used to close resources
      try{
         if(stmt!=null)
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
   System.out.println("Goodbye!");
}//end main
}//end JDBCExample
