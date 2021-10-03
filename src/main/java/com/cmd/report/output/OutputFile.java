package com.cmd.report.output;

import com.cmd.report.mailsendor.MailSender;

import javax.mail.Session;

public class OutputFile implements Output{
    public String outputExecute(String[] arguments, Session session, MailSender mailSender){
        return "File Saved Successfully";
    }
}
