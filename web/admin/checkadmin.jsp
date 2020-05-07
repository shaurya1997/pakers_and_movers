
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
 int code=Integer.parseInt(request.getParameter("code"));
 Statement stmt=con.createStatement();
 ResultSet rs=stmt.executeQuery("select count(*) from admin where A_EMAIL='"+email+"' and A_PASSWORD='"+pass+"' and BRANCH_ID='"+code+"'");
 rs.next();
 int chk=rs.getInt(1);
 
 //out.println("<h1>Id  : "+chk+"</h1>");
 if (chk>0) {
     session.setAttribute("email",email);
     
     session.setAttribute("code", code);
        out.println("<script>alert('Login Success'); window.location.href='index.jsp';</script>");
             }
 else
     {
  out.println("<script>alert('Invalid id and Password'); window.location.href='login.jsp';</script>");

    }
%>
    </body>
</html>
