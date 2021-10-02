package com.cmd.report.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MySqlDBController implements DBController{

    @Override
    public ResultSet getResults(Connection con, String query) throws DBControllerException {
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet results = ps.executeQuery();
            return results;

        } catch (SQLException throwables) {
            throw new DBControllerException(throwables, "Couldn't Execute Sql Query");
        }
    }
}
