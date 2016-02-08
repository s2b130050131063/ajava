//STEP 1. Import required packages
import java.sql.*;

public class DeleteData {
   
   public static void delete(String account_no) {
       Connection conn = null;
       Statement stmt = null;
       try{
    	   	  //STEP 1: Connecting to Database
           	  conn = new Connect().connectToDB();
              System.out.println("Connected database successfully...");

              //STEP 4: Execute a query
              stmt = conn.createStatement();
              
              String sql = "SELECT * FROM bank WHERE account_no='"+account_no+"';";
              ResultSet rs = stmt.executeQuery(sql);
              
              //If the account no doesn't exist then simply exit.
              if(!rs.next()){
            	  System.out.println("Account with "+account_no+" not found.");
              }else{
              //If account no exist delete is.
	              sql = "DELETE FROM bank WHERE account_no = '"+account_no+"'";
	              stmt.executeUpdate(sql);
	             
	              System.out.println("Row deleted");
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
}//end main
}//end JDBCExample
