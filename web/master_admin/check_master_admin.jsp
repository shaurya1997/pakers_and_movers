
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
 
 String type=request.getParameter("type");
 Statement stmt=con.createStatement();
 ResultSet rs=stmt.executeQuery("select count(*) from master_admin where M_EMAIL='"+email+"' and M_PASSWORD='"+pass+"' and branch_id='"+code+"' ");
 rs.next();
 int chk=rs.getInt(1);
 out.println("<h1>code  : "+code+"</h1>");
 if (chk>0) {
     session.setAttribute("code", code);
     
     session.setAttribute("email",email);
     
        out.println("<script>alert('Login Success'); window.location.href='index.jsp';</script>");
             }
 else
     {
  out.println("<script>alert('Invalid id and Password'); window.location.href='login.jsp';</script>");

    }
%>
    </body>
</html>
