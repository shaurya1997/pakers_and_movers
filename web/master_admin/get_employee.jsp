

<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
          <jsp:useBean id="emp" class="Test.Employee_Pojo"></jsp:useBean>>
          <jsp:useBean id="dao" class="Test.Master_Admin_Dao"></jsp:useBean>>
        <%
       
        emp.setBRANCH_ID(Integer.parseInt(request.getParameter("mid")));
        emp.setMOBILE_NO(request.getParameter("contact"));
        emp.setEMP_NAME(request.getParameter("name"));
        emp.setEMP_ADD(request.getParameter("address"));
        emp.setEMP_TYPE(request.getParameter("type"));
         if(dao.Employee_Registration(emp.getEMP_NAME(), emp.getMOBILE_NO(), emp.getEMP_ADD(), emp.getBRANCH_ID(), emp.getEMP_TYPE())>0)
         {
             out.println("<script>alert('employee registartion sucessfully');window.location.href='add_employee.jsp'</script>");
         }
         else
         {
             out.println("<script>alert('employee not registered');window.location.href='add_employee.jsp'</script>");
         }
       
        
               %>
    </body>
</html>
