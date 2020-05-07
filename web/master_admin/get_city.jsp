

<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
          <jsp:useBean id="c" class="Test.City_Pojo"></jsp:useBean>>
          <jsp:useBean id="dao" class="Test.Master_Admin_Dao"></jsp:useBean>>
          <%
        c.setC_NAME(request.getParameter("city"));
        c.setS_NAME(request.getParameter("txtsname"));
        if(dao.city_Registration(c.getS_NAME(), c.getC_NAME())>0)
        {
            out.println("<script>alert('city registered successfully');window.location.href='add_city.jsp'</script>");
        }
        else
        {
               out.println("<script>alert('city is not registered ');window.location.href='add_city.jsp'</script>");
        }
        
      
        
               %>
    </body>
</html>
