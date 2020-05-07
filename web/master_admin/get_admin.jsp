

<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
          <jsp:useBean id="admin" class="Test.Admin_Pojo"></jsp:useBean>>
          <jsp:useBean id="dao" class="Test.Master_Admin_Dao"></jsp:useBean>>
          <%
           admin.setName(request.getParameter("name"));
           admin.setEmail(request.getParameter("email"));
           admin.setPassword(request.getParameter("password"));
           admin.setBRANCH_ID(Integer.parseInt(request.getParameter("vehno")));
           admin.setMob_no(request.getParameter("mobile"));
           admin.setAddress(request.getParameter("address"));
           
      
     
        if(dao.Admin_Registration(admin.getName(), admin.getEmail(), admin.getMob_no(), admin.getAddress(), admin.getBRANCH_ID(), admin.getPassword())>0)
        {
            out.println("<script>alert('branch registered successfully');window.location.href='add_admin.jsp'</script>");
        }
        else
        {
            out.println("<script>alert('branch not registered');window.location.href='add_admin.jsp'<script>");
        }
          
        
               %>
    </body>
</html>
