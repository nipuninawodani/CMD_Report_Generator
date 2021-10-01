package com.cmd.report.Report_Generator;

public class ReportQuery {
    public static String Reportquery(String ReportType, String DateStart , String DateEnd){

                String query = String.format("SELECT * FROM `%S` WHERE date >= '%s' AND date <= '%s'",ReportType,DateStart,DateEnd);
                return query;
    }
}
