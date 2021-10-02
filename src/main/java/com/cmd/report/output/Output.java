package com.cmd.report.output;

import com.cmd.report.mailsendor.XMailSender;

import javax.mail.Session;

public interface Output {
    String outputExecute(String Savetype, String Email, Session session, XMailSender xMailSender);
}
