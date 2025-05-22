import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DatabaseAccess 
{
    public static void main(String[] args)
 {
        // Database URL, username, and password
        String url = "jdbc:mysql://emulated/storage/new.sql"; 
// Replace "your_database_name" with your DB name
        String username = "your_username"; // Replace with your database username
        String password = "your_password"; // Replace with your database password

        // SQL query to execute
        String query = "SELECT * FROM women"; // Replace "women" with your table name
       try
 {
            // Step 1: Load the JDBC driver (optional for modern Java versions)
            Class.forName("com.mysql.cj.jdbc.Driver"); // MySQL JDBC Driver

            // Step 2: Establish a connection
            Connection connection = DriverManager.getConnection(url, username, password);
            System.out.println("Database connected successfully!");

            // Step 3: Create a statement
            Statement statement = connection.createStatement();

            // Step 4: Execute the query
            ResultSet resultSet = statement.executeQuery(query);

            // Step 5: Process the result set
            System.out.println("Data from the 'women' table:");
            while (resultSet.next())
 {
                int id = resultSet.getInt("id"); // Replace "id" with your column name
                String name = resultSet.getString("name"); // Replace "name" with your column name
                int age = resultSet.getInt("age"); // Replace "age" with your column name
                String occupation = resultSet.getString("occupation"); // Replace "occupation" with your column name

           System.out.printf("ID: %d, Name: %s, Age: %d, Occupation: %s%n", id, name, age, occupation);
            }

            // Step 6: Close the connection
            resultSet.close();
            statement.close();
            connection.close();
            System.out.println("Database connection closed.");
       
} 

catch (Exception e) 

{
            e.printStackTrace();
        }
    }
}
