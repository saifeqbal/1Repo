import java.io.*;
import java.awt.*;
import java.io.*;
import java.lang.html;
import java.sql.connction;
{
import java.SQL.connection;
import java.connection.sql;
username
{
"saif","eqbal",
"java code", 
};

login : {"nousename"};
password: {"#1alightning"}
}
if(login= "saif ")
{
System.out.println("login");
}
 ("");
connection
{
}

else {return 0};
}

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DatabaseConnection
 {
    public static void main(String[] args)
 {
        String url = "jdbc:mysql://localhost:3306/tablen.sql";
        String user = "yourusername";
        String password ="yourpassword" ;
        try 
{
            Connection conn = DriverManager.getConnection(url, user, password);
            if (conn != null) 
{
                System.out.println("Connected to the database!");
    }
  
} 
catch (SQLException e)

{
     System.out.println("An error occurred. Maybe user/password is invalid");
            e.printStackTrace();
        }
    }
}

public class Main 
{
    public static void main(String[] args) {
        System.out.println("Hello, World!");
 }
}
import java.io.*;
{
switch ( )
{
case :
}
http://maven.apache.org/POM/4.0.0<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>
    <groupId>com.example</groupId>
    <artifactId>java-application</artifactId>
    <version>1.0-SNAPSHOT</version>
    <properties>
   <maven.compiler.source>17</maven.compiler.source>
        <maven.compiler.target>17</maven.compiler.target>
    </properties>
    <dependencies>
        <!-- Add dependencies here -->
    </dependencies>

</project>import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class FileAccess {
    public static void main(String[] args) {
        // Specify the path to the file you want to access
        String filePath = "example.txt"; // Replace with your file path

        // Try to open and read the file
        try {
            File file = new File(filePath);
            Scanner fileScanner = new Scanner(file);

            System.out.println("Reading file: " + file.getName());
            System.out.println("--------------------------------");

            // Read and print file content line by line
            while (fileScanner.hasNextLine()) {
                String line = fileScanner.nextLine();
                System.out.println(line);
            }

            // Close the file scanner
            fileScanner.close();
            System.out.println("--------------------------------");
            System.out.println("File read successfully!");

        } catch (FileNotFoundException e) {
            System.out.println("File not found: " + filePath);
            System.out.println("Please check the file path and try again.");
        }
    }
}