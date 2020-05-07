

<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
          <jsp:useBean id="state" class="Test.State_Pojo"></jsp:useBean>>
          <jsp:useBean id="dao" class="Test.Master_Admin_Dao"></jsp:useBean>>
          <%
      
      
        state.setS_NAME(request.getParameter("state"));
       if(dao.State_Registration(state.getS_NAME())>0)
       {
           out.println("<script>alert('state is register sucessfully');window.location.href='add_state.jsp'</script>");
       }
       else
       {
           out.println("<script>alert('state is not  register ');window.location.href='add_state.jsp'</script>");
       }
      
        
               %>
    </body>
</html>
