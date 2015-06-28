import java.io.IOException;
import java.util.Properties;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.mail.*;
import javax.mail.internet.*;


public class FormServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");

		if (!message.equals(null)) {
			
			String host = "smtp.gmail.com";
			int port = 587;
			String username = "semjupiter@gmail.com";
			String password = "jupiter05";
			
			Properties props = new Properties();
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.port", "587");
			Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(
                            "semjupiter@gmail.com", "jupiter05");// Specify the Username and the PassWord
                }
            });
			
			String body = ("From: \t" + name + "\n" + "Email: \t" +  email + "\n\n" + subject + "\n\n" + message);

			try {
				Message m = new MimeMessage(session);
				m.setFrom(new InternetAddress(email, "TIME2EAT"));
				m.addRecipient(Message.RecipientType.TO, new InternetAddress(
						"semjupiter@gmail.com"));
				
				
				m.setSubject("TIME2EAT");
				m.setText(body);
				
				
				Transport transport = session.getTransport("smtp");
				transport.connect(host, port, username, password);
				
				Transport.send(m);
				
				System.out.println("Thank you for your message!");
				
				transport.close();
				
			
			} catch (AddressException e) {
				e.printStackTrace();
			} catch (javax.mail.MessagingException e) {
				e.printStackTrace();
			}
			
			
			RequestDispatcher view = request.getRequestDispatcher("contactus.jsp");

			view.forward(request, response);
		}
	}
}