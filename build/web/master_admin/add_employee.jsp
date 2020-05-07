<!DOCTYPE html>
<%@page import="java.sql.*" %>
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

 <%
    String code=session.getAttribute("code").toString();
    %>
<body ng-app="myapp">

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
    <h1>Employee Registration</h1>
  </div>
  <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-info-sign"></i> </span>
            <h5>Employee Registration</h5>
          </div>
          <div class="widget-content nopadding">
            <form class="form-horizontal" method="POST" action="get_employee.jsp"  name="studentForm"  ng-controller="mainCtrl">
              <div class="control-group">
                <label class="control-label">Name</label>
                <div class="controls">
                   <input type="text" name="name"  ng-model="student.name" ng-required="true" ng-minlength="5" ng-maxlength="20" required/>
                   <span ng-show="studentForm.name.$touched && studentForm.name.$error.required">name is required.</span>
                     <span ng-show="studentForm.name.$touched && studentForm.name.$error.minlength">min 5 chars.</span>
            <span ng-show="studentForm.name.$touched && studentForm.name.$error.maxlength">Max 20 chars.</span> 
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Contact</label>
                <div class="controls">
                  <input type="text" name="contact" id="contact" ng-pattern="phoneNumbr" ng-model="phone" placeholder="+91-636-78658" required />
                  <span class="error" ng-show="studentForm.contact.$error.required">Required!</span>
      <span class="error" ng-show="studentForm.contact.$error.minlength">Phone no not less that 10 char.</span>
      <span class="error" ng-show="studentForm.contact.$error.maxlength">Phone no not more than 11 char.</span>
      <span class="error" ng-show="studentForm.contact.$error.pattern">Please match pattern [+91-036-78658 || 91-036-78658]</span>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Address</label>
                <div class="controls">
                  <input type="text" name="address" id="address"required>
                </div>
              </div>
               <div class="control-group">
                <label class="control-label">Type</label>
                <div class="controls">
                    <input type="text" name="type" id="type" required>
                </div>
              </div>
                <input type="hidden" value="<%=code%>" name="mid"/>
                </div>

			
              <div class="form-actions">
                <input type="submit" value="Register" class="btn btn-success">
              </div>
            </form>
        </div>          
    </div>
  </div>
</div>

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
