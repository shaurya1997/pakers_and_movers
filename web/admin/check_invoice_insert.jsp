<%-- 
    Document   : check_invoice_insert
    Created on : 4 Mar, 2020, 11:36:29 AM
    Author     : shash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <script> 
              function getTotal() {
                        //document.write(document.getElementById('total').innerHTML);
                        var someValue = $("#total").text();
                        alert("Value is "+someValue);
                        //It cause to releoad the page and give me the parameter total          
                        location.href="frmAdd.php?total=" + someValue; 
                        }
            </script>
    </head>
    <body>
        <h1>
            
          
        </h1>
        <button onclick="getTotal">total</button>
         <a href='invoice.jsp'> <button >Save</button></a>
         
    </body>
</html>
