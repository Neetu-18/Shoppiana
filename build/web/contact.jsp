<%-- 
    Document   : contact
    Created on : Sep 12, 2018, 3:30:14 AM
    Author     : rohitkumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <% 
        response.setHeader("cache-control", "no-cache,no-store,must-revalidate"); //http 1.1
         response.setHeader("pragma","no-cache"); //http 1.0
         response.setHeader("Expires","0"); //proxies
    %>
<!DOCTYPE html>
<html lang="zxx">
    <head>
        
        <title>Shoppiana</title>
	<!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Shoppiana" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--//tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/font-awesome.css" rel="stylesheet">
	<!--pop-up-box-->
	<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!--//pop-up-box-->
	<!-- price range -->
	<link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
	<!-- fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
       
    </head>
    <body>
        <!-- header page -->
        <header>
            <jsp:include page="header.jsp" ></jsp:include>
        </header> 
        <!-- navigation page -->
         <nav>
          <jsp:include page="navigation.jsp" ></jsp:include>
        </nav>   <!-- page -->
        <div class="services-breadcrumb">
            <div class="agile_inner_breadcrumb">
                <div class="container">
                    <ul class="w3_short">
                        <li>
                            <a href="index.jsp">Home</a>
                            <i>|</i>
                        </li>
                        <li>contact Us</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- //page -->
        <!-- contact page -->
        <div class="contact-w3l">
            <div class="container">
                <!-- tittle heading -->
                <h3 class="tittle-w3l">Contact Us
                    <span class="heading-style">
                        <i></i>
                        <i></i>
                        <i></i>
                    </span>
                </h3>
                <!-- //tittle heading -->
                  <% if ((request.getParameter("msg1")) != null) {%>
                  <h3 class="text-success text-center"><%= request.getParameter("msg1")%></h3>
                  <br>
                  <% }%>
                  <!-- contact -->
                  <div class="contact agileits">

                      <div class="contact-agileinfo">

                          <div class="contact-form wthree">

                              <form action="feedback" method="post">
                                  <div class=""> <input type="text" name="name" placeholder="Name" required=""></div>
                                  <div class=""> <input class="text" type="text" name="subject" placeholder="Subject" required=""></div>
                                  <div class=""> <input class="email" type="email" name="email" placeholder="Email" required=""></div>
                                  <div class=""> <textarea placeholder="Message" name="message" required=""></textarea></div>
                                  <input type="submit" value="Submit">
                              </form>
                          </div>
                          <div class="contact-right wthree">
                              <div class="col-xs-7 contact-text w3-agileits">
                                  <h4>GET IN TOUCH :</h4>
                                  <p><i class="fa fa-map-marker"></i> 123 New Delhi,India.</p>
                                  <p><i class="fa fa-phone"></i> Telephone : 011 112 3333</p>
                                  <p><i class="fa fa-fax"></i> FAX : +91 98 998 4444</p>
                                  <p><i class="fa fa-envelope-o"></i> Email :
                                      <a href="example@mail.com">mail@Shppiana.com</a></p>
                              </div>
                              <div class="col-xs-5 contact-agile"> <img src="images/contact2.jpg" alt=""></div>
                              <div class="clearfix"> </div>
                          </div>
                      </div>
                  </div>
                  <!-- //contact -->
            </div>
        </div>
        <!-- map -->
          <div class="map w3layouts">
              <iframe src="https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d56040.44738728227!2d77.17400157082582!3d28.613934600661093!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x390cfd5b347eb62d%3A0x52c2b7494e204dce!2sNew+Delhi%2C+Delhi!3m2!1d28.6139391!2d77.2090212!5e0!3m2!1sen!2sin!4v1536748457612" 
                      width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
          </div>
          <!-- //map -->
        <!-- Footer  -->
          <jsp:include page="footer.jsp" ></jsp:include>
         <!-- //Footer -->
          <!-- js-files -->

          <!-- jquery -->
          <script src="js/jquery-2.1.4.min.js"></script>
          <!-- //jquery -->

          <!--//Login validation -->
        <script>
            $(function(){
                $("#myModal1").click(function (){
                    $("#login").css({"display":"block"});
                });
                $("#submit").click(function(){
                   $.post("CustomerLogin",{"user":$("#user").val(),"pwd":$("#pwd").val()},function(data){
                       if(data.trim()=="Error")
                           $("#error").html("Invalid username or Password");
                       else
                           window.location="index.jsp";
                   }) ;
                });
                
                $("#submit2").click(function(){
                   $.post("SendMail",{"user":$("#user").val()},function(data){
                       if(data.trim()=="Error")
                           $("#error").html("Invalid email...!");
                       else 
                           $("#success").html("Password send on your mail successfully...!");
                   }) ;
                });
            });
        </script>
        
	<!-- popup modal (for signin & signup)-->
	<script src="js/jquery.magnific-popup.js"></script>
	<script>
		$(document).ready(function () {
			$('.popup-with-zoom-anim').magnificPopup({
				type: 'inline',
				fixedContentPos: false,
				fixedBgPos: true,
				overflowY: 'auto',
				closeBtnInside: true,
				preloader: false,
				midClick: true,
				removalDelay: 300,
				mainClass: 'my-mfp-zoom-in'
			});

		});
	</script>
	<!-- Large modal -->
	<!-- <script>
		$('#').modal('show');
	</script> -->
	<!-- //popup modal (for signin & signup)-->

	<!-- cart-js -->
	<script src="js/minicart.js"></script>
	<script>
		paypalm.minicartk.render(); //use only unique class names other than paypalm.minicartk.Also Replace same class name in css and minicart.min.js

		paypalm.minicartk.cart.on('checkout', function (evt) {
			var items = this.items(),
				len = items.length,
				total = 0,
				i;

			// Count the number of each item in the cart
			for (i = 0; i < len; i++) {
				total += items[i].get('quantity');
			}

			if (total < 3) {
				alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
				evt.preventDefault();
			}
		});
	</script>
	<!-- //cart-js -->

	<!-- price range (top products) -->
	<script src="js/jquery-ui.js"></script>
	<script>
		//<![CDATA[ 
		$(window).load(function () {
			$("#slider-range").slider({
				range: true,
				min: 0,
				max: 9000,
				values: [50, 6000],
				slide: function (event, ui) {
					$("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
				}
			});
			$("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

		}); //]]>
	</script>
	<!-- //price range (top products) -->

	<!-- flexisel (for special offers) -->
	<script src="js/jquery.flexisel.js"></script>
	<script>
		$(window).load(function () {
			$("#flexiselDemo1").flexisel({
				visibleItems: 3,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: {
					portrait: {
						changePoint: 480,
						visibleItems: 1
					},
					landscape: {
						changePoint: 640,
						visibleItems: 2
					},
					tablet: {
						changePoint: 768,
						visibleItems: 2
					}
				}
			});

		});
	</script>
	<!-- //flexisel (for special offers) -->

	<!-- password-script -->
	<script>
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- //password-script -->
	<!-- smoothscroll -->
	<script src="js/SmoothScroll.min.js"></script>
	<!-- //smoothscroll -->

	<!-- start-smooth-scrolling -->
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();

				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smooth-scrolling -->
	<!-- smooth-scrolling-of-move-up -->
	<script>
		$(document).ready(function () {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			$().UItoTop({
				easingType: 'easeOutQuart'
			});
		});
	</script>
	<!-- //smooth-scrolling-of-move-up -->
        
	<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<!-- //js-files -->

    </body>
</html>
