<%-- 
    Document   : single
    Created on : Sep 6, 2018, 9:24:56 AM
    Author     : rohitkumar
--%>

<%@page import="com.model.prod_model"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bean.prod_bean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
ArrayList allProduct=null;
prod_model prod=new prod_model();
prod_bean prodbean=null;
int i=0;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shoppiana</title>
        <!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Shoppiana online shopping site" />
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
	<!-- flexslider -->
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
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
        </nav>
 
        <!-- page -->
        <div class="services-breadcrumb">
            <div class="agile_inner_breadcrumb">
                <div class="container">
                    <ul class="w3_short">
                        <li><a href="index.jsp">Home</a>
                            <i>|</i>  </li>
                        <li>Product Details</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- //page -->
        <!-- Single Page -->
        <div class="banner-bootom-w3-agileits">
            <div class="container">
                <!-- tittle heading -->
                <h3 class="tittle-w3l">Product Details
                    <span class="heading-style">
                        <i></i>
                        <i></i>
                        <i></i>
                    </span>
                </h3>
                <!-- //tittle heading -->
                        
 <%   
     String name=request.getParameter("var");
if((allProduct=prod.singleprod(name)).isEmpty()==false)
{
while(i<allProduct.size()){
prodbean=(prod_bean)allProduct.get(i);

%>
<div class="col-md-5 single-right-left ">
    <div class="grid images_3_of_2">
        <div class="flexslider">
            <ul class="slides">
                <li data-thumb='Retriveimage?<%=prodbean.getP_id()%>'>
                    <div class="thumb-image">
                        <img src='Retriveimage?<%=prodbean.getP_id()%>' width="150" height="150" data-imagezoom="true" class="img-responsive" alt=""> </div>
                </li>
                <li data-thumb='Retriveimage?<%=prodbean.getP_id()%>'>
                    <div class="thumb-image">
                        <img src='Retriveimage?<%=prodbean.getP_id()%>' data-imagezoom="true" class="img-responsive" alt=""> </div>
                </li>
                <li data-thumb='Retriveimage?<%=prodbean.getP_id()%>'>
                    <div class="thumb-image">
                        <img src='Retriveimage?<%=prodbean.getP_id()%>' data-imagezoom="true" class="img-responsive" alt=""> </div>
                </li>
            </ul>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<div class="col-md-7 single-right-left simpleCart_shelfItem">
    <h3><%=prodbean.getName() + ", " + prodbean.getQuantity()%></h3>
    <div class="rating1">
        <span class="starRating">
            <input id="rating5" type="radio" name="rating" value="5">
            <label for="rating5">5</label>
            <input id="rating4" type="radio" name="rating" value="4">
            <label for="rating4">4</label>
            <input id="rating3" type="radio" name="rating" value="3" checked="">
            <label for="rating3">3</label>
            <input id="rating2" type="radio" name="rating" value="2">
            <label for="rating2">2</label>
            <input id="rating1" type="radio" name="rating" value="1">
            <label for="rating1">1</label>
        </span>
    </div>
    <p>
        <span class="item_price">$<%=prodbean.getPrice()%></span>
        <del><span class="fa fa-rupee" aria-hidden="true"></span> <%= prodbean.getDiscount()%></del>
        <label>Free delivery</label>
    </p>
    <div class="single-infoagile">
        <ul>
            <li>Cash on Delivery Eligible.</li>
            <li>Shipping Speed to Delivery.</li>
            <li>Sold and fulfilled by Supple Tek (3.6 out of 5 | 8 ratings).</li>
            <li>1 offer from <span class="item_price"><span class="fa fa-rupee" aria-hidden="true"></span> <%=prodbean.getPrice()%></span></li>
        </ul>
    </div>
    <div class="product-single-w3l">
        <p>  <i class="fa fa-hand-o-right" aria-hidden="true"></i>This is a
            <label>Vegetarian</label> product.</p>
        <ul>
            <li><%= prodbean.getDescription()%></li>
        </ul>
        <p> <i class="fa fa-refresh" aria-hidden="true"></i>All food products are
            <label>non-returnable.</label> </p>
    </div>
    <div class="occasion-cart">
        <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
            <form action="#" method="post">
                <fieldset>
                    <input type="hidden" name="cmd" value="_cart" />
                    <input type="hidden" name="add" value="1" />
                    <input type="hidden" name="business" value=" " />
                    <input type="hidden" name="item_name" value=<%=prodbean.getName() + ", " + prodbean.getQuantity()%> />
                    <input type="hidden" name="amount" value=<%=prodbean.getPrice()%> />
                    <input type="hidden" name="discount_amount" value="1.00" />
                    <input type="hidden" name="currency_code" value="USD" />
                    <input type="hidden" name="return" value=" " />
                    <input type="hidden" name="cancel_return" value=" " />
                    <input type="submit" name="submit" value="Add to cart" class="button" />
                </fieldset>
            </form>
        </div>

    </div>

</div>
                        
<%    i++; }
    i=0;
      }
