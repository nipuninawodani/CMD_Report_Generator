package com.cmd.report.output;

import org.junit.Test;

import static org.hamcrest.CoreMatchers.instanceOf;
import static org.hamcrest.MatcherAssert.assertThat;

public class OutputFactoryTest {

    //If  OutputType is File should return a object of OutputFile class.
    @Test
    public void should_return_OutputFile_object_when_OutputType_is_file() {
        OutputFactory outputFactory = new OutputFactory();
        Output output = outputFactory.outputGenaration("File");

        //verify that the output object is an instance of OutputFile class
        assertThat(output, instanceOf(OutputFile.class));
    }

    @Test
    public void should_return_OutputEmail_object_when_OutputType_is_email() {
        //If  OutputType is email should return a object of OutputEmail class.
        OutputFactory outputFactory = new OutputFactory();
        Output output = outputFactory.outputGenaration("Email");

        //verify that the output object is an instance of OutputEmail class
        assertThat(output, instanceOf(OutputEmail.class));
    }

}