package com.cmd.report.inputs.arguments_validators;

import java.util.Arrays;

public class ReportTypeValidator implements ArgumentsValidator {

    private String[] arguments;
    public ReportTypeValidator(String[] args){

        this.arguments= Arrays.copyOf(args,args.length);
    }

    public void validateArgument() throws InvalidInputException {

        //Make sure the first argument is monthly_sales_report
        if(!(arguments[0].equals("monthly_sales_report"))){
            throw new InvalidInputException("Type of the report should be stated as monthly_sales_report");
        }

    }
}
