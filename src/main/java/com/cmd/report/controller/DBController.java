package com.cmd.report.controller;

import java.sql.Connection;
import java.sql.ResultSet;

public interface DBController {
    ResultSet getResults(Connection con, String query) throws DBControllerException;
}
