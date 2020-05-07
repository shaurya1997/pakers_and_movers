<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forgot Password</title>
</head>
<body>
<%
try
{
 Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Pakers_and_Movers","root","");
String email=request.getParameter("email");

 Statement stmt=con.createStatement();
 ResultSet rs=stmt.executeQuery("select count(*) from customer where cust_email='"+email+"'");
 rs.next();
 int chk=rs.getInt(1);
 if(chk>0)
 {
     
 
  ResultSet rs1 = stmt.executeQuery("SELECT cust_pass FROM customer where cust_email='"+email+"'");
  rs1.next();
   String Countrow = rs1.getString("CUST_PASS");
    out.println("<h1>password  : "+Countrow+"</h1>");
   
    String result;
    final String to=request.getParameter("email").toString();
    final String subject="Password Retrieval";
    final String msg="Your password is ".concat(Countrow);
    final String from="shauryarastogi4@gmail.com";
    final String pass="Shauryarastogi@123#";
    
    String host="smtp.gmail.com";
    Properties props=new Properties();
  
    props.put("mail.smtp.host",host);
    props.put("mail.transport.protocol", "smtp");
    props.put("mail.smtp.auth","true");
    props.put("mail.smtp.starttls.enable","true");
    props.put("mail.smtp.user",from);
    props.put("mail.smtp.password",pass);
    props.put("mail.smtp.port","587");
    
    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });
    try
    {
        MimeMessage message=new MimeMessage(mailSession);
        message.setFrom(new InternetAddress(from));
        message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
        message.setSubject(subject);
        message.setText(msg);
        Transport.send(message);
//        result="Message sent successfully.";
        
    }
    catch(MessagingException mex)
    {
        mex.printStackTrace();
//        result="Error..... Unabel to send message";
    }
    
    
    
out.println("<script>alert('Password sent to the email id .'); window.location.href='login.jsp';</script>");
}
else{
out.println("<script>alert('Error.....Invalid Email.'); window.location.href='login.jsp';</script>");
}
}
catch (Exception e){
e.printStackTrace();
}
%>
</body>
</html>