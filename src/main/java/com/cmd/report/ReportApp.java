package com.cmd.report;

import com.cmd.report.connector.DBConnector;
import com.cmd.report.controller.DBController;
import com.cmd.report.inputs.arguments.Inputs;
import com.cmd.report.inputs.arguments.InvalidInputCountException;
import com.cmd.report.mailconnector.XMailConnector;
import com.cmd.report.mailsendor.XMailSender;

public class ReportApp {
    private final Inputs inputs;

    public ReportApp(Inputs inputs, DBConnector dbConnector, DBController dbController, XMailConnector xMailConnector, XMailSender xMailSender){

        this.inputs = inputs;
    }

    public void execute(){
        try {
            String[] arguments= inputs.validateArgumentArray();
            System.out.println(arguments);
        } catch (InvalidInputCountException e) {
            e.printStackTrace();
        }
    }
}
