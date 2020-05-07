<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8">
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ScriptsBundle">
    <title>Packers And Movers</title>
    <!-- =-=-=-=-=-=-= Favicons Icon =-=-=-=-=-=-= -->
    <link rel="icon" href="images\favicon.ico" type="image/x-icon">
    <!-- =-=-=-=-=-=-= Mobile Specific =-=-=-=-=-=-= -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- =-=-=-=-=-=-= Bootstrap CSS Style =-=-=-=-=-=-= -->
    <link rel="stylesheet" href="css\bootstrap.css">
    <!-- =-=-=-=-=-=-= Template CSS Style =-=-=-=-=-=-= -->
    <link rel="stylesheet" href="css\style.css">
    <!-- =-=-=-=-=-=-= Font Awesome =-=-=-=-=-=-= -->
    <link rel="stylesheet" href="css\font-awesome.css" type="text/css">
    <!-- =-=-=-=-=-=-= Et Line Fonts =-=-=-=-=-=-= -->
    <link rel="stylesheet" href="css\et-line-fonts.css" type="text/css">
    <!-- =-=-=-=-=-=-= Magnific PopUP CSS =-=-=-=-=-=-= -->
    <link href="js\magnific-popup\magnific-popup.css" rel="stylesheet">
    <!-- =-=-=-=-=-=-= Owl carousel =-=-=-=-=-=-= -->
    <link rel="stylesheet" type="text/css" href="css\owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="css\owl.style.css">
    <!-- =-=-=-=-=-=-= Google Fonts =-=-=-=-=-=-= -->
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,400italic,600,600italic,700,700italic,900italic,900,300,300italic" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css">
    <!-- =-=-=-=-=-=-= Flat Icon =-=-=-=-=-=-= -->
    <link href="css\flaticon.css" rel="stylesheet">
    <!-- Theme Color -->
    <link rel="stylesheet" id="color" href="css\colors\defualt.css">
    <!-- For Style Switcher -->
    <link rel="stylesheet" id="theme-color" type="text/css" href="#">
        <!-- Animation Css -->
    <link href="css\animate.min.css" rel="stylesheet">
    <!-- Menu Hover -->
    <link href="css\bootstrap-dropdownhover.min.css" rel="stylesheet">
    <!-- JavaScripts -->
    <script src="js\modernizr.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
    <!-- =-=-=-=-=-=-= PRELOADER =-=-=-=-=-=-= -->
    <div class="preloader"><span class="preloader-gif"></span></div>

    

    <!-- =-=-=-=-=-=-= HEADER =-=-=-=-=-=-= -->
    <section class="top-bar">
        <div class="container">
            <div class="left-text nav-left pull-left">
                <p><span>Opening Hours :</span> Monday to Saturday - 8am to 5pm</p>
            </div>
            <!-- /.left-text -->
            <ul class="nav-right pull-right list-unstyled">
                <%
                String uname="";
                try
                {
                    uname=session.getAttribute("uname").toString();
                    if(uname.equals(""))
                    {
                        response.sendRedirect("login.jsp");
                    }
                }
                catch(Exception e)
                {
                    response.sendRedirect("login.jsp");
                }
                %>
             <li> <a href="logout.jsp"><i class="fa fa-lock"></i> Logout </a></li>
             <li> <a href="#"><i class="fa fa-user"></i> <%=uname%> </a></li>
             <li class="dropdown nav-profile"> 
              
            </li>
        </ul>
        </div>
    </section>
    <header class="header-area">

        <!-- Logo Bar -->
        <div class="logo-bar">
            <div class="container clearfix">
                <!-- Logo -->
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
                            
                                    <li><a href="index-3_with_user.jsp">Home</a> </li>
							
                                    <li><a href="about_with_user.jsp">About </a> </li>
                            
                                    <li><a href="services_with_user.jsp">Services</a> </li>
                                    
                           
                           <li><a href="gallery_with_user.jsp">Gallery</a></li>
                       
					   <li><a href="check_login.jsp">get a quote</a></li>
                        </ul>
                         </div>
                    <!-- /.navbar-collapse -->

                </div>
                <!-- /.container-end -->
            </nav>
        </div>
        <!-- /.navigation-end -->
        <!-- Menu  End -->
    </header>
    <!-- =-=-=-=-=-=-= HEADER END =-=-=-=-=-=-= -->

    <!-- =-=-=-=-=-=-= PAGE BREADCRUMB =-=-=-=-=-=-= -->
    <section class="breadcrumbs-area parallex">
        <div class="container">
            <div class="row">
                <div class="page-title">
                    <div class="col-sm-12 col-md-6 page-heading text-left">
                        <h3>Who we are</h3>
                        <h2>About Our Company</h2>
                    </div>
                    
                </div>
            </div>
        </div>
    </section>
    <!-- =-=-=-=-=-=-= PAGE BREADCRUMB END =-=-=-=-=-=-= -->


    <!-- =-=-=-=-=-=-= About Section =-=-=-=-=-=-= -->

    <section class="padding-top-70" id="about">
        <div class="container">
            <div class="row clearfix">
                <!--Column-->
                <div class="col-md-7 col-sm-12 col-xs-12 ">
                    <div class="about-title">
                        <h2>We Provide Services All Over The World</h2>
                        <p>Packers And Movers welcomes you to the world of Packers and Movers, Logistics, Cargo, Warehousing, Chain supply management a name that is sufficient to remove your moving and packing burden from your shoulders. Packers And Movers have been providing the moving and packing service for 22 years. In this fast moving scenario we provide the easiness to all our customers around the India with the services like:- Transportation, Cargo, Logistics, Distribution, Packing, Unpacking, Loading, Unloading adjusting, Insurance, Wooden standard packing by skilled packers and to load your house hold in container with safety and carefully as well. We are having the most skilled well trained driver on the road to take care of your house hold and belongings and assure to deliver on time to the destination. As we are having well Trained and Professional Team Members and Drivers, Location for all over National and International.
