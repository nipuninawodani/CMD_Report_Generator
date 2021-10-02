package com.cmd.report.output;

public class OutputFactory {
    public Output outputGenaration(String Savetype){

        Output output = null;
        switch (Savetype) {
            case "File":
                output = new OutputFile();
                break;
            case "Email":
                output = new OutputEmail();
                break;
        }
        return output;
    }
}
