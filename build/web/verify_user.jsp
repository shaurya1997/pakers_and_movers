<%-- 
    Document   : verify_user
    Created on : 30-Mar-2020, 14:23:24
    Author     : Shaurya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
          String user_roll=request.getParameter("radio");
         // out.println("<h1>user_roll :"+user_roll+"</h1>");
         if(user_roll.equals("customer"))
         {
             response.sendRedirect("login.jsp");
         }
         else if(user_roll.equals("admin"))
         {
             response.sendRedirect("admin/login.jsp");
         }
         else
         {
             response.sendRedirect("master_admin/login.jsp");
         }
       
         %>
    </body>
</html>
