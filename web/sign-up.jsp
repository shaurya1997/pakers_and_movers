<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ScriptsBundle">
    <title>Packers And Movers</title>
   
    <link rel="icon" href="images\favicon.ico" type="image/x-icon">
   
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
   
    <link rel="stylesheet" href="css\bootstrap.css">
   
    <link rel="stylesheet" href="css\style.css">
      <link rel="stylesheet" href="css\font-awesome.css" type="text/css">
   
    <link rel="stylesheet" href="css\et-line-fonts.css" type="text/css">
   
    <link href="js\magnific-popup\magnific-popup.css" rel="stylesheet">
       <link rel="stylesheet" type="text/css" href="css\owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="css\owl.style.css">
       <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,400italic,600,600italic,700,700italic,900italic,900,300,300italic" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css">
   
    <link href="css\flaticon.css" rel="stylesheet">
   
    <link rel="stylesheet" id="color" href="css\colors\defualt.css">
   
    <link rel="stylesheet" id="theme-color" type="text/css" href="#">
   
    <link href="css\animate.min.css" rel="stylesheet">
      <link href="css\bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <script src="js\modernizr.js"></script>
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

<body ng-app="myapp">
   
    <div class="preloader"><span class="preloader-gif"></span></div>

    

    
    <section class="top-bar">
        <div class="container">
            <div class="left-text nav-left pull-left">
                <p><span>Opening Hours :</span> Monday to Saturday - 8am to 5pm</p>
            </div>
            <!-- /.left-text -->
            <ul class="nav-right pull-right list-unstyled">
             <li> <a href="login.jsp"><i class="fa fa-lock"></i> Login </a></li>
             <li> <a href="sign-up.jsp"><i class="fa fa-user"></i> Sign Up </a></li>
             <li class="dropdown nav-profile"> 

            </li>
        </ul>
        </div>
    </section>
    <header class="header-area">

      
        <div class="logo-bar">
            <div class="container clearfix">
      
                <div class="logo">
                    <a href="index.jsp"><img src="images\logo.png" alt=""></a>
                </div>

                <!--Info Outer-->
                <div class="information-content">
                    <!--Info Box-->
                    <div class="info-box  hidden-sm">
                        <div class="icon"><span class="icon-envelope"></span></div>
                        <div class="text">EMAIL</div>
                        <a href="mailt:shashwat.washimkar1@gmail.com">shashwat.washimkar1@gmail.com</a><br> 
						<a href="mailt:shauryarastogi4@gmail.com">shauryarastogi4@gmail.com</a>
						</div>
                    <!--Info Box-->
                    <div class="info-box">
                        <div class="icon"><span class="icon-phone"></span></div>
                        <div class="text">Call Now</div>
                        <a class="location" href="#">(91) 9838341202</a><br>
                         <a class="location" href="#">(91) 8279786593</a>
						</div>
                    <div class="info-box">
                        <div class="icon"><span class="icon-map-pin"></span></div>
                        <div class="text">Find Us</div>
                        <a class="location" href="#">Appu Bhawan, MANIT, Bhopal </a> </div>
                </div>
            </div>
        </div>
        <!-- Header Top End -->

        <!-- Menu Section -->
        <div class="navigation-2">
            <!-- navigation-start -->
            <nav class="navbar navbar-default ">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-navigation" aria-expanded="false">
                           <span class="sr-only">Toggle navigation</span>
                           <span class="icon-bar"></span>
                           <span class="icon-bar"></span>
                           <span class="icon-bar"></span>
         				</button>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="main-navigation">
                        <ul class="nav navbar-nav">
                            
                                    <li><a href="index-3.jsp">Home</a> </li>
							
                                    <li><a href="about.jsp">About </a> </li>
                            
                                    <li><a href="services.jsp">Services</a> </li>
                                    
                           
                              
                          <li><a href="gallery.jsp">Gallery</a></li>
                       
					   <li><a href="check_login.jsp">get a quote</a></li>  
                        </ul>
                         </div>
                   

                </div>
             
            </nav>
        </div>
      
    </header>
  
    <section class="breadcrumbs-area parallex">
        <div class="container">
            <div class="row">
                <div class="page-title">
                    <div class="col-sm-12 col-md-6 page-heading text-left">
                        <h3>create your account</h3>
                        <h2>Sign Up</h2>
                    </div>
                   
                </div>
            </div>
        </div>
    </section>
    <!-- =-=-=-=-=-=-= PAGE BREADCRUMB END =-=-=-=-=-=-= -->


    <!-- =-=-=-=-=-=-= Sign UP Section =-=-=-=-=-=-= -->

    <section class="section-padding-70">
        <div class="container">
        <div class="row">
				<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<form class="registration" action="get_customer.jsp" name="studentForm"  ng-controller="mainCtrl">
						<div class="box-header">
							<h2>Register a new account</h2>
							<p>Already Signed Up? Click <a href="login.jsp">Sign In</a> to login your account.</p>
						</div>
                                                                                      
						<label >Full Name</label>
						<input type="text" name="name" class="form-control margin-bottom-20" ng-model="student.name" ng-required="true" ng-minlength="5" ng-maxlength="20" />
                                                                                          <span ng-show="studentForm.name.$touched && studentForm.name.$error.required" style="color:red">Name Is Required.</span>
                                                                                       <span ng-show="studentForm.name.$touched && studentForm.name.$error.minlength" style="color:red">min 5 chars.</span>
                                                                                          <span ng-show="studentForm.name.$touched && studentForm.name.$error.maxlength" style="color:red">Max 20 chars.</span>      
                                                                                           <br />    
						<label>Mobile No.</label>
                                                <input type="text" name="mobno" class="form-control margin-bottom-20" id="mobno" ng-pattern="phoneNumbr" ng-model="phone" placeholder="+91-636-78658"  required/>
                                                                                           <span class="error" ng-show="studentForm.mobno.$error.required">Required!</span>
                                  <span class="error" ng-show="studentForm.mobno.$error.minlength">Phone no not less that 10 char.</span>
                                    <span class="error" ng-show="studentForm.mobno.$error.maxlength">Phone no not more than 11 char.</span>
                                     <span class="error" ng-show="studentForm.mobno.$error.pattern">Please match pattern [+91-036-78658 || 91-036-78658]</span>
                      
                         <label>Address</label>
						<input type="text" name="address" class="form-control margin-bottom-20">

						<label>Email Address <span class="color-red">*</span></label>
						<input type="email" name="email" class="form-control margin-bottom-20" id="email"  ng-model="student.email" required onchange="ajaxFunction()">
                                                                                          <span ng-show="studentForm.email.$touched && studentForm.email.$error.email" style="color:red">Please enter valid email id.</span>
                                 
                                                                    <label id="ajaxDiv" style="color:red"></label>
                
                
						<div class="row">
							<div class="col-sm-6">
								<label>Password <span class="color-red">*</span></label>
                                                                <input type="password" name="password" onkeyup="check();" id="txtPassword" class="form-control margin-bottom-20" required>
							</div>
							<div class="col-sm-6">
								<label>Confirm Password <span class="color-red">*</span></label>
                                                                <input type="password" onkeyup="check();" id="txtConfirmPassword" class="form-control margin-bottom-20" required>
							<span id='message'></span>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-md-8 col-sm-8 col-xs-12 checkbox">
                            
                             <div class="checkbox checkbox-default">
                                <input type="checkbox" id="checkbox2">
                                <label for="checkbox2">
                                  I read <a href="#">Terms and Conditions</a>
                                </label>
                            </div>
							</div>
							<div class="col-md-4 col-sm-4 col-xs-12 text-right">
								<button type="submit" class="btn btn-primary btn-sm">Register</button>
							</div>
						</div>
					</form>
				</div>
			</div>
        </div>
    </section>

    <!-- =-=-=-=-=-=-= Section End =-=-=-=-=-=-= -->

    <footer class="footer-area">

        <!--Footer Upper-->
        <div class="footer-content">
            <div class="container">
                <div class="row clearfix">

                    <!--Two 4th column-->
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <div class="row clearfix">
                            <div class="col-lg-7 col-sm-6 col-xs-12 column">
                                <div class="footer-widget about-widget">
                                    <div class="logo">
                                        <a href="index.jsp"><img src="images\logo-1.png" class="img-responsive" alt=""></a>
                                    </div>
                                    
                                    <ul class="contact-info">
                                        <li><span class="icon fa fa-map-marker"></span>Appu Bhawan,MANIT ,Bhopal</li>
                                        <li><span class="icon fa fa-phone"></span>(91) 9838341202</li>
										<li><span class="icon fa fa-phone"></span>(91) 8279786593</li>
										<li><span class="icon fa fa-envelope-o"></span>shashwat.washimkar1@gmail.com</li>
                                        <li><span class="icon fa fa-envelope-o"></span>shauryarastogi4@gmail.com</li>

                                    </ul>
                                    <div class="social-links-two clearfix"> <a href="#" class="facebook img-circle"><span class="fa fa-facebook-f"></span></a> <a href="#" class="twitter img-circle"><span class="fa fa-twitter"></span></a> <a href="#" class="google-plus img-circle"><span class="fa fa-google-plus"></span></a> <a href="#" class="linkedin img-circle"><span class="fa fa-pinterest-p"></span></a> <a href="#" class="linkedin img-circle"><span class="fa fa-linkedin"></span></a> </div>
                                </div>
                            </div>

                            <!--Footer Column-->
                            <div class="col-lg-5 col-sm-6 col-xs-12 column">
                                <h2>Our Service</h2>
                                <div class="footer-widget links-widget">
                                    <ul>
                                        <li><a href="#">Packaging And Storage</a></li>
                                        <li><a href="#">worldwide transport</a></li>
                                        <li><a href="#">Internation Air Freight</a></li>
                                        <li><a href="#">ground shipping</a></li>
                                        <li><a href="#">24/7 Support</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--Two 4th column End-->

                    <!--Two 4th column-->
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <div class="row clearfix">
                            <!--Footer Column-->
                            <div class="col-lg-7 col-sm-6 col-xs-12 column">
                                
                            </div>

                            <!--Footer Column-->
                            <div class="col-lg-5 col-sm-6 col-xs-12 column">
                                <div class="footer-widget links-widget">
                                    <h2>Site Links</h2>
                                    <ul>
                                        <li><a href="about.jsp">About Us</a></li>
                                        <li><a href="team.jsp">Our Team</a></li>
                                        <li><a href="services.jsp">Our Services</a></li>
                                        <li><a href="index-3.jsp">Blog</a></li>
                                        <li><a href="contact.jsp">Contact Us</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--Two 4th column End-->

                </div>
            </div>
        </div>

        <!--Footer Bottom-->
        <div class="footer-copyright">
            
        </div>
    </footer>
	
	
	<!-- =-=-=-=-=-=-= Quote Modal End =-=-=-=-=-=-= -->

    <!-- =-=-=-=-=-=-= JQUERY =-=-=-=-=-=-= -->
    <script src="js\jquery.min.js"></script>
    <!-- Bootstrap Core Css  -->
    <script src="js\bootstrap.min.js"></script>
    <!-- Dropdown Hover  -->
     <script src="js\bootstrap-dropdownhover.min.js"></script><!-- Jquery Easing -->
    <script type="text/javascript" src="js\easing.js"></script>
    <!-- Jquery Counter -->
    <script src="js\jquery.countTo.js"></script>
    <!-- Jquery Waypoints -->
    <script src="js\jquery.waypoints.js"></script>
    <!-- Jquery Appear Plugin -->
    <script src="js\jquery.appear.min.js"></script>
    <!-- Jquery Shuffle Portfolio -->
    <script src="js\jquery.shuffle.min.js"></script>
    <!-- Carousel Slider  -->
    <script src="js\carousel.min.js"></script>
    <!-- Jquery Migrate -->
    <script src="js\jquery-migrate.min.js"></script>
    <!--Style Switcher -->
    <script src="js\color-switcher.js"></script>
    <!-- Gallery Magnify  -->
    <script src="js\magnific-popup\jquery.magnific-popup.min.js"></script>
    <!-- Sticky Bar  -->
    <script src="js\theia-sticky-sidebar.js"></script>
    <!-- Template Core JS -->
    <script src="js\custom.js"></script>
 <!-- =-=-=-=-=-=-= Quote Modal =-=-=-=-=-=-= --> 
    <div class="modal fade " id="request-quote" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                <div class="quotation-box-1">
                        <h2>REQUEST A QUOTE</h2>
                        <div class="desc-text">
                            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr.</p>
                        </div>
                        <form action="contact.jsp" method="post">
                            <div class="row clearfix">
                                <!--Form Group-->
                                <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                    <input class="form-control" type="text" placeholder="Your Name" value="" name="your-name">
                                </div>
                                <!--Form Group-->
                                <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                    <input class="form-control" type="text" placeholder="Subject" value="" name="your-subject">
                                </div>
                                <!--Form Group-->
                                <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                    <input class="form-control" type="email" placeholder="Email Address" value="" name="your-email">
                                </div>
                                <!--Form Group-->
                                <!--Form Group-->
                                <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                    <textarea class="form-control" rows="7" cols="20" placeholder="Your Message" name="your-message"></textarea>
                                </div>
                                <!--Form Group-->
                                <div class="form-group col-md-12 col-sm-12 col-xs-12 text-right"> <a class="custom-button light">Submit Request</a> </div>
                            </div>
                        </form>
                    </div>
                </div>
                
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>
    <!-- =-=-=-=-=-=-= Quote Modal End =-=-=-=-=-=-= -->
</body>
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
<script type="text/javascript">
        function ajaxFunction()
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
        var email=document.getElementById("email").value;
        var url="checkemail.jsp?email="+email;
        ajaxrequest.open("GET",url,true);
        ajaxrequest.send(null);
    }
        </script>
</html>