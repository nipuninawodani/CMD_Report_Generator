package com.cmd.report.inputs.arguments_validators;

import org.junit.Test;

import static org.junit.jupiter.api.Assertions.assertThrows;

public class DateValidatorTest {

    @Test
    public void should_give_an_exception_when_dates_arguments_are_Wrong() throws InvalidInputException{

        String[] args= {"order_report", "202-05-10", "2020-08-04", "Email", "waruni@gmail.com" };

        DateValidator dateValidator = new DateValidator(args);

        assertThrows(InvalidInputException.class, () ->{
            dateValidator.validateArgument();
        });
    }
}