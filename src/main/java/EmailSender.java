import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class EmailSender {
    private final String host;
    private final String port;
    private final String senderEmail;
    private final String password;

    public EmailSender() {
        this.host = "smtp.gmail.com";
        this.port = "587";
        this.senderEmail = "adulaty@gmail.com";
        this.password = "kcyy frxl crwq kxcd";
    }

    public void sendEmail(String recipientEmail, String title,String emailContent) {
        Properties properties = new Properties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", port);
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(properties, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(senderEmail, password);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(senderEmail));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail));
            message.setSubject(title);

            
            message.setText(emailContent);

            Transport.send(message);

            System.out.println("Email sent successfully to " + recipientEmail);

        } catch (MessagingException e) {
            throw new RuntimeException("Failed to send email to " + recipientEmail, e);
        }
    }
}
