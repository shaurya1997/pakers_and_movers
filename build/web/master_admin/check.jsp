<%@page import="java.sql.*" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
Connection    connect=DriverManager.getConnection("jdbc:mysql://localhost:3306/pakers_and_movers","root","");
Statement stmt=connect.createStatement();
int branch_id=Integer.parseInt(request.getParameter("sid"));
ResultSet rs=stmt.executeQuery("select count(branch_id) from admin where branch_id='"+branch_id+"' ");
rs.next();
int i=0;
i=rs.getInt(1);
if(i>0)
{
    out.println("Branch Is Already Assigned To Other Admin");
}
else
{
    out.println("New Branch");
}


%>