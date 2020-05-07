

<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <jsp:useBean id="veh" class="Test.Vehicle_Pojo"></jsp:useBean>>
         <jsp:useBean id="dao" class="Test.Admin_Dao"></jsp:useBean>>
         <%
        veh.setVEH_NO(request.getParameter("vehno"));
        veh.setBRANCH_ID(Integer.parseInt(request.getParameter("branch_id")));
        veh.setTYPE(request.getParameter("type"));
       if(dao.Vehicle_Registration(veh.getVEH_NO(), veh.getBRANCH_ID(), veh.getTYPE())>0)
       {
           out.println("<script>alert('data added');window.location.href='add_vehicle.jsp'</script>");
       }
       else
       {
           out.println("<script>alert('data not inserted');window.location.href='add_vehicle.jsp'</script>");
       }




               %>
    </body>
</html>
