package com.cmd.report.Report_Generator;

import com.cmd.report.controller.DBControllerException;

import java.sql.ResultSet;
import java.sql.SQLException;


public class DataCounter {
    public int countData(ResultSet results) throws ResultsetSQLExeption {

        int count=1;
        try {
        while (results.next()) {
            count++;
        }

            results.beforeFirst();
        } catch (SQLException throwables) {
            throw new ResultsetSQLExeption(throwables, "Can't Get result set from db ");
        }
        return count;
    }
}
