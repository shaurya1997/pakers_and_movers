
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>paker and mover</title>
    </head>
    <body>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Pakers_and_Movers","root","");
String email=request.getParameter("email");
 String pass=request.getParameter("password");
// int code=Integer.parseInt(request.getParameter("code"));
 Statement stmt=con.createStatement();
 ResultSet rs=stmt.executeQuery("select count(*) from customer where CUST_EMAIL='"+email+"' and CUST_PASS='"+pass+"' ");
 rs.next();
 int chk=rs.getInt(1);
 //out.println("<h1>Id  : "+chk+"</h1>");
 if (chk>0) {
     session.setAttribute("uname", email);
        out.println("<script>alert('Login Success'); window.location.href='index-3.jsp';</script>");
             }
 else
     {
  out.println("<script>alert('Invalid id and Password'); window.location.href='login.jsp';</script>");

    }
%>
    </body>
</html>
