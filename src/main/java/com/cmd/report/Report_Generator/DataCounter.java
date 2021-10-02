package com.cmd.report.Report_Generator;

import java.sql.ResultSet;
import java.sql.SQLException;


public class DataCounter {
    public int countData(ResultSet results) throws SQLException {
        int count=1;
        while (results.next()) {
            count++;
        }
        results.beforeFirst();
        return count;
    }
}
