package com.cmd.report.inputs.arguments;

import com.cmd.report.inputs.arguments.ui.UI;
import com.cmd.report.inputs.arguments_validators.*;

import static java.util.Arrays.copyOf;

public class CommandLineInputs implements Inputs {

    private String[] arguments;
    private ArgumentsValidator validator;
    private final UI ui;

    public CommandLineInputs(String[] args, UI ui){

        this.arguments= copyOf(args,args.length);
        this.ui=ui;
    }

    public String[] validateArgumentArray() {

        try {

            ArgumentsCounter argumentsCounter=new ArgumentsCounter(arguments);
            argumentsCounter.verifyArgumentsCount();

            validator= new ReportTypeValidator(arguments);
            validator.validateArgument();

            validator = new DateValidator(arguments);
            validator.validateArgument();

            validator= new OutputTypeValidator(arguments);
            validator.validateArgument();
            if(arguments[3] == "Email") {
                validator = new EmailValidator(arguments);
                validator.validateArgument();
            }
            ui.showMessage("Your report will be ready in few minutes");

        } catch (InvalidInputException |InvalidInputCountException e ) {
            ui.showMessage("Error Occurred!" + e.getMessage());
        }
        return arguments;
    }
}
