<%-- 
    Document   : SendEmail
    Created on : 25.okt.2017, 12:54:27
    Author     : vegar
--%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
   String result;
   String to = "to@gmail.com";
   String from = "from@gmail.com";
   String host = "localhost";
   Properties properties = System.getProperties();
   properties.setProperty("mail.smtp.host", host);
   Session mailSession = Session.getDefaultInstance(properties);
   try{
      MimeMessage message = new MimeMessage(mailSession);
      message.setFrom(new InternetAddress(from));
      message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
      message.setSubject("This is the Subject Line!");
      message.setText("This is actual message");
      Transport.send(message);
      result = "Sent message successfully....";
   }catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error: unable to send message....";
   }
%>
<html>
<body>
<center>
</center>
<p align="center">
<% 
   out.println("Result: " + result + "\n");
%>
</p>
</body>
</html>