<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<html lang="en">
<head>
<title>DoctoApp | Home :: w3layouts</title>
<link rel="stylesheet" href="css/bootstrap.min.css"><!-- bootstrap-CSS -->
<link rel="stylesheet" href="css/bootstrap-select.css"><!-- bootstrap-select-CSS -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" /><!-- style.css -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" /><!-- flexslider-CSS -->
<link rel="stylesheet" href="css/font-awesome.min.css" /><!-- fontawesome-CSS -->
<link rel="stylesheet" href="css/menu_sideslide.css" type="text/css" media="all"><!-- Navigation-CSS -->
<!-- meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //meta tags -->
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!--//fonts-->
</head>
<body>
		<!-- Navigation -->
		<div class="agiletopbar">
			<div class="wthreenavigation">
				<div class="menu-wrap">
				<nav class="menu">
					<div class="icon-list">
                                            <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con5=DriverManager.getConnection("jdbc:mysql://localhost:3306/doctoappnew","root","");
        Statement stmt5=con5.createStatement();
       ResultSet rs5;
  rs5=stmt5.executeQuery("select * from category");
        while(rs5.next())
        {


        %>
        <a href="categories_1_2.jsp#parentVerticalTab<%out.println(rs5.getInt(1));%>"><i class="fa fa-fw fa-mobile"></i><span><%out.println(rs5.getString(2));%></span></a>
						<%}%>
					</div>
				</nav>
				<button class="close-button" id="close-button">Close Menu</button>
			</div>
			<button class="menu-button" id="open-button"> </button>
			</div>
			<div class="clearfix"></div>
		</div>
		<!-- //Navigation -->
	<!-- header -->
	<header>
		<div class="w3ls-header"><!--header-one-->
			<div class="w3ls-header-left">
				<p><a href="categories_1_2.jsp"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i> Book Appointment</a></p>
			</div>
			<div class="w3ls-header-right">
				<ul>
				
					
					<li class="dropdown head-dpdn">
						<a href="signin.jsp" aria-expanded="false"><i class="fa fa-user" aria-hidden="true"></i> Sign In</a>
					</li>


					<li class="dropdown head-dpdn">
						<div class="header-right">
	<!-- Large modal -->
			<div class="agile-its-selectregion">
				<button class="btn btn-primary" data-toggle="modal" data-target="#myModal">
				<i class="fa fa-globe" aria-hidden="true"></i>Select City</button>
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-hidden="true">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
										&times;</button>
									<h4 class="modal-title" id="myModalLabel">
										Please Choose Your Location</h4>
								</div>
								<div class="modal-body">
									 <form class="form-horizontal" action="#" method="get">
										<div class="form-group">
											<select id="basic2" class="show-tick form-control" multiple>
												<optgroup label="Popular Cities">
													<option selected style="display:none;color:#eee;">Select City</option>
													<option>Birmingham</option>
													<option>Anchorage</option>
													<option>Phoenix</option>
													<option>Little Rock</option>
													<option>Los Angeles</option>
													<option>Denver</option>
													<option>Bridgeport</option>
													<option>Wilmington</option>
													<option>Jacksonville</option>
													<option>Atlanta</option>
													<option>Honolulu</option>
													<option>Boise</option>
													<option>Chicago</option>
													<option>Indianapolis</option>
												</optgroup>
													<optgroup label="Alabama">
														<option>Birmingham</option>
														<option>Montgomery</option>
														<option>Mobile</option>
														<option>Huntsville</option>
														<option>Tuscaloosa</option>
													</optgroup>
													<optgroup label="Alaska">
														<option>Anchorage</option>
														<option>Fairbanks</option>
														<option>Juneau</option>
														<option>Sitka</option>
														<option>Ketchikan</option>
													</optgroup>
													<optgroup label="Arizona">
														<option>Phoenix</option>
														<option>Tucson</option>
														<option>Mesa</option>
														<option>Chandler</option>
														<option>Glendale</option>
													</optgroup>

											</select>
										</div>
									  </form>
								</div>
							</div>
						</div>
					</div>
			</div>
		</div>
					</li>
				</ul>
			</div>

			<div class="clearfix"> </div>
		</div>
		<div class="container">
			<div class="agile-its-header">
				<div class="logo">
					<h1><a href="index.jsp"><span>Docto</span>App</a></h1>
				</div>
				<div style="height: 100px;position: absolute;left: 420px;top: 60px;">
					<form action="all-classifieds_2_1.jsp" method="post">
						
                                                 <input style="height: 35px; width: 330px; font-size: 15px" list="browsers" name="browsers" type="text" placeholder="Area?" required="" />
						
                                                 <datalist id="browsers" >
                                                     <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con6=DriverManager.getConnection("jdbc:mysql://localhost:3306/doctoappnew","root","");
        Statement stmt6=con6.createStatement();
       ResultSet rs6;
  rs6=stmt6.executeQuery("select * from area");
        while(rs6.next())
        {


        %>
        <option ><%out.println(rs6.getString(2));%></option>
                                                     
                                                         <%}%>
                                                 </datalist>
                                                 <input style="height: 35px; width: 330px; font-size: 15px" list="browser" name="browser" type="text" placeholder="Sub-Category?" required="" />
						
                                                <datalist id="browser" >
                                                     <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con4=DriverManager.getConnection("jdbc:mysql://localhost:3306/doctoappnew","root","");
        Statement stmt4=con4.createStatement();
       ResultSet rs4;
  rs4=stmt4.executeQuery("select * from subcategories");
        while(rs4.next())
        {


        %>
        <option><%out.println(rs4.getString(2));%></option>
        
                                                     
                                                         <%}%>
                                                 </datalist>
						<button style="border-color: black;background-color: red;position: absolute;top: 0px;left: 670px" type="submit" class="btn btn-default" aria-label="Left Align">Search
							<i class="fa fa-search" aria-hidden="true"> </i>
						</button>
					</form>
				
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</header>
	<!-- //header -->
	<!-- Slider -->
        
		<div class="slider">
			<ul class="rslides" id="slider">
				<li>
					<div class="w3ls-slide-text">
						<h3>Easiest way to book appointments with doctors.</h3>
						<a href="categories_1_2.jsp" class="w3layouts-explore-all">Browse all Categories</a>
					</div>
				</li>
				<li>
					<div class="w3ls-slide-text">
						<h3>Find the Best Doctors Here</h3>
						<a href="categories_1_2.jsp" class="w3layouts-explore">Explore</a>
					</div>
				</li>

			</ul>
		</div>
		<!-- //Slider -->
		<!-- content-starts-here -->
		<div class="main-content">
			<div class="w3-categories">
				<h3>Browse Categories</h3>
				<div class="container">
				<%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con3=DriverManager.getConnection("jdbc:mysql://localhost:3306/doctoappnew","root","");
        Statement stmt3=con3.createStatement();
       ResultSet rs3;
  rs3=stmt3.executeQuery("select * from category");
        while(rs3.next())
        {


        %>	
                                    <div class="col-md-3">
						<div class="focus-grid w3layouts-boder1">
                                                    
							<a class="btn-8" href="categories_1_2.jsp#parentVerticalTab<%out.println(rs3.getInt(1));%>">
												
	
                                                            <div class="focus-border">
									<div class="focus-layout">
										<div class="focus-image"><i class="fa fa-mobile"></i></div>
                                                                                <h4 class="clrchg"> <%out.println(rs3.getString(2));%></h4>
									</div>
								</div>
							</a>
						</div>
					</div>
		<%}%>			

					<div class="clearfix"></div>
				</div>
			</div>
			<!-- most-popular-ads
                        
                        
                        
                        
                        -->
        
			<div class="w3l-popular-ads">
				<h3>Registration and Bookings</h3>
				 <div class="w3l-popular-ads-info">
					<div class="col-md-4 w3ls-portfolio-left">
						<div class="portfolio-img event-img">
                                                    <img src="images/ad1.jpg" class="img-responsive" alt=""/>
							<div class="over-image"></div>
						</div>
						<div class="portfolio-description">
						   <h4><a href="categories_1_2.jsp">Book Appointment</a></h4>
						   <p>Book your appointments with your choicable doctor here.</p>
							<a href="categories_1_2.jsp">
								<span>Explore</span>
							</a>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-4 w3ls-portfolio-left">
						<div class="portfolio-img event-img">
							<img src="images/" class="img-responsive" alt=""/>
							 <div class="over-image"></div>
						</div>
						<div class="portfolio-description">
						   <h4><a href="viewmedicalrecords.jsp">Medical Records</a></h4>
						   <p>View your medical records here.</p>
							<a href="viewmedicalrecords.jsp">
								<span>Explore</span>
							</a>
						</div>
						<div class="clearfix"> </div>
					</div>
					
					<div class="col-md-4 w3ls-portfolio-left">
						<div class="portfolio-img event-img">
							<img class="img-responsive" src="images/"  alt=""/>
							 <div class="over-image"></div>
						</div>
						<div class="portfolio-description">
						   <h4><a href="doctorregistration.jsp">Doctor Registration</a></h4>
						   <p>Patients are looking for doctors like you. Register here</p>
							<a href="doctorregistration.jsp">
								<span>Explore</span>
							</a>
						</div>
						<div class="clearfix"> </div>
					</div>
					
					
					<div class="clearfix"> </div>
				 </div>
			 </div>
			<!-- most-popular-ads -->

			<!--partners-->

		<!--//partners-->
		<!-- mobile app -->
                
                
                <!-- //mobile app -->
		</div>
		<!--footer section start-->
		<footer>
			<div class="w3-agileits-footer-top">
				<div class="container">
					<div class="wthree-foo-grids">
						<div class="col-md-3 wthree-footer-grid">s
							<h4 class="footer-head">Who We Are</h4>
							<p>DoctoApp is a familiar home for many users. It connects them with their respective choicable doctors.</p>
							<ul>
								<li><a href="howitworks.html"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>About Us</a></li>

							</ul>
						</div>
						<div class="col-md-3 wthree-footer-grid">
							<h4 class="footer-head">Bookings</h4>
							<ul>
								<li><a href="viewmedicalrecords.jsp"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>View Medical Records</a></li>
								<li><a href="faq.html"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>Order Medicines</a></li>
								<li><a href="feedback.html"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>Chat with Doctor</a></li>


							</ul>
						</div>
						<div class="col-md-3 wthree-footer-grid">
							<h4 class="footer-head">Registration</h4>
							<ul>

								<li><a href="doctorregistration.jsp"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>Doctor Registration</a></li>
							</ul>
						</div>
						<div class="col-md-3 wthree-footer-grid">
							<h4 class="footer-head">Contact Us</h4>
							<span class="hq">Our headquarters</span>
							<address>
								<ul class="location">
									<li><span class="glyphicon glyphicon-map-marker"></span></li>
									<li>CENTER FOR FINANCIAL ASSISTANCE TO DEPOSED NIGERIAN ROYALTY</li>
								</ul>
								<div class="clearfix"> </div>
								<ul class="location">
									<li><span class="glyphicon glyphicon-earphone"></span></li>
									<li>+0 561 111 235</li>
								</ul>
								<div class="clearfix"> </div>
								<ul class="location">
									<li><span class="glyphicon glyphicon-envelope"></span></li>
									<li><a href="mailto:info@example.com">mail@example.com</a></li>
								</ul>
							</address>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="agileits-footer-bottom text-center">
			<div class="container">
				<div class="w3-footer-logo">
					<h1><a href="index.jsp"><span>Docto</span>App</a></h1>
				</div>
				<div class="w3-footer-social-icons">
					<ul>
						<li><a class="facebook" href="#"><i class="fa fa-facebook" aria-hidden="true"></i><span>Facebook</span></a></li>
						<li><a class="googleplus" href="#"><i class="fa fa-google-plus" aria-hidden="true"></i><span>Google+</span></a></li>
						<li><a class="dribbble" href="#"><i class="fa fa-instagram" aria-hidden="true"></i><span>Instagram</span></a></li>
					</ul>
				</div>
				<div class="copyrights">
					<p> © 2016 DoctoApp. All Rights Reserved | Design by  <a href="http://w3layouts.com/"> W3layouts</a></p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		</footer>
        <!--footer section end-->
		<!-- Navigation-Js-->
			<script type="text/javascript" src="js/main.js"></script>
			<script type="text/javascript" src="js/classie.js"></script>
		<!-- //Navigation-Js-->
		<!-- js -->
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<!-- js -->
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/bootstrap.js"></script>
		<script src="js/bootstrap-select.js"></script>
		<script>
		  $(document).ready(function () {
			var mySelect = $('#first-disabled2');

			$('#special').on('click', function () {
			  mySelect.find('option:selected').prop('disabled', true);
			  mySelect.selectpicker('refresh');
			});

			$('#special2').on('click', function () {
			  mySelect.find('option:disabled').prop('disabled', false);
			  mySelect.selectpicker('refresh');
			});

			$('#basic2').selectpicker({
			  liveSearch: true,
			  maxOptions: 1
			});
		  });
		</script>
		<!-- language-select -->
		<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
		<link href="css/jquery.uls.css" rel="stylesheet"/>
		<link href="css/jquery.uls.grid.css" rel="stylesheet"/>
		<link href="css/jquery.uls.lcd.css" rel="stylesheet"/>
		<!-- Source -->
		<script src="js/jquery.uls.data.js"></script>
		<script src="js/jquery.uls.data.utils.js"></script>
		<script src="js/jquery.uls.lcd.js"></script>
		<script src="js/jquery.uls.languagefilter.js"></script>
		<script src="js/jquery.uls.regionfilter.js"></script>
		<script src="js/jquery.uls.core.js"></script>
		<script>
					$( document ).ready( function() {
						$( '.uls-trigger' ).uls( {
							onSelect : function( language ) {
								var languageName = $.uls.data.getAutonym( language );
								$( '.uls-trigger' ).text( languageName );
							},
							quickList: ['en', 'hi', 'he', 'ml', 'ta', 'fr'] //FIXME
						} );
					} );
				</script>
		<!-- //language-select -->
		<script type="text/javascript" src="js/jquery.flexisel.js"></script><!-- flexisel-js -->
					<script type="text/javascript">
						 $(window).load(function() {
							$("#flexiselDemo3").flexisel({
								visibleItems:1,
								animationSpeed: 1000,
								autoPlay: true,
								autoPlaySpeed: 5000,
								pauseOnHover: true,
								enableResponsiveBreakpoints: true,
								responsiveBreakpoints: {
									portrait: {
										changePoint:480,
										visibleItems:1
									},
									landscape: {
										changePoint:640,
										visibleItems:1
									},
									tablet: {
										changePoint:768,
										visibleItems:1
									}
								}
							});

						});
					   </script>
		<!-- Slider-JavaScript -->
			<script src="js/responsiveslides.min.js"></script>
			 <script>
			$(function () {
			  $("#slider").responsiveSlides({
				auto: true,
				pager: false,
				nav: true,
				speed: 500,
				maxwidth: 800,
				namespace: "large-btns"
			  });

			});
		  </script>
		<!-- //Slider-JavaScript -->
		<!-- here stars scrolling icon -->
			<script type="text/javascript">
				$(document).ready(function() {
					/*
						var defaults = {
						containerID: 'toTop', // fading element id
						containerHoverID: 'toTopHover', // fading element hover id
						scrollSpeed: 1200,
						easingType: 'linear'
						};
					*/

					$().UItoTop({ easingType: 'easeOutQuart' });

					});
			</script>
			<!-- start-smoth-scrolling -->
			<script type="text/javascript" src="js/move-top.js"></script>
			<script type="text/javascript" src="js/easing.js"></script>
			<script type="text/javascript">
				jQuery(document).ready(function($) {
					$(".scroll").click(function(event){
						event.preventDefault();
						$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
					});
				});
			</script>
			<!-- start-smoth-scrolling -->
		<!-- //here ends scrolling icon -->
</body>
</html>