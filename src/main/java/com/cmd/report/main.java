package com.cmd.report;

import com.cmd.report.Report_Generator.DataCounter;
import com.cmd.report.Report_Generator.ReportFactory;
import com.cmd.report.Report_Generator.ReportQuery;
import com.cmd.report.SaveInExcel.WriteDataToExcel;
import com.cmd.report.connector.DBConnector;
import com.cmd.report.connector.MySqlDBConnector;
import com.cmd.report.controller.DBController;
import com.cmd.report.controller.MySqlDBController;
import com.cmd.report.inputs.arguments.CommandLineInputs;
import com.cmd.report.inputs.arguments.Inputs;
import com.cmd.report.inputs.arguments.ui.CommandLineUI;
import com.cmd.report.inputs.arguments.ui.UI;
import com.cmd.report.mailconnector.XMailConnector;
import com.cmd.report.mailsendor.XMailSender;
import com.cmd.report.output.OutputFactory;

public class main {
    public static void main(String[] args){
        UI ui =new CommandLineUI();
        Inputs inputs=new CommandLineInputs(args,ui);
        DBConnector dbConnector = new MySqlDBConnector();
        DBController dbController = new MySqlDBController();
        XMailConnector xMailConnector = new XMailConnector();
        XMailSender xMailSender =new XMailSender();
        ReportQuery reportQuery = new ReportQuery();
        ReportFactory reportFactory = new ReportFactory();
        DataCounter dataCounter = new DataCounter();
        WriteDataToExcel writeDataToExcel = new WriteDataToExcel();
        OutputFactory outputFactory = new OutputFactory();



        ReportApp app = new ReportApp(ui,inputs,dbConnector,dbController,xMailConnector,xMailSender,reportQuery, reportFactory,dataCounter,writeDataToExcel,outputFactory);

        app.execute();

    }
}
