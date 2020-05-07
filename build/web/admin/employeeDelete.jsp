<%@page import="java.util.StringTokenizer"%>
<%@page import="javafx.scene.control.Alert" %>
<jsp:useBean id="Admin" class="Test.Admin_Dao"></jsp:useBean>
<%
    int id= Integer.parseInt(request.getParameter("id"));
    int i = Admin.deleteEmployee(id);
    if(i>0)
        out.print("Record Deleted");
    else
        out.print("Record not Deleted");
%>