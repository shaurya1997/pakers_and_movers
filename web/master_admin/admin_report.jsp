

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Test.*,java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
       <script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  

    </head>
    <body>
        <jsp:useBean id="admin" class="Test.Admin_Pojo"></jsp:useBean>
          <jsp:useBean id="dao" class="Test.Master_Admin_Dao"></jsp:useBean> 
        <center>
            <div style="overflow-x: auto;overflow-y: auto">
      <table id = " " border="1">
          <center><h1><u>Admin Report</u></h1></center>
               <tr>
                   <th>Admin ID</th>
                   <th>Admin Name</th>
                    <th>Email</th>
                    <th>Branch ID</th>
                   <th>Mobile No.</th>
                   <th>Address</th>
                   <th>Delete</th>
                   <th>Update</th>
               </tr>
               <%
                   ArrayList<Admin_Pojo> data=dao.Fetch();
                   
                   for(Admin_Pojo obj:data)
                   {
                   %>
                 <tr>
                     <td><%=obj.getA_ID()%></td>
                     <td><%=obj.getName()%></td>
                     <td><%=obj.getEmail()%></td>
                     <td><%=obj.getBRANCH_ID()%></td>
                     <td><%=obj.getMob_no()%></td>
                     <td><%=obj.getAddress()%></td>
                     <td><button class="delete" id="button">Delete</button></td>
                     <td><button class="update" id="button">Update</button></td>
                  </tr>
              <%}%>
       </table>
       </div>
    </center>
       <script>
           $(document).ready(function()
           {
               $('.update').click(function()
               {
                   var currentTd = $(this).parents('tr').find('td');
                   if($(this).text()=='Update')
                   {
                       var len = currentTd.length;
                       var count = 0;
                       $.each(currentTd, function()
                       {
                           if((count>0 && count<len-1) && count!=3)
                               $(this).prop('contenteditable',true);
                           count++;
                       });
                   }
                   else
                   {
                       $.each(currentTd, function()
                       {
                           $(this).prop('contenteditable',false);
                       });
                   }
                   $(this).text($(this).text()=="Update"?"Save":"Update");
                    if($(this).text()=="Update")
                    {
                        var ajaxrequst = null;
                        try
                        {
                            ajaxrequst = new XMLHttpRequest();
                        }
                        catch(exception)
                        {
                            alert("Browser not supported");
                        }

                        ajaxrequst.onreadystatechange = function()
                        {
                            if(ajaxrequst.readyState==4)
                            {
                                alert(ajaxrequst.responseText);
                            }
                        };
                        var currentTd = $(this).parents('tr').find('td');
                        var txt="";
                        $.each(currentTd, function()
                        {
                            txt = txt+$(this).text()+"*";
                        });
                        alert(txt);
                    }
                    var url = "adminUpdate.jsp?data="+txt;
                    ajaxrequst.open("GET",url,true);
                    ajaxrequst.send();
                });
            });
            $(document).ready(function()
            {
                $('.delete').click(function()
                {
                    if(confirm("Are you sure you want to delete?"))
                    {
                        var ajaxRequest = null;
                        try
                        {
                            ajaxRequest = new XMLHttpRequest();
                        }
                        catch(exception)
                        {
                            alert("Browser not supported");
                        }
                    }
                    ajaxRequest.onreadystatechange = function()
                    {
                        if(ajaxRequest.readyState == 4)
                        {
                            alert(ajaxRequest.responseText);
                        }
                    };
                    var currentTD = $(this).parents('tr').find('td');
                    var txt;
                    $.each(currentTD,function()
                    {
                        txt = $(this).text();
                        return false;
                    });
//                    alert(txt);
                    var url = "adminDelete.jsp?id="+txt;
                    ajaxRequest.open("GET",url,true);
                    ajaxRequest.send();
                });
            });
                    
       </script>
    </body>
</html>
