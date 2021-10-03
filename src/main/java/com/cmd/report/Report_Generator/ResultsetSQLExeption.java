package com.cmd.report.Report_Generator;

import java.sql.SQLException;

public class ResultsetSQLExeption extends Throwable {
    public ResultsetSQLExeption(SQLException throwables, String message) {super(message);
    }
}
