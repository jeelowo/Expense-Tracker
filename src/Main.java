import java.sql.*;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        String url = "jdbc:mysql://localhost:3306/expense_tracker";
        String username = "root";
        String password = "password";

        try{
            Connection connection = DriverManager.getConnection(url, username, password);

            System.out.println("Connected to MySQL!");
        }catch(SQLException e){
            e.printStackTrace();
        }

        System.out.println("" +
                "1. Add Expense\n" +
                "2. View Expenses\n" +
                "3. Search Expenses\n" +
                "4. Update Expense\n" +
                "5. Delete Expense\n" +
                "6. Spending Summary\n" +
                "7. Exit\n");

        String user_input = input.nextLine();
        input.close();
    }
}
