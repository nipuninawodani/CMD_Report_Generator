package com.cmd.report.inputs.arguments;
import com.cmd.report.inputs.arguments.arguments_counter.ArgumentsCounter;
import com.cmd.report.inputs.arguments.ui.CommandLineUI;
import com.cmd.report.inputs.arguments.ui.UI;
import com.cmd.report.inputs.arguments_validators.ArgumentsValidator;
import com.cmd.report.inputs.arguments_validators.*;

public class Main {
    public static void main(String[] args) throws InvalidArgumentsCountException {

        //String[] names = {"monthly_sales_report", "2020-01-31", "2021-02-21","Email","isu@gmail.com"};

        UI ui =new CommandLineUI();
        ArgumentsCounter argumentsCounter=new ArgumentsCounter(args);

        Inputs inputs=new CommandLineInputs(args,ui,argumentsCounter);
        String[] arguments= inputs.validateArgumentArray();
    }
}
