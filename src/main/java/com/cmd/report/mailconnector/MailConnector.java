package com.cmd.report.mailconnector;

import javax.mail.Session;

public interface MailConnector {

    public Session getSession() throws Exception;
}
