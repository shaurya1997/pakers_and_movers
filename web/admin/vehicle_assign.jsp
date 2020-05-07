<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Packers And Movers</title>
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
</head>
<body>
 <%
    String code=session.getAttribute("code").toString();
    %>
<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.html">Packers And Movers</a></h1>
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
        <li><a href="login.jsp
               "><i class="icon-key"></i> Log Out</a></li>
      </ul>
    </li>
    <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Messages</span> <b class="caret"></b></a>
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

<div id="sidebar"> <a href="#" class="visible-phone"><i class="icon icon-list"></i>Forms</a>
  <ul>
    <li><a href="index.jsp"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
    
    <li><a href="add_employee.jsp"><i class="icon icon-inbox"></i> <span>Add Employee</span></a> </li>
    <li><a href="add_vehicle.jsp"><i class="icon icon-th"></i> <span>Add Vehicle</span></a></li>
  
       <li><a href="vehicle_assign.jsp"><i class="icon icon-th"></i> <span> Vehicle Assign</span></a></li>
    <li><a href="report.jsp"><i class="icon icon-fullscreen"></i> <span>Reports</span></a></li>
    
  </ul>
</div>
<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#">Form elements</a> <a href="#" class="current">Validation</a> </div>
    <h1>Assign Vehicle To Employee</h1>
  </div>
  <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-info-sign"></i> </span>
            <h5>Assign Vehicle To Employee</h5>
          </div>
          <div class="widget-content nopadding">
            <form class="form-horizontal" method="post" action="get_vehicle-assign.jsp" name="basic_validate" id="basic_validate" novalidate="novalidate">
              <div class="control-group">
                <label class="control-label">Vehicle Number</label>
                 <script type="text/javascript">
            function ajaxFunction()
            {
                var ajaxRequest=null;
                try {
                            ajaxRequest=new XMLHttpRequest();
                        } catch (exception) {
                            alert("Browser Supported");
                        }
                ajaxRequest.onreadystatechange=function()
                {
                   if(ajaxRequest.readyState==4)
                       {

                            var ajaxDiv=document.getElementById("ajaxDiv");
                            ajaxDiv.innerHTML=ajaxRequest.responseText;
                       }
                };

                    var bid=document.getElementById("code").value;
                    var url="getcity.jsp?sname="+bid;
                    ajaxRequest.open("GET", url, true);
                    ajaxRequest.send(null);

            }
        </script>
                <div class="controls">
                    <select name="vehno" id="sid" onchange="ajaxFunction()">
                         <option>Select Vehicle No.</option>
                    <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection    connect=DriverManager.getConnection("jdbc:mysql://localhost:3306/pakers_and_movers","root","");
                    Statement stmt=connect.createStatement();
                    ResultSet rs=stmt.executeQuery("select * from vehicle where branch_id='"+code+"' ");
                    while(rs.next())
                        {
                    %>
                    <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%>  <%=rs.getString(3)%></option>
                    <% } %>
                   </select>
              </div>
              <input type="hidden" value="<%=code%>" name="branch_id"/>
                <div class="control-group">
                <label class="control-label">Emp_Id</label>
                 <script type="text/javascript">
            function ajaxFunction()
            {
                var ajaxRequest=null;
                try {
                            ajaxRequest=new XMLHttpRequest();
                        } catch (exception) {
                            alert("Browser Supported");
                        }
                ajaxRequest.onreadystatechange=function()
                {
                   if(ajaxRequest.readyState==4)
                       {

                            var ajaxDiv=document.getElementById("ajaxDiv");
                            ajaxDiv.innerHTML=ajaxRequest.responseText;
                       }
                };

                    var bid=document.getElementById("code").value;
                    var url="getcity.jsp?sname="+bid;
                    ajaxRequest.open("GET", url, true);
                    ajaxRequest.send(null);

            }
        </script>
                <div class="controls">
                    <select name="emp_id" id="sid" onchange="ajaxFunction()">
                         <option>Select Employee Id</option>
                    <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection    connecte=DriverManager.getConnection("jdbc:mysql://localhost:3306/pakers_and_movers","root","");
                    Statement stmte=connecte.createStatement();
                    ResultSet rse=stmte.executeQuery("select * from employee where branch_id='"+code+"'  and emp_type='driver' ");
                    while(rse.next())
                        {
                    %>
                    <option value="<%=rse.getInt(1)%>"><%=rse.getInt(1)%>              <%=rse.getString(2)%>  </option>
                    <% } %>
                   </select>
            
              </div>
	  
              <div class="form-actions">
                <input type="submit" value="Register" class="btn btn-success">
              </div>
            </form>
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
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/jquery.validate.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.form_validation.js"></script>
</body>
</html>
