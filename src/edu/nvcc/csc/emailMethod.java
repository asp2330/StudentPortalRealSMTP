package edu.nvcc.csc;
import java.util.ArrayList;
import java.util.Properties;
import java.util.Random;
import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class emailMethod {
    public static void sendEmail(String to, String from, String subject, String text, String smtpHost) {
        try {
            final String username = "testcompscience@gmail.com";
            final String password = "computersciencetestemail";
            Properties properties = new Properties();
            properties.put("mail.smtp.auth", "true");
            properties.put("mail.smtp.starttls.enable", "true");
            properties.put("mail.smtp.host", "smtp.gmail.com");
            properties.put("mail.smtp.port", "587");


            Session emailSession = Session.getInstance(properties,
                    new javax.mail.Authenticator() {
                        protected PasswordAuthentication getPasswordAuthentication() {
                            return new PasswordAuthentication(username, password);
                        }});



            Message emailMessage = new MimeMessage(emailSession);
            emailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            emailMessage.setFrom(new InternetAddress(from));
            emailMessage.setSubject(subject);
            emailMessage.setText(text);

            emailSession.setDebug(true);

            Transport.send(emailMessage);
        } catch (AddressException e) {
            e.printStackTrace();
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

    public static int[] RNGNoDupe(int cap)
    {
        int[] array = new int[cap];
        int x = 0;

        ArrayList<Integer> list = new ArrayList<Integer>(cap);
        for (int i = 1; i <= cap; i++) {
            list.add(i);}

        Random rand = new Random();

        while (list.size() > 0)
        {
            int index = rand.nextInt(list.size());
            array[x] = list.remove(index)-1;
            x++;
        }

        return array;
    }
}

