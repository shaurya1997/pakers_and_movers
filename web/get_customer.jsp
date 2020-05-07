

<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
          <jsp:useBean id="cus" class="Test.Customer_Pojo"></jsp:useBean>
          <jsp:useBean id="dao" class="Test.Customer_Dao"></jsp:useBean>
        <%
       
            cus.setCUST_NAME(request.getParameter("name"));
            cus.setCUST_EMAIL(request.getParameter("email"));
            cus.setCUST_ADDRESS(request.getParameter("address"));
            cus.setCUST_PASS(request.getParameter("password"));
            cus.setMOB_NO(request.getParameter("mobno"));
         if(dao.Customer_Registration(cus.getCUST_NAME(), cus.getCUST_ADDRESS(),cus.getMOB_NO(), cus.getCUST_EMAIL(), cus.getCUST_PASS())>0)
         {
             out.println("<script>alert('Registration successfull');window.location.href='login.jsp'</script>");
         }
         else
         {
             out.println("<script>alert('Registration Successfull.');window.location.href='sign-up.jsp'</script>");
         }
       
        
               %>
    </body>
</html>
