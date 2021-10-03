package com.cmd.report.inputs.arguments.selector;

import com.cmd.report.inputs.arguments_validators.InvalidInputException;

public interface TypeSelector {

    void decideAndValidate() throws InvalidInputException;
}
