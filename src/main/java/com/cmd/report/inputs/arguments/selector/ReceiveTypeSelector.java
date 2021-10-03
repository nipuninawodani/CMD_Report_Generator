package com.cmd.report.inputs.arguments.selector;

import com.cmd.report.inputs.arguments.InvalidArgumentsCountException;
import com.cmd.report.inputs.arguments_validators.EmailValidator;
import com.cmd.report.inputs.arguments_validators.InvalidInputException;


public class ReceiveTypeSelector implements TypeSelector{

    private EmailValidator validator;

    public ReceiveTypeSelector(EmailValidator validator){
        this.validator=validator;
    }

    public void decideAndValidate() throws  InvalidInputException {
        if(validator.arguments[3].equals("Email")) {
            validator.validateArgument();
        }
    }
}
