//STEP 1. Import required packages
import java.sql.*;

public class InsertData {
   
   public void insert(String account_no,String customer_name, int balance, String phone, String address){
       Connection conn = null;
       Statement stmt = null;
       try{
//		      
    	   	  //STEP 1: Connecting to Database
              conn = new Connect().connectToDB();
              System.out.println("Connected database successfully...");

              //STEP 4: Execute a query
              System.out.println("Inserting values into table bank of s2b130050131063 database...");
              stmt = conn.createStatement();
              
              String sql = "INSERT INTO bank(account_no, customer_name, balance, phone, address) VALUES ('"+account_no+"', '"+ customer_name+"', '"+ balance+"', '"+ phone+"', '"+ address+"')";
              stmt.executeUpdate(sql);
              System.out.println("Entry Inserted");

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
