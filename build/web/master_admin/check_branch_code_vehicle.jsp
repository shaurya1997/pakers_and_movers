<%-- 
    Document   : check_branch_code
    Created on : 16-Feb-2020, 13:19:23
    Author     : Shaurya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <%
    String code=session.getAttribute("code").toString();
   // int Code=Integer.parseInt("code");
    %>
    <body>
        
       <%
         String bcode=request.getParameter("bid");
          session.setAttribute("temp",bcode);
          
         if(code.equals(bcode))
         {
             out.println("<script>alert('master vehicle list');window.location.href='master_vehicle.jsp';</script>");
         }
         else
         {
             out.println("<script>alert('other vehicle list');window.location.href='vehicle1_report.jsp';</script>");
         }
       %>
    </body>
</html>
