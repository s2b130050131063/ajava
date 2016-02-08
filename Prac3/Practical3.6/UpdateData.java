//STEP 1. Import required packages
import java.sql.*;
import java.util.Scanner;

public class UpdateData {
   
   public static void update() {
       Connection conn = null;
       Statement stmt = null;
       String account_no=null, customer_name="", phone="", address="";
       int balance = 0;
       int choice;
       Scanner in = new Scanner(System.in);
       boolean i= true;
       try{
              System.out.println("Enrollno: 130050131063");
              
              //STEP 1: Connecting to Database
              conn = new Connect().connectToDB();
              System.out.println("Connected database successfully...");

              System.out.println("_____________________________________________");
              //STEP 2: Execute a query
              System.out.print("Update values of Accountno: ");
              account_no = in.nextLine();

              stmt = conn.createStatement();
              System.out.print("Update values of Accountno: ");
              
              String sql = "SELECT * FROM bank WHERE account_no='"+account_no+"';";
              ResultSet rs = stmt.executeQuery(sql);
              
              //If the account no doesn't exist then simply exit
              if(!rs.next()){
            	  System.out.println("Account with "+account_no+" not found.");
              }else{
            	  //If account no exist update it.
            	  rs = stmt.executeQuery(sql);
            	//Setting the values from the database.
	              while(rs.next()){
	            	  account_no = rs.getString("account_no");
	  		    	  customer_name = rs.getString("customer_name");
	  		    	  balance = rs.getInt("balance");
	  		    	  phone = rs.getString("phone");
	  		    	  address = rs.getString("address");
	              }
	              
	            //Setting the values to be updated. Rest will remain same.
	              while(i){

	                  System.out.println("_____________________________________________");
	            	  System.out.println("1.Customer name \n2.Balance \n3.Phone \n4.Address");
	            	  System.out.print("Select what you want to update for ACCOUNT = "+account_no+". Press 5 to UPDATE :");
	            	  choice = in.nextInt();
	            	  in.nextLine();
	            	  switch(choice){
	            	  		case 1:
	            	  			System.out.print("Enter new value for Customer name: ");
	            	  			customer_name = in.nextLine();
	            	  			break;
	            	  		case 2:
	            	  			System.out.print("Enter new value for Balance= ");
	            	  			balance = in.nextInt();
	            	  			in.nextLine();
	            	  			break;
	            	  		case 3:
	            	  			System.out.print("Enter new value for Phone= ");
	            	  			phone = in.nextLine();
	            	  			break;
	            	  		case 4:
	            	  			System.out.print("Enter new value for Address= ");
	            	  			address = in.nextLine();
	            	  			break;
	            	  		case 5:
	            	  			i = false;
	            	  			break;
	            	  }
	              }
	              sql = "UPDATE bank SET customer_name = '"+customer_name+"' ,balance = '"+balance+"', phone = '"+phone+"', address = '"+address+"' WHERE account_no='"+account_no+"';";
	              stmt.executeUpdate(sql);
	             
	              System.out.println("Table updated");
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
