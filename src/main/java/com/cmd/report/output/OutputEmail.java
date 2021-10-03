package com.cmd.report.output;

import com.cmd.report.mailsendor.XMailSender;

import javax.mail.Session;

public class OutputEmail implements Output{

    public String outputExecute(String[] arguments, Session session, XMailSender xMailSender){
        xMailSender.sendmessage(session,arguments[4]);
        return "Mail Sent Successfully";
    }
}
