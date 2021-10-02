package com.cmd.report.inputs.arguments;

import com.cmd.report.inputs.arguments.InvalidArgumentsCountException;

public interface Inputs {

     String[] validateArgumentArray()  throws InvalidArgumentsCountException;
}
