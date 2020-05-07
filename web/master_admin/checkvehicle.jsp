<%@page import="java.sql.*" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
Connection    connect=DriverManager.getConnection("jdbc:mysql://localhost:3306/pakers_and_movers","root","");
Statement stmt=connect.createStatement();
String veh_no=request.getParameter("vid");
ResultSet rs=stmt.executeQuery("select count(veh_no) from vehicle_assign where veh_no='"+veh_no+"' ");
rs.next();
int i=0;
i=rs.getInt(1);
if(i>0)
{
    out.println("This Vehicle Is Already Assigned To Other Employee");
}
else
{
    out.println("New Vehicle");
}


%>