package com.cmd.report.Report_Generator;


public class ReportFactory {
    public Report reportGeneration(String ReportType){

        Report report = null;
        switch (ReportType) {
            case "user_login_report":
                report = new UserLoginReport();
                break;
            case "order_report":
                report = new OrderReport();
                break;
        }
        return report;
    }
}
