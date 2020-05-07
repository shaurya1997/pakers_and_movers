<%-- 
    Document   : vehicleDelete
    Created on : 20-Jan-2020, 12:30:21
    Author     : Shaurya
--%>

<%@page import="java.util.StringTokenizer"%>
<%@page import="javafx.scene.control.Alert" %>
<jsp:useBean id="Admin" class="Test.Admin_Dao"></jsp:useBean>
<%
    String id= request.getParameter("id");
    int i = Admin.deleteVehicle(id);
    if(i>0)
        out.print("Record Deleted");
    else
        out.print("Record not Deleted");
%>