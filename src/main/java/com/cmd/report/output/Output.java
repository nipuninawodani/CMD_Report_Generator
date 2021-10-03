package com.cmd.report.output;

import com.cmd.report.mailsendor.MailSender;

import javax.mail.Session;

public interface Output {
    String outputExecute(String[] arguments, Session session, MailSender mailSender) throws OutputException;
}
