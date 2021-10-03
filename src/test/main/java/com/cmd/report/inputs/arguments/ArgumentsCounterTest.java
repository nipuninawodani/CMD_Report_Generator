<<<<<<< HEAD:src/test/main/java/com/cmd/report/inputs/arguments/arguments_counter/ArgumentsCounterTest.java
package com.cmd.report.inputs.arguments.arguments_counter;

import com.cmd.report.inputs.arguments.InvalidArgumentsCountException;

import org.junit.Test;

=======
package com.cmd.report.inputs.arguments;

import com.cmd.report.inputs.arguments.arguments_counter.ArgumentsCounter;
import org.junit.Test;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.is;
>>>>>>> 090d73f594da06d8389eb1a5c17ae8a308827c49:src/test/main/java/com/cmd/report/inputs/arguments/ArgumentsCounterTest.java
import static org.junit.Assert.assertThrows;

public class ArgumentsCounterTest {
    //{"monthly_sales_report", "2020-01-31", "2021-02-21","Email","isu@gmail.com"}

    @Test
    public void argument_count_should_not_be_less_than_four() throws InvalidArgumentsCountException {
        ArgumentsCounter argumentsCounter= new ArgumentsCounter(new String[]
                {"monthly_sales_report", "2020-01-31", "2021-02-21"});

        assertThrows(InvalidArgumentsCountException.class,() ->{argumentsCounter.verifyArgumentsCount();});
    }
    @Test
    public void argument_count_should_not_be_greater_than_five() throws InvalidArgumentsCountException {
        ArgumentsCounter argumentsCounter= new ArgumentsCounter(new String[]
                {"monthly_sales_report", "2020-01-31", "2021-02-21","Email","isu@gmail.com","hello"});

        assertThrows(InvalidArgumentsCountException.class,() ->{argumentsCounter.verifyArgumentsCount();});
    }
    @Test
    public void if_fourth_argument_is_email_arguments_count_should_be_five() throws InvalidArgumentsCountException {
        ArgumentsCounter argumentsCounter= new ArgumentsCounter(new String[]
                {"monthly_sales_report", "2020-01-31", "2021-02-21","Email"});

        assertThrows(InvalidArgumentsCountException.class,() ->{argumentsCounter.verifyArgumentsCount();});
    }

}