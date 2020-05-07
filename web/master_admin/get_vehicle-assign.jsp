<%-- 
    Document   : get_vehicle-assign.jsp
    Created on : 16-Jan-2020, 18:39:10
    Author     : Shaurya
--%>



<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <jsp:useBean id="veh" class="Test.vehicle_assign_pojo"></jsp:useBean>>
         <jsp:useBean id="dao" class="Test.Master_Admin_Dao"></jsp:useBean>>
         <%
        veh.setVEH_NO(request.getParameter("vehno"));
        veh.setEmp_id(Integer.parseInt(request.getParameter("emp_id")));
     
       if(dao.vehicle_assign(veh.getVEH_NO(), veh.getEmp_id())>0)
       {
           out.println("<script>alert('data added');window.location.href='vehicle_assign.jsp'</script>");
       }
       else
       {
           out.println("<script>alert('data not inserted');window.location.href='vehicle_assign.jsp'</script>");
       }




               %>
    </body>
</html>
