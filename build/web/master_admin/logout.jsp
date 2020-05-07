<%-- 
    Document   : logout
    Created on : 29 Feb, 2020, 12:08:40 PM
    Author     : shash
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
session.removeAttribute("email");
session.invalidate();
response.setHeader("Cache-Control","no-store"); 
response.setHeader("Pragma","no-cache"); 
response.setDateHeader ("Expires", 0);

             response.sendRedirect("login.jsp");
             
%>
    </body>
</html>
