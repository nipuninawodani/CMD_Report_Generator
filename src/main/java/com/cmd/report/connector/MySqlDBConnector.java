package com.cmd.report.connector;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySqlDBConnector implements DBConnector {

    static String driver = "com.mysql.cj.jdbc.Driver";
    static String url = "jdbc:mysql://cmdreportgen.mysql.database.azure.com/reportgen";
    static String uname = "Mahela@cmdreportgen";
    static String pass = "M4h3l4di5";

    public Connection getConnection() throws DBConnectorException {
            try {
                Class.forName(driver);
            } catch (ClassNotFoundException e) {
                throw new DBConnectorException(e, "Couldn't find mysql Driver");
            }
            try {
                Connection con = DriverManager.getConnection(url,uname, pass);
                return con;
            } catch (SQLException throwables) {
                throw new DBConnectorException(throwables, "Couldn't Connect to database");
            }
    }

}
