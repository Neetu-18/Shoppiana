<%-- 
    Document   : about
    Created on : Sep 11, 2018, 8:36:10 AM
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
        
        <header>
            <jsp:include page="header.jsp" ></jsp:include>
        </header> 
         <nav>
          <jsp:include page="navigation.jsp" ></jsp:include>
        </nav> 
        <!-- banner-2 -->
	<div class="page-head_agile_info_w3l">

	</div>
	<!-- //banner-2 -->
        <!-- page -->
        <div class="services-breadcrumb">
            <div class="agile_inner_breadcrumb">
                <div class="container">
                    <ul class="w3_short">
                        <li>
                            <a href="index.html">Home</a>
                            <i>|</i>
                        </li>
                        <li>About Us</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- //page -->
        <!-- about page -->
        <!-- welcome -->
        <div class="welcome">
            <div class="container">
                <!-- tittle heading -->
                <h3 class="tittle-w3l">Welcome to our Site
                    <span class="heading-style">
                        <i></i>
                        <i></i>
                        <i></i>
                    </span>
                </h3>
                <!-- //tittle heading -->
                <div class="w3l-welcome-info">
                    <div class="col-sm-6 col-xs-6 welcome-grids">
                        <div class="welcome-img">
                            <img src="images/about.jpg" class="img-responsive zoom-img" alt="">
                        </div>
                    </div>
                    <div class="col-sm-6 col-xs-6 welcome-grids">
                        <div class="welcome-img">
                            <img src="images/about2.jpg" class="img-responsive zoom-img" alt="">
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="w3l-welcome-text">
                    <p>Shoppiana is a low-price online supermarket that gets products across categories like grocery, fruits, beauty & 
                        wellness, household care, baby care, pet care and meats & seafood delivered to your doorstep.</p>

                    <ul> 

                        <li><p> Choose from over 5,000 products at prices lower than supermarkets every day!</p></li>
                        <li><p> Schedule delivery as per your convenience.</p></li>
                        <li> <p> Flat 20% cashback on your first order with coupon code. Max cashback is Rs.250.</p></li>

                    </ul>

                </div>
            </div>
        </div>
	<!-- //welcome -->
	<!-- //about page -->
      
          <jsp:include page="footer.jsp" ></jsp:include>
      
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
                           window.location="index2.jsp";
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
