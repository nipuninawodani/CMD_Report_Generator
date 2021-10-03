package com.cmd.report.mailconnector;

import javax.mail.*;
import java.util.Properties;

public class XMailConnector {
    public Session getSession() throws Exception {

    Properties properties = new Properties();

        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");

    String myAccountEmail = "sachintharakaedu@gmail.com";
    String password = "eduthara@818";

    Session session = Session.getInstance(properties, new Authenticator() {
        @Override
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(myAccountEmail, password);
        }
    });
    return session;

    }
}
