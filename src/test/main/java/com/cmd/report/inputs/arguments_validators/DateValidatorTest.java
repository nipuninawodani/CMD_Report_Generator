package com.cmd.report.inputs.arguments_validators;

import org.junit.Test;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.*;
import static org.junit.Assert.assertThrows;

public class DateValidatorTest {

    @Test
    public void should_give_an_exception_when_dates_arguments_are_Wrong() throws InvalidInputException{

        String[] args= {"order_report", "2020-05-10", "2020-08-04", "Email", "waruni@gmail.com" };

        DateValidator dateValidator = new DateValidator(args);

        assertThrows(InvalidInputException.class, () ->{
            dateValidator.validateArgument();
        });
    }
}