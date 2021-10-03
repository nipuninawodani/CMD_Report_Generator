package com.cmd.report.Report_Generator;

import java.sql.ResultSet;


public interface Report {
    Object[][] ReportExecute(ResultSet results, int Countdata) throws ResultsetSQLExeption;
}
