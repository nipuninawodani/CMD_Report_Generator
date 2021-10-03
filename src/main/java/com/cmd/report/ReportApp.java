package com.cmd.report;

import com.cmd.report.Report_Generator.*;
import com.cmd.report.SaveInExcel.WriteDataToExcel;
import com.cmd.report.connector.DBConnector;
import com.cmd.report.connector.DBConnectorException;
import com.cmd.report.controller.DBController;
import com.cmd.report.controller.DBControllerException;
import com.cmd.report.inputs.arguments.InvalidArgumentsCountException;
import com.cmd.report.inputs.arguments.commandlineinputs.Inputs;
import com.cmd.report.inputs.arguments.ui.UI;
import com.cmd.report.mailconnector.MailConnector;
import com.cmd.report.mailsendor.MailSender;
import com.cmd.report.output.Output;
import com.cmd.report.output.OutputFactory;

import javax.mail.Session;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ReportApp {
    private final UI ui;
    private final Inputs inputs;
    private final DBConnector dbConnector;
    private final DBController dbController;
    private final MailConnector mailConnector;
    private final MailSender mailSender;
    private final ReportQuery reportQuery;
    private final ReportFactory reportFactory;
    private final DataCounter dataCounter;
    private final WriteDataToExcel writeDataToExcel;
    private final OutputFactory outputFactory;


    public ReportApp(UI ui, Inputs inputs, DBConnector dbConnector, DBController dbController, MailConnector mailConnector, MailSender mailSender, ReportQuery reportQuery, ReportFactory reportFactory, DataCounter dataCounter, WriteDataToExcel writeDataToExcel, OutputFactory outputFactory){

        this.ui = ui;
        this.inputs = inputs;
        this.dbConnector = dbConnector;
        this.dbController = dbController;
        this.mailConnector =mailConnector;
        this.mailSender = mailSender;
        this.reportQuery = reportQuery;
        this.reportFactory = reportFactory;
        this.dataCounter = dataCounter;
        this.writeDataToExcel = writeDataToExcel;
        this.outputFactory = outputFactory;

    }

    public void execute(){
        try {
            String[] arguments= inputs.validateArgumentArray();
            Connection connection = dbConnector.getConnection();
            String query = reportQuery.Reportquery(arguments[0],arguments[1],arguments[2]);
            ResultSet results = dbController.getResults(connection, query);
            Report report = reportFactory.reportGeneration(arguments[0]);
            int countData = dataCounter.countData(results);
            Object[][] TableData = report.ReportExecute(results,countData);
            writeDataToExcel.ExcelCreation(TableData);
            Session session =mailConnector.getSession();
            Output output = outputFactory.outputGenaration(arguments[3]);
            String message = output.outputExecute(arguments,session,mailSender);
            ui.showMessage(message);

        } catch ( InvalidArgumentsCountException | DBConnectorException | DBControllerException | SQLException | IOException | ResultsetSQLExeption e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
