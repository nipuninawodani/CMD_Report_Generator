package com.cmd.report.inputs.arguments_validators;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.Arrays;

public class DateValidator implements ArgumentsValidator {

    private String[] arguments;
    public DateValidator(String[] args){

        this.arguments= Arrays.copyOf(args,args.length);
    }

    public void validateArgument() throws InvalidInputException {
        //Make sure the second and third arguments are valid dates
        DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        for (int i = 1; i <= 2; i++) {
            try {
                LocalDate.parse(arguments[i], dateFormatter);

            } catch (DateTimeParseException e) {
                throw new InvalidInputException("Invalid date");
            }
        }

    }

}
