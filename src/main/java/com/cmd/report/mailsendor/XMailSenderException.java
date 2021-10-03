package com.cmd.report.mailsendor;

import javax.mail.MessagingException;

public class XMailSenderException extends Throwable {

    public XMailSenderException(MessagingException e,String message){

        super(message);
    }
}
