package Biddingsystem;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnection {

    // Corrected URL
    private static String url = "jdbc:mysql://localhost:3306/biddingsystem";
    private static String user = "root";
    private static String pass = "258000";
    private static Connection con;

    // Method to get the connection
    public static Connection getConnection() {
        try {
            // Corrected Driver Class Name
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pass);
            System.out.println("Database Connected Successfully!");
        } catch (Exception e) {
            System.out.println("Database Not Connected!");
            e.printStackTrace();
        }
        return con;
    }
}
