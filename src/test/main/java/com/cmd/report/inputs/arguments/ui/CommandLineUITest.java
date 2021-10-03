package com.cmd.report.inputs.arguments.ui;

import com.cmd.report.inputs.arguments.InvalidArgumentsCountException;
import com.cmd.report.inputs.arguments.arguments_counter.ArgumentsCounter;
import org.junit.Test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertThrows;

public class CommandLineUITest {

    @Test
    public void check_whether_the_message_prints() throws InvalidArgumentsCountException {

        CommandLineUI commandLineUI = new CommandLineUI();
        String text = tapSystemOut(() -> {
            commandLineUI.showMessage("Hello");
        });

        assertEquals("Hello", text.trim());

    }

}