package com.cmd.report.output;

import com.cmd.report.mailsendor.MailSender;
import com.cmd.report.mailsendor.XMailSenderException;

import javax.mail.Session;

public class OutputEmail implements Output{

    public String outputExecute(String[] arguments, Session session, MailSender mailSender) throws OutputException {
        try {
            mailSender.sendmessage(session,arguments[4]);
        } catch (XMailSenderException e) {
            throw new OutputException(e);
        }
        return "Mail Sent Successfully";
    }
}
