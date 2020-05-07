<%-- 
    Document   : Test
    Created on : Mar 7, 2020, 1:46:35 PM
    Author     : umarh
--%>

<%@page import="Test.item_list_dao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="Test.Invoice_Pojo"%>
<%@page import="Test.Invoice_Dao"%>
<%@page import="java.util.Random"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
      
        <title>JSP Page</title>
    </head>
    <body>
      
        
         
      
      <%
        //  int cust_id=Integer.parseInt(request.getParameter("cust_id"));
        String total=request.getParameter("total");
        String gst=request.getParameter("gst1");
        String sub=request.getParameter("sub");
        
        session.setAttribute("total",total);
//        session.setAttribute("gst",gst);
//        session.setAttribute("sub",sub);
//        
         
           String item_data = request.getParameter("items");
    StringTokenizer st1 = new StringTokenizer(item_data,"-");
    ArrayList<String> item1 = new ArrayList<String>();
    
          while(st1.hasMoreTokens())
          {
              item1.add(st1.nextToken());
          }
          String item_price = request.getParameter("rate");
    StringTokenizer st2 = new StringTokenizer(item_price,"-");
    ArrayList<String> item2 = new ArrayList<String>();
          while(st2.hasMoreTokens())
          {
              item2.add(st2.nextToken());
          }
          String item_qty = request.getParameter("qut");
    StringTokenizer st3 = new StringTokenizer(item_qty,"-");
    ArrayList<String> item3 = new ArrayList<String>();
          while(st3.hasMoreTokens())
          {
              item3.add(st3.nextToken());
          }
          
          String enid=session.getAttribute("enqid").toString();
          Random rand = new Random(); 
          String HC="HAPPY"+rand.nextInt(1000);
          
         Invoice_Dao obj=new Invoice_Dao();
         item_list_dao idao=new item_list_dao();
         
         Invoice_Pojo obj1=new Invoice_Pojo();
           obj1.setENQ_ID(Integer.parseInt(enid));
           obj1.setPRICE(request.getParameter("total"));
           obj1.setINV_DATE(java.util.Calendar.getInstance().getTime().toString());
           obj1.setBranch_ID(Integer.parseInt(session.getAttribute("code").toString()));
           if(obj.Invoice_Entry(obj1.getENQ_ID(),obj1.getINV_DATE(), obj1.getPRICE(), obj1.getBranch_ID(), HC)>0)
           {
              
                  int inv_id=obj.Invoice_id(obj1.getENQ_ID());
                  
                  session.setAttribute("inv_id",inv_id);
                  
                  int len=item1.size();
                  for (int i = 0; i < len; i++) {
                          String name=item1.get(i);
                          String price=item2.get(i);
                          int qty=Integer.parseInt(item3.get(i));
                          idao.item_list(inv_id, name, price, qty);
                      }
                  out.println("<script>alert('invoice inserted.');window.location.href='print_invoice.jsp';</script>");
                  
           }
           else
           {
               out.println("<script>alert('invoice not inserted.');window.location.href='print_incoice.jsp';</script>");
           }
       
      %>


    </body>
</html>
