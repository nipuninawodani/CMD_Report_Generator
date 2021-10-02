package com.cmd.report.Report_Generator;


public class reportFactory {
    public Report reportGenaration (String ReportType){

        Report report = null;
        switch (ReportType) {
            case "user_login":
                report = new UserLoginReport();
                break;
            case "order":
                report = new OrderReport();
                break;
        }
        return report;
    }
}
