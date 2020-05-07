<%@page import="java.sql.*" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
Connection    connect=DriverManager.getConnection("jdbc:mysql://localhost:3306/pakers_and_movers","root","");
Statement stmt=connect.createStatement();
String option="<option>Select City</option>";
String sname=request.getParameter("sname");
ResultSet rs=stmt.executeQuery("select * from city where S_NAME='"+sname+"'");
while(rs.next())
    {
    option=option+"<option>"+rs.getString(2)+"</option>";
}
out.println(option);
%>