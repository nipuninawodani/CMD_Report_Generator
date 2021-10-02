package mailsendor;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class XMailSender {
    public String sendmessage(Session session, String recepient) {
        String myAccountEmail = "sachintharakaedu@gmail.com";
        Message message = new MimeMessage(session);
        try {
            message.setFrom(new InternetAddress(myAccountEmail));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(recepient));
            message.setSubject("My first email from Java");
            message.setText("Hey there You were Added to the branch");

            Transport.send(message);
            return "Message Sent Successfully";
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        return null;
    }

}

