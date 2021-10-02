package com.cmd.report.output;

import com.cmd.report.mailsendor.XMailSender;

import javax.mail.Session;

public class OutputEmail implements Output{

    public String outputExecute(String Savetype, String Email, Session session, XMailSender xMailSender){
        xMailSender.sendmessage(session,Email);
        return "Mail Sent Successfully";
    }
}
