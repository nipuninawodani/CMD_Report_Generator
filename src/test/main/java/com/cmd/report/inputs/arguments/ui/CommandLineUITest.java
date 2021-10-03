package com.cmd.report.inputs.arguments.ui;

import com.cmd.report.inputs.arguments.InvalidArgumentsCountException;
import org.junit.Test;

import static com.github.stefanbirkner.systemlambda.SystemLambda.tapSystemOut;
import static org.junit.Assert.assertEquals;

public class CommandLineUITest {

    @Test
    public void check_whether_the_message_prints() throws InvalidArgumentsCountException, Exception {

        CommandLineUI commandLineUI = new CommandLineUI();
        String text = tapSystemOut(() -> {
            commandLineUI.showMessage("Hello");
        });

        assertEquals("Hello", text.trim());

    }

}