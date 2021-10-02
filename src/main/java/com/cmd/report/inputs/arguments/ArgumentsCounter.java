package com.cmd.report.inputs.arguments;

import java.util.Arrays;

public class ArgumentsCounter{

    private String[] arguments;

    public ArgumentsCounter(String[] args){

        this.arguments= Arrays.copyOf(args,args.length);
    }

    String message = "You have to provide the below as command line arguments in order\n" +
            "1. Type of the report - monthly_sales_report \n" +
            "2. The report time period - Start time in the format yyyy-mm-dd\n" +
            "3. The report time period - End time in the format yyyy-mm-dd\n" +
            "4. The method of receiving the output(Email/File)\n" +
            "5. Email address of the user\n";

    public void verifyArgumentsCount() throws InvalidInputCountException {

        //Make sure arguments are included
        if (arguments.length < 4 || arguments.length > 5) {
            throw new InvalidInputCountException(message);
        }

        /*Make sure 5 arguments are included when receiving type is Email*/
        if (arguments[3].equals("Email") && arguments.length == 4) {
            throw new InvalidInputCountException("You have to provide your email as the fifth argument");
        }
    }
}
