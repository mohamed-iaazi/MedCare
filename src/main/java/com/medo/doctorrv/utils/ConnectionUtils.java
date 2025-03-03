package com.medo.doctorrv.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionUtils {

    private  static final String url ="jdbc:mysql://localhost:3306/doctordb?useSSL=false";
    private static final String user="root";
    private static final String password="";
    private static final   String driver="com.mysql.cj.jdbc.Driver";


    public static Connection geConnection() throws SQLException {
        Connection connection = null;
        try {
            Class.forName(driver);

            try {
                connection = DriverManager.getConnection(url, user, password);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }


        return connection;
    }


}
