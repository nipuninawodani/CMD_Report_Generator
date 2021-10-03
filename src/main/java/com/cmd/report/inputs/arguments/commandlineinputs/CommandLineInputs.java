package com.cmd.report.inputs.arguments.commandlineinputs;

import com.cmd.report.inputs.arguments.InvalidArgumentsCountException;
import com.cmd.report.inputs.arguments.arguments_counter.ArgumentCounter;
import com.cmd.report.inputs.arguments.selector.*;
import com.cmd.report.inputs.arguments.ui.UI;
import com.cmd.report.inputs.arguments_validators.*;

import static java.util.Arrays.copyOf;

public class CommandLineInputs implements Inputs {

    private String[] arguments;
    private ArgumentsValidator validator;
    private final UI ui;
    private ArgumentCounter argumentCounter;
    private TypeSelector receiveTypeSelector;

    public CommandLineInputs(String[] args, UI ui){

        this.arguments= copyOf(args,args.length);
        this.ui=ui;

    }

    public String[] validateArgumentArray() {

        try {

            argumentCounter.verifyArgumentsCount();

            validator= new ReportTypeValidator(arguments);
            validator.validateArgument();

            validator = new DateValidator(arguments);
            validator.validateArgument();

            validator= new OutputTypeValidator(arguments);
            validator.validateArgument();

            receiveTypeSelector = new ReceiveTypeSelector((EmailValidator) validator);
            receiveTypeSelector.decideAndValidate();

            ui.showMessage("Your report will be ready in few minutes");

        } catch (InvalidInputException | InvalidArgumentsCountException e ) {
            ui.showMessage("Error Occurred!" + e.getMessage());
        }
        return arguments;
    }
}
