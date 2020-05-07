<%@page import="java.util.ArrayList"%>
<%@page import="Test.FeedBack_pojo"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Matrix Admin</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/uniform.css" />
<link rel="stylesheet" href="css/select2.css" />
<link rel="stylesheet" href="css/matrix-style.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<%
    String code=session.getAttribute("code").toString();
    %>
<body>
 <jsp:useBean id="admin" class="Test.FeedBack_pojo"></jsp:useBean>
          <jsp:useBean id="dao" class="Test.Admin_Dao"></jsp:useBean> 
<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.html">Matrix Admin</a></h1>
</div>
<!--close-Header-part--> 

<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome User</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
        <li class="divider"></li>
        <li><a href="login.jsp"><i class="icon-key"></i> Log Out</a></li>
      </ul>
    </li>
    <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Messages</span> <span class="label label-important">5</span> <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> new message</a></li>
        <li class="divider"></li>
        <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> inbox</a></li>
        <li class="divider"></li>
        <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> outbox</a></li>
        <li class="divider"></li>
        <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> trash</a></li>
      </ul>
    </li>
    <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
    <li class=""><a title="" href="login.jsp"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
  </ul>
</div>

<!--start-top-serch-->
<div id="search">
  <input type="text" placeholder="Search here..."/>
  <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-serch--> 

<!--sidebar-menu-->

<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Tables</a> </div>
    <h1>Tables</h1>
  </div>
  <div class="container-fluid">
    <hr>
    <div class="row-fluid">
      <div class="span12">
        
        
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
            <h5> Feedback table</h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered data-table">
              <thead>
                <tr>
                   <th>FeedBack_id</th>
                   <th>Cust_Id</th>
                   <th>Msg</th>
                   <th>Delete</th>
                   
                </tr>
              </thead>
              <tbody>
                 <%
                       //String t=session.getAttribute("temp").toString();
                   ArrayList<FeedBack_pojo> data=dao.FetchF(code);
                   
                   
                   for(FeedBack_pojo obj:data)
                   {
                   %>
                 <tr>
                          
                     <td><%=obj.getF_ID()%></td>
                     <td><%=obj.getCUST_ID()%></td>
                    
                          <td><%=obj.getMSG()%></td>
                               <td><button class="delete" id="button">Delete</button></td>
                  
                  </tr>
              <%}%>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--Footer-part-->
<div class="row-fluid">
  <div id="footer" class="span12"> 2013 &copy; Matrix Admin. Brought to you by <a href="http://themedesigner.in">Themedesigner.in</a> </div>
</div>
<!--end-Footer-part-->
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
                    var url = "employeeUpdate.jsp?data="+txt;
                    ajaxrequst.open("GET",url,true);
                    ajaxrequst.send();
                }
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
                    var url = "feedbackDelete.jsp?id="+txt;
                    ajaxRequest.open("GET",url,true);
                    ajaxRequest.send();
                });
            });
                    
       </script>
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.tables.js"></script>
</body>
</html>
