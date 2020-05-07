<%@page import="java.util.StringTokenizer"%>
<%@page import="javafx.scene.control.Alert" %>
<jsp:useBean id="masterAdmin" class="Test.Master_Admin_Dao"></jsp:useBean>
<%
    int id= Integer.parseInt(request.getParameter("id"));
    int i = masterAdmin.deleteBranch(id);
    if(i>0)
        out.print("Record Deleted");
    else
        out.print("Record not Deleted");
%>