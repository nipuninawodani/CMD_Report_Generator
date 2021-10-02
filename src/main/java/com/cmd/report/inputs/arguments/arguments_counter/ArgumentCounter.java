package com.cmd.report.inputs.arguments.arguments_counter;

import com.cmd.report.inputs.arguments.InvalidArgumentsCountException;

public interface ArgumentCounter {

    void verifyArgumentsCount() throws InvalidArgumentsCountException;
}
