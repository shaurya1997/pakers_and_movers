<%@page import="java.util.StringTokenizer"%>
<%@page import="javafx.scene.control.Alert" %>
<jsp:useBean id="masterAdmin" class="Test.Master_Admin_Dao"></jsp:useBean>
<%
    String data = request.getParameter("data");
    StringTokenizer st = new StringTokenizer(data,"*");
    int inv_id = Integer.parseInt(st.nextToken());
    
    int enq_id=Integer.parseInt(st.nextToken());
    String date=st.nextToken();
    String price=st.nextToken();
    String sec_price=st.nextToken();
    int a_id=Integer.parseInt(st.nextToken());
    String hcode=st.nextToken();
   
  
    int i = masterAdmin.updateInvoice(inv_id, enq_id, date,price, sec_price,a_id,hcode);
    if(i>0)
        out.print("Record Updated");
    else
        out.print("Record not Updated");
%>