package com.cmd.report.inputs.arguments;

import com.cmd.report.inputs.arguments.arguments_counter.ArgumentsCounter;
import com.cmd.report.inputs.arguments.ui.UI;
import com.cmd.report.inputs.arguments_validators.*;
import com.cmd.report.inputs.arguments_validators.InvalidInputException;

import java.util.Arrays;

public class CommandLineInputs implements Inputs {

    private String[] arguments;
    private ArgumentsValidator validator;
    private final UI ui;
    private  ArgumentsCounter argumentsCounter;

    public CommandLineInputs(String[] args, UI ui,ArgumentsCounter argumentsCounter){

        this.arguments= Arrays.copyOf(args,args.length);
        this.ui=ui;
        this.argumentsCounter= argumentsCounter;
    }

    public String[] validateArgumentArray() {

        try {

            argumentsCounter.verifyArgumentsCount();

            validator= new ReportTypeValidator(arguments);
            validator.validateArgument();

            validator = new DateValidator(arguments);
            validator.validateArgument();

            validator= new OutputTypeValidator(arguments);
            validator.validateArgument();

            validator= new EmailValidator(arguments);
            validator.validateArgument();

            ui.showMessage("Your report will be ready in few minutes");

        } catch (InvalidInputException | InvalidArgumentsCountException e ) {
            ui.showMessage("Error Occurred!" + e.getMessage());
        }
        return arguments;
    }
}
