package com.cmd.report.output;

import com.cmd.report.mailsendor.XMailSender;

import javax.mail.Session;

public class OutputFile implements Output{
    public String outputExecute(String[] arguments, Session session, XMailSender xMailSender){
        return "File Saved Successfully";
    }
}
