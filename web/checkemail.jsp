<%@page import="java.sql.*" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
Connection    connect=DriverManager.getConnection("jdbc:mysql://localhost:3306/pakers_and_movers","root","");
Statement stmt=connect.createStatement();
String email=request.getParameter("email");

ResultSet rs=stmt.executeQuery("select count(cust_email) from customer where cust_email='"+email+"' ");
rs.next();
int i=0;
i=rs.getInt(1);
if(i>0)
{
    out.println("This Email is Already Taken");
}
else
{
    out.println("new email");
}


%>