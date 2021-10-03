package com.cmd.report.inputs.arguments_validators;

import org.junit.Test;

import static org.junit.jupiter.api.Assertions.assertThrows;

public class OutputTypeValidatorTest {
    @Test
    public void should_give_an_exception_when_the_output_type_argument_is_Wrong() throws InvalidInputException{

        String[] args= {"order_report", "2020-05-16", "2020-08-16", "Emil", "waruni@gmail.com" };

        OutputTypeValidator outputTypeValidator = new OutputTypeValidator(args);

        assertThrows(InvalidInputException.class, () ->{
            outputTypeValidator.validateArgument();
        });
    }
}