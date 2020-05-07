<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html lang="en" >
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
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.16/angular.min.js"></script>
  
<style>
    .error {
      color: red;
    }
  </style>
  <script>
    var app = angular.module('myapp', []);

    app.controller('mainCtrl', function($scope) {
      $scope.phoneNumbr = /^\+?\d{2}[- ]?\d{3}[- ]?\d{5}$/;
    });
  </script>
</head>

 
<body ng-app="myappe">

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
        <li><a href="login.jsp"><i class="icon-key"></i> Log Out</a></li>
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
    <li><a href="add_branch.jsp"><i class="icon icon-signal"></i> <span>Add Branch</span></a> </li>
        <li><a href="add_admin.jsp"><i class="icon icon-signal"></i> <span>Add Admin</span></a> </li>

    <li><a href="add_employee.jsp"><i class="icon icon-inbox"></i> <span>Add Employee</span></a> </li>
    <li><a href="add_vehicle.jsp"><i class="icon icon-th"></i> <span>Add Vehicle</span></a></li>
    <li><a href="add_state.jsp"><i class="icon icon-th"></i> <span>Add State</span></a></li>
    <li><a href="add_city.jsp"><i class="icon icon-th"></i> <span>Add City</span></a></li>
       <li><a href="vehicle_assign.jsp"><i class="icon icon-th"></i> <span> Vehicle Assign</span></a></li>
    <li><a href="report.jsp"><i class="icon icon-fullscreen"></i> <span>Reports</span></a></li>
    
  </ul>
</div>
<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#">Form elements</a> <a href="#" class="current">Validation</a> </div>
    <h1>Admin Registration</h1>
  </div>
  <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-info-sign"></i> </span>
            <h5>Admin Registration</h5>
          </div>
          <div class="widget-content nopadding">
            <form class="form-horizontal" method="post" action="get_admin.jsp"  name="studentForm"   >
              <div class="control-group">
                <label class="control-label">Admin Name</label>
                <div class="controls">
                    <input type="text" name="name"  ng-model="student.name" ng-required="true" ng-minlength="5" ng-maxlength="20" id="name"  required/>
                   <span ng-show="studentForm.name.$touched && studentForm.name.$error.required">name is required.</span>
                     <span ng-show="studentForm.name.$touched && studentForm.name.$error.minlength">min 5 chars.</span>
            <span ng-show="studentForm.name.$touched && studentForm.name.$error.maxlength">Max 20 chars.</span>               
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Email</label>
                <div class="controls">
                    <input type="email" placeholder="User email" name="email"  ng-model="student.email" id="email" required/>
                             <span ng-show="studentForm.email.$touched && studentForm.email.$error.email">Please enter valid email id.</span>
                </div>
              </div>
            <!--    <div ng-app="myappe">-->
             
              <div class="control-group">
               <label for="password" class="control-label">Password</label>
                <div class="controls">
               <!--   <input type="text" name="password" id="address">-->
                      <input type="password" id="password" name="password" ng-model="formData.password" ng-minlength="8" ng-maxlength="20" ng-pattern="/(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z])/" required  />
   <span ng-show="studentForm.password.$error.required && studentForm.password.$dirty">required</span>
   <span ng-show="!studentForm.password.$error.required && (studentForm.password.$error.minlength || studentForm.password.$error.maxlength) && studentForm.password.$dirty">Passwords must be between 8 and 20 characters.</span>
   <span ng-show="!studentForm.password.$error.required && !studentForm.password.$error.minlength && !studentForm.password.$error.maxlength && studentForm.password.$error.pattern && studentForm.password.$dirty">Must contain one lower &amp; uppercase letter, and one non-alpha character (a number or a symbol.)</span>
                </div>
             
              </div>
            
                <div class="control-group">
                    <label for=" password_c" class="control-label">Confirm Password</label>
                     <div calss="controls">
                       <input type="password" id="password_c" name="password_c" ng-model="formData.password_c" valid-password-c required  />
                 <span ng-show="studentForm.password_c.$error.required && studentForm.password_c.$dirty">Please confirm your password.</span>
                  <span ng-show="!studentForm.password_c.$error.required && studentForm.password_c.$error.noMatch && studentForm.password.$dirty">Passwords do not match.</span>
                  <br />
                    </div>
               
                </div>
                    <!--</div>-->
               <div class="control-group">
                <label class="control-label">Branch-id</label>
                <div class="controls">
                 <select name="vehno" id="sid" onchange="ajaxfunction()">
                         <option>Select branch_id.</option>
                    <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection    connect=DriverManager.getConnection("jdbc:mysql://localhost:3306/pakers_and_movers","root","");
                    Statement stmt=connect.createStatement();
                    ResultSet rs=stmt.executeQuery("select * from branch ");
                    while(rs.next())
                        {
                    %>
                    <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%>  <%=rs.getString(3)%></option>
                    <% } %>
                   </select>
                  
                </div>
              </div>
                   <div class="control-group">
                <div class="controls">
                  <label id="ajaxDiv" style="color:red"></label>
                
                </div>
              </div>
                 <div class="control-group">
                <label class="control-label">Mobile_No</label>
                <div class="controls"  > 
                  <input type="text" name="mobile" id="mobile" ng-pattern="phoneNumbr" ng-model="phone" placeholder="+91-636-78658" required />
                  <span class="error" ng-show="studentForm.mobile.$error.required">Required!</span>
      <span class="error" ng-show="studentForm.mobile.$error.minlength">Phone no not less that 10 char.</span>
      <span class="error" ng-show="studentForm.mobile.$error.maxlength">Phone no not more than 11 char.</span>
      <span class="error" ng-show="studentForm.mobile.$error.pattern">Please match pattern [+91-036-78658 || 91-036-78658]</span>
                </div>
              </div>
                 
                   
                 <div class="control-group">
                <label class="control-label">Address</label>
                <div class="controls">
                    <input type="text" name="address" id="type" required>
                </div>
              </div>
            
                

			
              <div class="form-actions">
                <input type="submit" value="Register" class="btn btn-success">
              </div>
            </form>
        </div>          
    </div>
  </div>
</div>
<!--Footer-part-->
 <script type="text/javascript">
        function ajaxfunction()
        {
            var ajaxrequest=null;
            try{
                ajaxrequest=new XMLHttpRequest();
            }
            catch(exception){
        }
        ajaxrequest.onreadystatechange=function()
        {
            if(ajaxrequest.readyState===4)
            {
                var ajaxDiv=document.getElementById("ajaxDiv");
                ajaxDiv.innerHTML=ajaxrequest.responseText;
            }
        };
        var sid=document.getElementById("sid").value;
        var url="check.jsp?sid="+sid;
        ajaxrequest.open("GET",url,true);
        ajaxrequest.send(null);
    }
        </script>
<!--end-Footer-part-->
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/jquery.validate.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.form_validation.js"></script>
<script>
      var app = angular.module('myappe', ['UserValidation']);

angular.module('UserValidation', []).directive('validPasswordC', function () {
    return {
        require: 'ngModel',
        link: function (scope, elm, attrs, ctrl) {
            ctrl.$parsers.unshift(function (viewValue, $scope) {
                var noMatch = viewValue != scope.studentForm.password.$viewValue;
                ctrl.$setValidity('noMatch', !noMatch);
            })
        }
    }
})
</script>
</body>
</html>
