//STEP 1. Import required packages
import java.sql.*;

public class DisplayData {
   
   public static void display(int balance) {
       Connection conn = null;
       Statement stmt = null;
       try{
    	   
	    	  //STEP 1: Connecting to Database
	          conn = new Connect().connectToDB();
	          System.out.println("Connected database successfully...");

              //STEP 2: Execute a query
              stmt = conn.createStatement();
              
              String sql = "SELECT * FROM bank WHERE balance >'"+balance+"';";
              ResultSet rs = stmt.executeQuery(sql);
              
              System.out.println("All accounts having amount greater than balance amount: "+balance);
              System.out.println("\n----------------------------------------------------------------------------");
              System.out.print("Account No\t");
              System.out.print("Customer Mame\t");
              System.out.print("Balance\t\t");
              System.out.print("Phone\t\t");
              System.out.print("Address\t\t");
              System.out.println("\n----------------------------------------------------------------------------");
              while (rs.next())
              {
            	System.out.println();
            	System.out.print(rs.getString(1)+"\t\t");
                System.out.print(rs.getString(2)+"\t\t");
                System.out.print(rs.getInt(3)+"\t\t");
                System.out.print(rs.getString(4)+"\t\t");
                System.out.print(rs.getString(5)+"\t\t");
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
