
import java.util.Scanner;

public class Demo {
    public static void main(String args[]){
        int choice;
        String account_no, customer_name, phone, address;
        int balance;
        
        Scanner in = new Scanner(System.in);
        while(true){
            System.out.println("--------------------------------------------");
            System.out.println("1. Insert");
            System.out.println("2. Update");
            System.out.println("3. Delete");
            System.out.println("4. Display greater than an amount");
            System.out.println("5. Exit");
            System.out.print("Select the query from above to do on bank database: ");
            choice = in.nextInt();

            System.out.println("--------------------------------------------");
            
            switch(choice){
                case 1:
                    InsertData ins = new InsertData();
                    System.out.println("Enter values to insert:");
                    System.out.println("account_no: ");
                    in.nextLine();
                    account_no = in.nextLine();
                    System.out.println("customer_name: ");
                    customer_name = in.nextLine();
                    System.out.println("balance: ");
                    balance = in.nextInt();
                    System.out.println("phone: ");
                    in.nextLine();
                    phone = in.nextLine();
                    System.out.println("address: ");
                    address = in.nextLine();
                    
                    ins.insert(account_no, customer_name, balance, phone, address);
                    break;
                case 2:
                    UpdateData up = new UpdateData();
                    up.update();
                    break;
                case 3:
                    DeleteData dd = new DeleteData();
                    System.out.print("Enter Account no to delete: ");
                    in.nextLine();
                    account_no = in.nextLine();
                    dd.delete(account_no);
                    break;
                case 4:
                	DisplayData od = new DisplayData();
                	System.out.print("Display Account having amount greater than: ");
                	in.nextLine();
                    balance = in.nextInt();
                	od.display(balance);
                	break;
                case 5:
                    System.exit(0);
                    break;
                default:
                    break;
            }
                    
        }
    }
}