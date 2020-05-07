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
                       <!-- <a href="o.jspnline-booking.jsp" class="btn btn-primary ">Get a Quote</a>   -->
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

    <!-- =-=-=-=-=-=-= HOME VIDEO =-=-=-=-=-=-= -->
    <section id="home" class="html-slider">
        <div class="overlay">
            <video class="text-center" muted="" autoplay="" loop="" poster="video/1.jpg"> 
      <!-- WebM/VP8 for Firefox4, Opera, and Chrome -->
       <source type="video/webm" src="video\1.webm"> 
      <!-- MP4 for Safari, IE9, iPhone, iPad, Android, and Windows Phone 7 -->
       <source type="video/mp4" src="video\1.mp4"> 
      Your browser does not support the video tag. 
   </video>
            <div class="slider-caption">
                <h1>Welcome to Packers And Movers</h1>
                
                <a class="btn" href="about.jsp">Learn More</a> </div>
        </div>
    </section>
    <!--======= HOME VIDEO END =========-->



    <!-- =-=-=-=-=-=-= Quote Seection =-=-=-=-=-=-= -->

    <section class="section-padding-70" id="about">
        <div class="container">
            <div class="row clearfix">

                <!--Column-->
                <div class="col-md-7 col-sm-12 col-xs-12 ">
                    <div class="about-title">
                        <h3>who we are</h3>
                        <h2>About Our Company</h2>
						<p>About Packers And Movers</p>
                        <p>Packers And Movers welcomes you to the world of Packers and Movers, Logistics, Cargo, Warehousing, Chain supply management a name that is sufficient to remove your moving and packing burden from your shoulders. Packers And Movers have been providing the moving and packing service for 22 years. In this fast moving scenario we provide the easiness to all our customers around the India with the services like:- Transportation, Cargo, Logistics, Distribution, Packing, Unpacking, Loading, Unloading adjusting, Insurance, Wooden standard packing by skilled packers and to load your house hold in container with safety and carefully as well.</p>
                    </div>

                </div>

                <!-- Quote Form -->
                <div class="col-md-5 col-sm-12 col-xs-12 our-gallery">
                    <img class="img-responsive " alt="Image" src="images\about-us.jpg">
                </div>
            </div>
        </div>
    </section>


    <!-- =-=-=-=-=-=-= Our Services =-=-=-=-=-=-= -->
    <section class="custom-padding services-2">
        <div class="container">
            <!-- title-section -->
            <div class="main-heading text-center">
                <h2>service we offer</h2>
                </div>
            <!-- End title-section -->

            <!-- Row -->
            <div class="row">

                <div class="col-sm-12 col-xs-12 col-md-12 ">
                    <!-- services box grid -->
                    <div class="col-sm-4 col-md-4 col-xs-12">
                        <div class="services-box-2 text-center">
                            <i class="flaticon-box-of-packing-for-delivery"></i>
                            <h4>packaging and storage</h4>
                            <p>After the completion of the survey phase, we start packing moves to meet your various gait requirements. Our following, safety standards of packing.</p>                     </div>
                       </div>
                    <!-- end services-box-2 -->

                   
                   

                    <!-- services box grid -->
                    <div class="col-sm-4 col-md-4 col-xs-12">
                        <div class="services-box-2 text-center">
                            <i class="flaticon-logistics-delivery-truck-in-movement"></i>
                            <h4>fast delivery</h4>
                            <p>By all means prepare the goods, we take delivery and then finally pack the goods at your given destination. Packers and Movers is India No #1 Service Provider.</p>
                       </div>
                    </div>
                    <!-- end services-box-2 -->

                    <!-- services box grid -->
                    <div class="col-sm-4 col-md-4 col-xs-12">
                        <div class="services-box-2 text-center">
                            <i class="flaticon-24-hours-symbol"></i>
                            <h4>24/7 Support </h4>
                            <p> Packers and Movers is the Best Service Provider in 24×7 India. Our expert team will give you complete information on vehicle size and insurance requirements.</p>
							</div>
                    </div>
                    <!-- end services-box-2 -->


                    <div class="clearfix"></div>
                </div>

            </div>
            <!-- Row End -->
        </div>
        <!-- end container -->
    </section>
    <!-- =-=-=-=-=-=-= Our Services-end =-=-=-=-=-=-= -->


    <section class="quote" id="quote">
        <div class="container">
            <div class="row clearfix">

                <!--Column-->
                <div class="col-md-7 col-sm-12 col-xs-12 ">
                    <div class="choose-title">
                        <h3>More about us</h3>
                        <h2>Why People Choose Us</h2>
                        </div>
                    <div class="choose-services">
                        <ul class="choose-list">

                            <!-- feature -->
                            <li>
                                <div class="choose-box"> <span class="iconbox"><i class="flaticon-logistics-delivery-truck-and-clock"></i></span>
                                    <div class="choose-box-content">
                                        <h4>Fast Worldwide delivery</h4>
                                        <p>By all means prepare the goods, we take delivery and then finally pack the goods at your given destination.Hd Packers and Movers India No #1 Service Provider.</p>
									</div>
                                </div>
                            </li>

                            <!-- feature -->
                            <li>
                                <div class="choose-box"> <span class="iconbox"><i class="flaticon-woman-with-headset"></i></span>
                                    <div class="choose-box-content">
                                        <h4>Safety & Compliance</h4>
                                        <p>After the completion of the survey phase, we start packing moves to meet your various gait requirements. Our following, safety standards of packing.</p>

                                       </div>
                                </div>
                            </li>
                        </ul>
                        <!-- end choose-list -->
                    </div>
                </div>

                <!-- Quote Form -->
                
                </div>
            </div>
        </div>
    </section>

    <!-- =-=-=-=-=-=-= Quote Seection end=-=-=-=-=-=-= -->
    
     <!-- =-=-=-=-=-=-= Gallery =-=-=-=-=-=-= -->
    <section id="gallery" class="custom-padding">
        <div class="container">
            <!-- title-section -->
            <div class="main-heading text-center">
                <h2>OUR GALLERY</h2>
               
            </div>
            <!-- End title-section -->

            <div class="portfolio-container text-center">


                <ul id="portfolio-grid" class="three-column hover-two">
                    <li class="portfolio-item gutter">
                        <div class="portfolio">
                            <div class="tt-overlay"></div>
                            <img src="images\portfolio\1.jpg" alt="">

                            <div class="portfolio-info">
                                <h3 class="project-title">Project Title</h3>
                                <a href="#" class="links">App Design</a>
                            </div>
                            <!-- /.project-info -->

                            <ul class="portfolio-details">
                                <li><a class="tt-lightbox" href="images\portfolio\1.jpg"><i class="fa fa-search"></i></a></li>
                                <li><a href="#"><i class="fa fa-external-link"></i></a></li>
                            </ul>
                        </div>
                        <!-- /.portfolio -->
                    </li>
                    <li class="portfolio-item gutter">
                        <div class="portfolio">
                            <div class="tt-overlay"></div>
                            <img src="images\portfolio\2.jpg" alt="">

                            <div class="portfolio-info">
                                <h3 class="project-title">Project Title</h3>
                                <a href="#" class="links">App Design</a>
                            </div>
                            <!-- /.project-info -->

                            <ul class="portfolio-details">
                                <li><a class="tt-lightbox" href="images\portfolio\2.jpg"><i class="fa fa-search"></i></a></li>
                                <li><a href="#"><i class="fa fa-external-link"></i></a></li>
                            </ul>
                        </div>
                        <!-- /.portfolio -->
                    </li>
                    <li class="portfolio-item gutter">
                        <div class="portfolio">
                            <div class="tt-overlay"></div>
                            <img src="images\portfolio\3.jpg" alt="">

                            <div class="portfolio-info">
                                <h3 class="project-title">Project Title</h3>
                                <a href="#" class="links">App Design</a>
                            </div>
                            <!-- /.project-info -->

                            <ul class="portfolio-details">
                                <li><a class="tt-lightbox" href="images\portfolio\3.jpg"><i class="fa fa-search"></i></a></li>
                                <li><a href="#"><i class="fa fa-external-link"></i></a></li>
                            </ul>
                        </div>
                        <!-- /.portfolio -->
                    </li>

                    <li class="portfolio-item gutter">
                        <div class="portfolio">
                            <div class="tt-overlay"></div>
                            <img src="images\portfolio\4.jpg" alt="">

                            <div class="portfolio-info">
                                <h3 class="project-title">Project Title</h3>
                                <a href="#" class="links">App Design</a>
                            </div>
                            <!-- /.project-info -->

                            <ul class="portfolio-details">
                                <li><a class="tt-lightbox" href="images\portfolio\4.jpg"><i class="fa fa-search"></i></a></li>
                                <li><a href="#"><i class="fa fa-external-link"></i></a></li>
                            </ul>
                        </div>
                        <!-- /.portfolio -->
                    </li>
                    <li class="portfolio-item gutter">
                        <div class="portfolio">
                            <div class="tt-overlay"></div>
                            <img src="images\portfolio\5.jpg" alt="">

                            <div class="portfolio-info">
                                <h3 class="project-title">Project Title</h3>
                                <a href="#" class="links">App Design</a>
                            </div>
                            <!-- /.project-info -->

                            <ul class="portfolio-details">
                                <li><a class="tt-lightbox" href="images\portfolio\5.jpg"><i class="fa fa-search"></i></a></li>
                                <li><a href="#"><i class="fa fa-external-link"></i></a></li>
                            </ul>
                        </div>
                        <!-- /.portfolio -->
                    </li>
                    <li class="portfolio-item gutter">
                        <div class="portfolio">
                            <div class="tt-overlay"></div>
                            <img src="images\portfolio\6.jpg" alt="">

                            <div class="portfolio-info">
                                <h3 class="project-title">Project Title</h3>
                                <a href="#" class="links">App Design</a>
                            </div>
                            <!-- /.project-info -->

                            <ul class="portfolio-details">
                                <li><a class="tt-lightbox" href="images\portfolio\6.jpg"><i class="fa fa-search"></i></a></li>
                                <li><a href="#"><i class="fa fa-external-link"></i></a></li>
                            </ul>
                        </div>
                        <!-- /.portfolio -->
                    </li>

                    <li class="portfolio-item gutter">
                        <div class="portfolio">
                            <div class="tt-overlay"></div>
                            <img src="images\portfolio\7.jpg" alt="">

                            <div class="portfolio-info">
                                <h3 class="project-title">Project Title</h3>
                                <a href="#" class="links">App Design</a>
                            </div>
                            <!-- /.project-info -->

                            <ul class="portfolio-details">
                                <li><a class="tt-lightbox" href="images\portfolio\7.jpg"><i class="fa fa-search"></i></a></li>
                                <li><a href="#"><i class="fa fa-external-link"></i></a></li>
                            </ul>
                        </div>
                        <!-- /.portfolio -->
                    </li>
                    <li class="portfolio-item gutter">
                        <div class="portfolio">
                            <div class="tt-overlay"></div>
                            <img src="images\portfolio\8.jpg" alt="">

                            <div class="portfolio-info">
                                <h3 class="project-title">Project Title</h3>
                                <a href="#" class="links">App Design</a>
                            </div>
                            <!-- /.project-info -->

                            <ul class="portfolio-details">
                                <li><a class="tt-lightbox" href="images\portfolio\8.jpg"><i class="fa fa-search"></i></a></li>
                                <li><a href="#"><i class="fa fa-external-link"></i></a></li>
                            </ul>
                        </div>
                        <!-- /.portfolio -->
                    </li>
                    <li class="portfolio-item gutter">
                        <div class="portfolio">
                            <div class="tt-overlay"></div>
                            <img src="images\portfolio\9.jpg" alt="">

                            <div class="portfolio-info">
                                <h3 class="project-title">Project Title</h3>
                                <a href="#" class="links">App Design</a>
                            </div>
                            <!-- /.project-info -->

                            <ul class="portfolio-details">
                                <li><a class="tt-lightbox" href="images\portfolio\9.jpg"><i class="fa fa-search"></i></a></li>
                                <li><a href="#"><i class="fa fa-external-link"></i></a></li>
                            </ul>
                        </div>
                        <!-- /.portfolio -->
                    </li>
                </ul>
            </div>

            <!-- portfolio-container -->



        </div>
        <!-- end container -->
    </section>
    <!-- =-=-=-=-=-=-= Blog & News end =-=-=-=-=-=-= -->
    
    <!-- =-=-=-=-=-=-= PARALLEX TESTIMONILS =-=-=-=-=-=-= -->
    <section class="testimonial-bg-2 parallex section-padding text-center">
        <div class="container">
            <div id="testimonials">
                <div class="item">
                    <div class="col-sm-12 col-md-12 col-xs-12 testimonial-grid text-center"> <img src="images\admin4.jpg" class="img-responsive" alt="Testimonials">
                        <p>I am discussion concerning Packers And Movers from the very first call they answered like a professionals. They came on the day that I asked to and packed the complete stuff and shifted it. There shifted it on time and not a single thing is missing. There have shifted it making without any damage to a single piece. There are the real professionals for the packers and movers. they have charge reasonably. They maintain a dignity. Of course I recommend this Honeywell to each and every one of you.</p>
						<div class="name">Prakhar Tiwari</div>
                        <div class="profession">CEO</div>
                    </div>
                </div>
                <div class="item">
                    <div class="col-sm-12 col-md-12 col-xs-12 testimonial-grid text-center"> <img src="images\admin5.jpg" alt="Testimonials" class="img-responsive">
                        <p>Recently I moved from Indore to Mumbai. I had excellent experience with Packers and Movers; they moved luggage on time and were co-operative. Luggage had couple of paintings with glass framing. Whole luggage was shifted on time without any damage, their price is reasonable and they told it right primary time. I had tried to contact other packers and movers too, some of them at first told very high price and later less price. I didn't face such issues with Packers And Movers, they told convenient price at first time.</p>
						<div class="name">Neeraj Gupta</div>
                        <div class="profession">Manager</div>
                    </div>
                </div>
               
               
            </div>
        </div>
        <!-- end container -->
    </section>
    <!-- =-=-=-=-=-=-= PARALLEX TESTIMONILS END =-=-=-=-=-=-= -->

   


   


    <!-- =-=-=-=-=-=-= Our Clients =-=-=-=-=-=-= -->
    <section class="section-padding-70 clients white">
        <div class="container">
            <!-- title-section -->
            <div class="main-heading text-center">
                <h2>our partners</h2>
             </div>
            <!-- End title-section -->

            <!-- Row -->
            <div class="row">

                <div class="col-md-3 col-sm-3 col-xs-12">
                    <div class="clients-grid"> <img src="images\clients\client_5.png" alt="" class="img-responsive"> </div>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-12">
                    <div class="clients-grid"> <img src="images\clients\client_5.png" alt="" class="img-responsive"> </div>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-12">
                    <div class="clients-grid"> <img src="images\clients\client_5.png" alt="" class="img-responsive"> </div>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-12">
                    <div class="clients-grid"> <img src="images\clients\client_5.png" alt="" class="img-responsive"> </div>
                </div>
            </div>
            <!-- Row End -->
            <!-- end container -->
        </div>
    </section>
    <!-- =-=-=-=-=-=-= Our Clients -end =-=-=-=-=-=-= -->

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