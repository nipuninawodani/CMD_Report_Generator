package com.cmd.report.inputs.arguments_validators;

import org.junit.Test;

import static org.junit.Assert.*;

public class ReportTypeValidatorTest{

    @Test
    public void should_give_an_exception_when_the_first_argument_is_not_order_report() throws InvalidInputException{

        String[] args= {"order_report", "2020-05-16", "2020-08-16", "Email waruni@gmail.com" };

        ReportTypeValidator reportTypeValidator = new ReportTypeValidator(args);

        assertThrows(InvalidInputException.class, () ->{
            reportTypeValidator.validateArgument();
        });
    }

    @Test
    public void should_give_an_exception_when_the_first_argument_is_not_user_login_report() throws InvalidInputException{

        String[] args= {"user_login_report", "2020-05-16", "2020-08-16", "Email", "waruni@gmail.com" };

        ReportTypeValidator reportTypeValidator = new ReportTypeValidator(args);

        assertThrows(InvalidInputException.class, () ->{
            reportTypeValidator.validateArgument();
        });
    }


}