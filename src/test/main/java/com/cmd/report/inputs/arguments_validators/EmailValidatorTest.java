package com.cmd.report.inputs.arguments_validators;

import org.junit.Test;

import static org.junit.jupiter.api.Assertions.assertThrows;

public class EmailValidatorTest {

    @Test
    public void should_give_an_exception_when_the_email_argument_is_Wrong() throws InvalidInputException{

        String[] args= {"order_report", "2020-05-16", "2020-08-16", "Email", "warunigmail.com" };

        EmailValidator emailValidator = new EmailValidator(args);

        assertThrows(InvalidInputException.class, () ->{
            emailValidator.validateArgument();
        });
    }

}