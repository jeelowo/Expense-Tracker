import java.sql.*;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // variable ini
        boolean running = true;

        // sql ini
        String url = "jdbc:mysql://localhost:3306/expense_tracker";
        String username = "root";
        String password = "password";

        try{
            Connection connection = DriverManager.getConnection(url, username, password);

            System.out.println("Connected to MySQL!");
        }catch(SQLException e){
            e.printStackTrace();
        }

        while (running) {
            System.out.println("" +
                    "1. Add Expense\n" +
                    "2. View Expenses\n" +
                    "3. Search Expenses\n" +
                    "4. Update Expense\n" +
                    "5. Delete Expense\n" +
                    "6. Spending Summary\n" +
                    "7. Exit\n");

            // ask user input
            System.out.print("Choose an option: ");
            String user_input = sc.nextLine();

            switch (user_input.trim()) {
                case "1":
                    System.out.println("Enter Expense ID: ");
                    break;
                case "7":
                    running = false;
                    System.out.println("Exiting program...");
                    break;
                default:
                    System.out.println(user_input + " - Invalid input!");
            }
        }

        sc.close();
    }
}
