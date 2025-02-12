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
connection{
}
else {return 0};


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/tablen.sql";
        String user = "yourusername";
        String password = "yourpassword";

        try {
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
