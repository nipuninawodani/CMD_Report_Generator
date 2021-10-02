package com.cmd.report.inputs.arguments_validators;

import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class EmailValidator implements ArgumentsValidator {

    private String[] arguments;
    public EmailValidator(String[] args){

        this.arguments= Arrays.copyOf(args,args.length);
    }
    Pattern pattern = Pattern.compile("^(.+)@(.+)$");

    public void validateArgument() throws InvalidInputException {

        //Make sure the fifth argument is a valid Email address

        Matcher mail = pattern.matcher(arguments[4]);
        if (!(mail.find())) {
            throw new InvalidInputException("You have not given a valid email address");
        }

    }
}
