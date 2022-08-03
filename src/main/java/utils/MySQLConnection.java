package utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySQLConnection {
    public static Connection getConnection(){

        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/clase","root","root");
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
    public static void main(String[] args){
        Connection connection= MySQLConnection.getConnection();
        if (connection != null){
            System.out.println("Conexión exitosa");
        }else {
            System.out.println("Conexión fallida");
        }
    }
}
