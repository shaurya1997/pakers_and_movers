

<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
          <jsp:useBean id="enq" class="Test.Enquiry_Pojo"></jsp:useBean>>
          <jsp:useBean id="dao" class="Test.Enquiry_Dao"></jsp:useBean>>
        <%
            String email="";
            email=session.getAttribute("uname").toString();
        enq.setSOURCE(request.getParameter("source"));
        enq.setDESTINATION(request.getParameter("destination"));
        enq.setDOD(request.getParameter("dod"));
        enq.setMSG(request.getParameter("msg"));
         if(dao.Enquiry_Registration(dao.get_cust_id(email), enq.getSOURCE(), enq.getDESTINATION(),enq.getDOD(), enq.getMSG())>0)
         {
             out.println("<script>alert('Qoute Recieved');window.location.href='online-booking_with_user.jsp'</script>");
         }
         else
         {
             out.println("<script>alert('Qoute not recieved . Please try after some time.');window.location.href='online-booking_with_user.jsp'</script>");
         }
       %>
    </body>
</html>
