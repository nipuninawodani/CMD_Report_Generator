package com.cmd.report.FileCreation;

import java.io.IOException;

public class test {
    public static void main (String []args) throws IOException {
        Object[][] bookData = {
                {"Head First Java", "Kathy Serria", 79},
                {"Effective Java", "Joshua Bloch", 36},
                {"Clean Code", "Robert martin", 42},
                {"Thinking in Java", "Bruce Eckel", 35},
        };
        ExcelWriter excelWriter = new ExcelWriter();
        excelWriter.ExcelCreaton(bookData);



    }
}
