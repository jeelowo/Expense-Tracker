import java.sql.*;
import java.util.Scanner;

public class Main {

    static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // variable ini
        boolean running = true;

        // sql ini
        String url = "jdbc:mysql://localhost:3306/expense_tracker";
        String username = "root";
        String password = "password";
        String sql = "INSERT INTO expenses (amount, description, category, expense_date) VALUES (?, ?, ?, ?)"; // amount, description, category, expense_date (YYYY-MM-DD)

        try{
            Connection connection = DriverManager.getConnection(url, username, password);

            System.out.println("Connected to MySQL!");

            PreparedStatement statement = connection.prepareStatement(sql);

            while (running) {
                // prompt
                System.out.println(
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
                        addExpense(statement);
                        break;
                    case "7":
                        running = false;
                        System.out.println("Exiting program...");
                        break;
                    default:
                        System.out.println(user_input + " - Invalid input!");
                }
            }

        }catch(SQLException e){
            e.printStackTrace();
        }

        sc.close();
    }

    public static void addExpense(PreparedStatement statement){
        Scanner sc = new Scanner(System.in);

        try {
            System.out.println("\nAdd Expense: ");

            System.out.print("Enter Amount: ");
            statement.setFloat(1, sc.nextFloat());
            sc.nextLine();
            System.out.print("Enter Description: ");
            statement.setString(2, sc.nextLine().trim());
            System.out.print("Enter Food: ");
            statement.setString(3, sc.nextLine().trim());
            System.out.print("Enter Date (YYYY-MM-DD): ");
            statement.setDate(1, Date.valueOf(sc.nextLine().trim()));
            statement.executeUpdate();
        }catch (SQLException e){
            System.out.println("Failed to add expense!");
        }
    }
}
