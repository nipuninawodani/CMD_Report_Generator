package com.cmd.report.v1;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Main {
    public static void main(String[] args) {


        String message= "You have to provide the below as command line arguments in order\n" +
                "1. Type of the report - monthly_sales_report \n" +
                "2. The report time period - Start time in the format yyyy-mm-dd\n" +
                "3. The report time period - End time in the format yyyy-mm-dd\n" +
                "4. The method of receiving the output(Email/File)\n" +
                "5. Email address of the user\n";

        //Make sure arguments are included
        if(args.length<4 || args.length>5){
            System.out.println("message");
            return ;
        }

        /*Make sure 5 arguments are included when receiving type is Email*/
        if(args[3].equals("Email") && args.length==4) {
            System.out.println("You have to provide your email as the fifth argument");
            return ;
        }

        //Make sure the first argument is monthly_sales_report
        if(!(args[0].equals("monthly_sales_report"))){
            System.out.println("Type of the report should be stated as monthly_sales_report");
            return ;
        }

        //Make sure the second and third arguments are dates
        DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        for(int i=1; i<=2;i++) {
            try {
                LocalDate.parse(args[i], dateFormatter);
            } catch (DateTimeParseException e) {
                System.out.println("Invalid date");
            }
        }



        //Make sure the fourth argument is Email or File
        if(!(args[3].equals("Email") || args[3].equals("File"))){
            System.out.println("The method of receiving the output should be Email/File");
            return ;
        }


        //Make sure the fifth argument is Email or File
        Pattern pattern = Pattern.compile("^[A-Za-z0-9._]{1,16}+@{1}+[a-z]{1,7}\\.[a-z]{1,3}$");
        Matcher mail = pattern.matcher(args[4]);

        if (!(mail.find())) {
            System.out.println("You have not given a valid email address");
        }


    }

}

