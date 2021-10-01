package com.cmd.report.connector;

import java.sql.Connection;

public interface DBConnector {
    Connection getConnection() throws DBConnectorException;
}
