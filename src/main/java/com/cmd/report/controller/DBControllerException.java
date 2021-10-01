package com.cmd.report.controller;

public class DBControllerException extends Exception {
    public DBControllerException(Exception e, String message) {
        super(message);
    }
}