</p>
                        <p>We throughly assure you that the quality we have been maintaining for packaging is unmatchable and the proof is the review by our customers who already availed our services throughout the India. We have been serving the whole country by keeping the information through Info and Record Management Facility of our respected clients and customers. Since we are dealing in Packing and Moving, Packers And Movers whose head office is at Bhopal, has been providing its services to the entire nation including Army, Railway, Professionals, and individuals. No matter they belongs to which part of our beloved country, whether a person is Indian or foreigner we provide our best packing and moving service to the door.
</p>

                        <p>Now no one has to worry about their transfer, relocation or etc in India or International Moving. Packers And Movers shall always be there wherever a person belongs to, and in need, to be relocated wherever they want. You have to make a call and rest of things leave on Indias most Economical Movers and their skilled packers who will handle all such things and help you out. </p>

                    </div>

                </div>

                <!-- RIght Grid Form -->
                <div class="col-md-5 col-sm-12 col-xs-12 our-gallery">
                    <a class="tt-lightbox" href="images\about-company-1.png"> <img class="img-responsive margin-bottom-30" alt="Image" src="images\about-company-1.png"></a>
                    <a class="tt-lightbox" href="images\about-company-2.png"> <img class="img-responsive margin-bottom-30" alt="Image" src="images\about-company-2.png"></a>
                </div>
            </div>
        </div>
    </section>

    <!-- =-=-=-=-=-=-= About End =-=-=-=-=-=-= -->


    <!-- =-=-=-=-=-=-= SEPARATOR Fun Facts =-=-=-=-=-=-= -->
    <div class="parallex section-padding-70 fun-facts-bg text-center">
        <div class="container">
            <div class="row">
                <!-- countTo -->
                <div class="col-xs-6 col-sm-3 col-md-3">
                    <div class="statistic-percent" data-perc="356">
                        <div class="facts-icons"> <span class="flaticon-woman-with-headset"></span> </div>
                        <div class="fact"> <span class="percentfactor">356</span>
                            <p>Happy Clients</p>
                        </div>
                        <!-- end fact -->
                    </div>
                    <!-- end statistic-percent -->
                </div>
                <!-- end col-xs-6 col-sm-3 col-md-3 -->

                <!-- countTo -->
                <div class="col-xs-6 col-sm-3 col-md-3">
                    <div class="statistic-percent" data-perc="126">
                        <div class="facts-icons"> <span class="flaticon-commercial-delivery-symbol-of-a-list-on-clipboard-on-a-box-package"></span> </div>
                        <div class="fact"> <span class="percentfactor">126</span>
                            <p>Order Received</p>
                        </div>
                        <!-- end fact -->
                    </div>
                    <!-- end statistic-percent -->
                </div>
                <!-- end col-xs-6 col-sm-3 col-md-3 -->

                <!-- countTo -->
                <div class="col-xs-6 col-sm-3 col-md-3">
                    <div class="statistic-percent" data-perc="274">
                        <div class="facts-icons"> <span class="flaticon-free-delivery-truck"></span> </div>
                        <div class="fact"> <span class="percentfactor">274</span>
                            <p>Free Delivery</p>
                        </div>
                        <!-- end fact -->
                    </div>
                    <!-- end statistic-percent -->
                </div>
                <!-- end col-xs-6 col-sm-3 col-md-3 -->

                <!-- countTo -->
                <div class="col-xs-6 col-sm-3 col-md-3">
                    <div class="statistic-percent" data-perc="434">
                        <div class="facts-icons"> <span class="flaticon-ocean-transportation"></span> </div>
                        <div class="fact"> <span class="percentfactor">434</span>
                            <p>Completed Projects</p>
                        </div>
                        <!-- end fact -->
                    </div>
                    <!-- end statistic-percent -->
                </div>
                <!-- end col-xs-6 col-sm-3 col-md-3 -->

            </div>
            <!-- End row -->
        </div>
        <!-- end container -->
    </div>
    <!-- =-=-=-=-=-=-= SEPARATOR END =-=-=-=-=-=-= -->

    <!-- =-=-=-=-=-=-= Our Team =-=-=-=-=-=-= -->
    <section id="team" class="custom-padding white">
        <div class="container">
            <!-- title-section -->
            <div class="main-heading text-center">
                <h2>our caretakes</h2>
               </div>
            <!-- End title-section -->

            <!-- Row -->
            <div class="row">
                <!-- Team Grid -->
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="team-grid">
                        <div class="team-image">
                            <img alt="" class="img-responsive" src="images\team\admin1.jpg">
                            <div class="team-grid-overlay">
                                <div class="social-media">
                                    <a class="facebook" href="#"><i class="fa fa-facebook"></i></a>
                                    <a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                    <a class="google" href="#"><i class="fa fa-google-plus"></i></a>
                                    <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="team-content">
                            <h2>Shashwat Vashimkar</h2>
                            <p>Founder</p>
                        </div>
                    </div>
                </div>
                <!-- Team Grid End-->
                <!-- Team Grid -->
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="team-grid">
                        <div class="team-image">
                            <img alt="" class="img-responsive" src="images\team\admin2.jpg">
                            <div class="team-grid-overlay">
                                <div class="social-media">
                                    <a class="facebook" href="#"><i class="fa fa-facebook"></i></a>
                                    <a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                    <a class="google" href="#"><i class="fa fa-google-plus"></i></a>
                                    <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="team-content">
                            <h2>Shaurya Rastogi</h2>
                            <p>Director</p>
                        </div>
                    </div>
                </div>
                <!-- Team Grid End-->
                <!-- Team Grid -->
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="team-grid">
                        <div class="team-image">
                            <img alt="" class="img-responsive" src="images\team\admin3.jpg">
                            <div class="team-grid-overlay">
                                <div class="social-media">
                                    <a class="facebook" href="#"><i class="fa fa-facebook"></i></a>
                                    <a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                    <a class="google" href="#"><i class="fa fa-google-plus"></i></a>
                                    <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="team-content">
                            <h2>Vinay Yadav</h2>
                            <p>Co-founder</p>
                        </div>
                    </div>
                </div>
                <!-- Team Grid End-->
            </div>
            <!-- Row End -->
        </div>
        <!-- end container -->
    </section>
    <!-- =-=-=-=-=-=-= Our Team End =-=-=-=-=-=-= -->

    <!-- =-=-=-=-=-=-= FOOTER =-=-=-=-=-=-= -->
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
                                        <li><a href="index-7.jsp">Blog</a></li>
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
	
	<!-- =-=-=-=-=-=-= Quote Modal =-=-=-=-=-=-= -->
	<div data-target="#request-quote" data-toggle="modal" class="quote-button hidden-xs">
		  <a class="btn btn-primary" href="javascript:void(0)"><i class="fa fa-envelope"></i></a>
	</div>
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

</html>