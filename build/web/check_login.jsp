
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>paker and mover</title>
    </head>
    <body>

<%
    String u_name="";
   try
   {
    u_name=session.getAttribute("uname").toString();
//Class.forName("com.mysql.jdbc.Driver");
//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Pakers_and_Movers","root","");
// Statement stmt=con.createStatement();
// ResultSet rs=stmt.executeQuery("select count(*) from customer where CUST_EMAIL='"+email+"' and CUST_PASSWORD='"+pass+"' ");
// rs.next();
// int chk=rs.getInt(1);
// //out.println("<h1>Id  : "+chk+"</h1>");
 if (u_name.equals("") || u_name.length()==0) {
//     session.setAttribute("uname", email);
        out.println("<script>alert('Kindly Login First.'); window.location.href='sign-up.jsp';</script>");
             }
 else
     {
  out.println("<script>alert('Login Successful.'); window.location.href='online-booking_with_user.jsp';</script>");

    }
   }catch(Exception e)
   {
   response.sendRedirect("sign-up.jsp");
   }
%>
    </body>
</html>
