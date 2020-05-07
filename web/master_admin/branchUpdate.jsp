<%@page import="java.util.StringTokenizer"%>
<%@page import="javafx.scene.control.Alert" %>
<jsp:useBean id="masterAdmin" class="Test.Master_Admin_Dao"></jsp:useBean>
<%
    String data = request.getParameter("data");
    StringTokenizer st = new StringTokenizer(data,"*");
    int id = Integer.parseInt(st.nextToken());
      String address = st.nextToken();
    String city = st.nextToken();
    
    String con = st.nextToken();
  
    int i = masterAdmin.updateBranch(id, address, city, con);
    if(i>0)
        out.print("Record Updated");
    else
        out.print("Record not Updated");
%>