else { %> 

<div class="text-danger">Product Details Not Found</div>

<%}%>
<div class="clearfix"> </div>
            </div>
        </div>
        <!-- //Single Page -->
        <!-- special offers -->
        <div class="featured-section" id="projects">
            <div class="container">
                <!-- tittle heading -->
                <h3 class="tittle-w3l">Add More
                    <span class="heading-style">
                        <i></i>
                        <i></i>
                        <i></i>
                    </span>
                </h3>
                <!-- //tittle heading -->
                <div class="content-bottom-in">
                    <ul id="flexiselDemo1">
 <%   
     
  if((allProduct=prod.getprod("special offer")).isEmpty()==false)
{
while(i<allProduct.size()){
prodbean=(prod_bean)allProduct.get(i);
%>   
                                    
<li>
    <div class="w3l-specilamk">
        <div class="speioffer-agile">
            <a href="single.jsp?var=<%=prodbean.getName()%>">
                <img src='Retriveimage?<%=prodbean.getP_id()%>' alt="">
            </a>
        </div>
        <div class="product-name-w3l">
            <h4>
                <a href="single.jsp?var=<%=prodbean.getName()%>"><%=prodbean.getName() + "," + prodbean.getQuantity()%></a>
            </h4>
            <div class="w3l-pricehkj">
                <h6><span class="fa fa-rupee" aria-hidden="true"></span> <%=prodbean.getPrice()%></h6>
                <p>Save <span class="fa fa-rupee" aria-hidden="true"></span> 40.00</p>
            </div>
            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                <form action="#" method="post">
                    <fieldset>
                        <input type="hidden" name="cmd" value="_cart" />
                        <input type="hidden" name="add" value="1" />
                        <input type="hidden" name="business" value=" " />
                        <input type="hidden" name="item_name" value=<%=prodbean.getName() + "," + prodbean.getQuantity()%> />
                        <input type="hidden" name="amount" value=<%=prodbean.getPrice()%> />
                        <input type="hidden" name="discount_amount" value="1.00" />
                        <input type="hidden" name="currency_code" value="USD" />
                        <input type="hidden" name="return" value=" " />
                        <input type="hidden" name="cancel_return" value=" " />
                        <input type="submit" name="submit" value="Add to cart" class="button" />
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</li>
<% i++;}
  i=0;  }%>   
                                        

                    </ul>
                </div>



            </div>
        </div>
        <!-- //special offers -->
        <!-- footer -->
        <jsp:include page="footer.jsp" ></jsp:include>
        <!-- //footer -->


        <!-- js-files -->
        <!-- jquery -->
        <script src="js/jquery-2.1.4.min.js"></script>
        <!-- //jquery --> 

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
                paypalm.minicartk.render(); //use only unique class names other than paypal1.minicart1.Also Replace same class name in css and minicart.min.js

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

        <!-- imagezoom -->
        <script src="js/imagezoom.js"></script>
        <!-- //imagezoom -->

        <!-- FlexSlider -->
        <script src="js/jquery.flexslider.js"></script>
        <script>
                // Can also be used with $(document).ready()
                $(window).load(function () {
                        $('.flexslider').flexslider({
                                animation: "slide",
                                controlNav: "thumbnails"
                        });
                });
        </script>
        <!-- //FlexSlider-->

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

        <!-- for bootstrap working -->
        <script src="js/bootstrap.js"></script>
        <!-- //for bootstrap working -->
        <!-- //js-files -->
    </body>
</html>
