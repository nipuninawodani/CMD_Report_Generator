package com.cmd.report.inputs.arguments_validators;

import java.util.Arrays;

public class OutputTypeValidator implements  ArgumentsValidator {

    private String[] arguments;
    public OutputTypeValidator(String[] args){

        this.arguments= Arrays.copyOf(args,args.length);
    }

    public void validateArgument() throws InvalidInputException {

        //Make sure the fourth argument is Email or File
        if(!(arguments[3].equals("Email") || arguments[3].equals("File"))){
            throw new InvalidInputException("The method of receiving the output should be Email/File");
        }
    }
}
