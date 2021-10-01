package com.cmd.report.connector;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SqlDBConnector implements DBConnector {

    static Connection con;
    static String driver = "com.mysql.jdbc.Driver";
    static String url = "jdbc:mysql://localhost/studentinfo";
    static String uname = "root";
    static String pass = "";

    public Connection getConnection() throws DBConnectorException {
        if(con == null){
            try {
                Class.forName(driver);
            } catch (ClassNotFoundException e) {
                throw new DBConnectorException(e, "Couldn't find mysql Driver");
            }
            try {
                con = DriverManager.getConnection(url,uname, pass);
            } catch (SQLException throwables) {
                throw new DBConnectorException(throwables, "Couldn't Connect to database");
            }
        }
        return con;
    }

}
