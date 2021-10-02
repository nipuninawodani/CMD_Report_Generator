package com.cmd.report.Report_Generator;

import java.sql.ResultSet;
import java.sql.SQLException;


public class DataCounter {
    public int countData(ResultSet result) throws SQLException {
        int count=1;
        while (result.next()) {
            count++;
        }
        return count;
    }
}
