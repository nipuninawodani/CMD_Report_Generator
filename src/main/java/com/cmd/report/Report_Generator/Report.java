package com.cmd.report.Report_Generator;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface Report {
    String[][] ReportExecute(ResultSet results, int Countdata) throws SQLException;
}
