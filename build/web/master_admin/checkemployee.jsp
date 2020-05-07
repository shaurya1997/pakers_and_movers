<%@page import="java.sql.*" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
Connection    connect=DriverManager.getConnection("jdbc:mysql://localhost:3306/pakers_and_movers","root","");
Statement stmt=connect.createStatement();
String emp_id=request.getParameter("eid");

ResultSet rs=stmt.executeQuery("select count(emp_id) from vehicle_assign where emp_id='"+emp_id+"' ");
rs.next();
int i=0;
i=rs.getInt(1);
if(i>0)
{
    out.println("This Employee Is Already Registered To Other Vehicle");
}
else
{
    out.println("New Employee");
}


%>