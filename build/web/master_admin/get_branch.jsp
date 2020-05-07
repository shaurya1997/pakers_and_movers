

<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
          <jsp:useBean id="branch" class="Test.Branch_Pojo"></jsp:useBean>>
          <jsp:useBean id="dao" class="Test.Master_Admin_Dao"></jsp:useBean>>
          <%
      
      
        branch.setCITY(request.getParameter("txtcity"));
        branch.setBRANCH_ADD(request.getParameter("Address"));
        branch.setBRANCH_CON(request.getParameter("Contact"));
        if(dao.Branch_Registration(branch.getBRANCH_ADD(), branch.getCITY(), branch.getBRANCH_CON())>0)
        {
            out.println("<script>alert('branch registered successfully');window.location.href='add_branch.jsp'</script>");
        }
        else
        {
            out.println("<script>alert('branch not registered')<script>");
        }
          
        
               %>
    </body>
</html>
