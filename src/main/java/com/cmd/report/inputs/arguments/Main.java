package com.cmd.report.inputs.arguments;
import com.cmd.report.inputs.arguments.ui.CommandLineUI;
import com.cmd.report.inputs.arguments.ui.UI;

public class Main {
    public static void main(String[] args) throws InvalidInputCountException {

        //String[] names = {"monthly_sales_report", "2020-01-31", "2021-02-21","Email","isu@gmail.com"};

        UI ui =new CommandLineUI();
        Inputs inputs=new CommandLineInputs(args,ui);
        String[] arguments= inputs.validateArgumentArray();
    }
}
