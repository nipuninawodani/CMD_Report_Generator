package com.cmd.report.connector;

public class DBConnectorException extends Exception {
    public DBConnectorException(Exception e, String message) {
        super(message);
    }
}
