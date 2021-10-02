import mailconnector.XMailConnector;
import mailsendor.XMailSender;

import javax.mail.Session;

public class Main {

    public static void main(String[] args) throws Exception {

        XMailConnector xMailSender = new XMailConnector();
        Session session = xMailSender.getSession();

        XMailSender sendMail = new XMailSender();
        String message = sendMail.sendmessage(session,"tharakasachin98@gmail.com");

        System.out.println(message);
    }
}
