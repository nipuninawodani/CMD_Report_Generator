package com.cmd.report.mailsendor;

import javax.mail.Session;

public interface MailSender {

    public String sendmessage(Session session, String recepient) throws XMailSenderException;
}
