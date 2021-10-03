<<<<<<< HEAD:src/test/main/java/com/cmd/report/inputs/arguments/commandlineinputs/CommandLineInputsTest.java
package com.cmd.report.inputs.arguments.commandlineinputs;

import com.cmd.report.inputs.arguments.InvalidArgumentsCountException;
=======
package com.cmd.report.inputs.arguments;

>>>>>>> 090d73f594da06d8389eb1a5c17ae8a308827c49:src/test/main/java/com/cmd/report/inputs/arguments/CommandLineInputsTest.java
import com.cmd.report.inputs.arguments.arguments_counter.ArgumentsCounter;
import com.cmd.report.inputs.arguments_validators.*;
import org.junit.Test;
import static org.junit.Assert.assertThrows;

public class CommandLineInputsTest  {

    @Test
    public void if_argument_count_is_wrong_throw_exception() throws InvalidArgumentsCountException {
        ArgumentsCounter argumentsCounter= new ArgumentsCounter(new String[]
                {"monthly_sales_report", "2020-01-31", "2021-02-21"});

        assertThrows(InvalidArgumentsCountException.class,() ->{argumentsCounter.verifyArgumentsCount();});
    }

    @Test
    public void if_first_argument_is_wrong_throw_exception() throws InvalidArgumentsCountException {
        ReportTypeValidator validator= new ReportTypeValidator(
                new String[]{"sales_report", "2020-01-31", "2021-02-21","Email","isu@gmail.com"});

        assertThrows(InvalidInputException.class,() ->{validator.validateArgument();});
    }

    @Test
    public void if_second_and_third_argument_is_wrong_throw_exception() throws InvalidArgumentsCountException {
        DateValidator validator= new DateValidator(new String[]
                {"monthly_sales_report", "2020-01-56", "2021-02-70","Email","isu@gmail.com"});

        assertThrows(InvalidInputException.class,() ->{validator.validateArgument();});
    }

    @Test
    public void if_fourth_argument_is_wrong_throw_exception() throws InvalidArgumentsCountException {
        OutputTypeValidator validator= new OutputTypeValidator(new String[]
                {"monthly_sales_report", "2020-01-31", "2021-02-21","hello","isu@gmail.com"});

        assertThrows(InvalidInputException.class,() ->{validator.validateArgument();});
    }

    @Test
    public void if_fifth_argument_is_wrong_throw_exception() throws InvalidArgumentsCountException {
        EmailValidator validator= new EmailValidator(new String[]
                {"monthly_sales_report", "2020-01-31", "2021-02-21","Email","isugmail.com"});

        assertThrows(InvalidInputException.class,() ->{validator.validateArgument();});
    }

}