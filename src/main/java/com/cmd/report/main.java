package com.cmd.report;

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

import java.sql.Connection;

public class main {
    public static void main(String[] args){
        UI ui =new CommandLineUI();
        Inputs inputs=new CommandLineInputs(args,ui);
        DBConnector dbConnector = new MySqlDBConnector();
        DBController dbController = new MySqlDBController();
        XMailConnector xMailConnector = new XMailConnector();
        XMailSender xMailSender =new XMailSender();

        ReportApp app = new ReportApp(inputs,dbConnector,dbController,xMailConnector,xMailSender);

        app.execute();

    }
}
