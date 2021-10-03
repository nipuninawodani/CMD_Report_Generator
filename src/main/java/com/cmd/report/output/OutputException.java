package com.cmd.report.output;

import com.cmd.report.mailsendor.XMailSenderException;
public class OutputException extends Exception {
    public  OutputException(XMailSenderException e) {
        super(e);
    }
}
