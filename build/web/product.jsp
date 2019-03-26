<%-- 
    Document   : product
    Created on : Aug 7, 2018, 11:52:33 PM
    Author     : rohitkumar
--%>

<%@page import="com.bean.prod_bean"%>
<%@page import="com.model.prod_model"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
ArrayList allProduct=null;
prod_model prod=new prod_model();
prod_bean prodbean=null;
int i=0;
String search;
String item;
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Shoppiana| Kitchen Products </title>
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
                                <a href="index.jsp">Home</a>
                                <i>|</i>
                            </li>
                            <li>Kitchen Products</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- //page -->
            <!-- top Products -->
            <div class="ads-grid">
                <div class="container">
                    <!-- tittle heading -->
                    <h3 class="tittle-w3l">Kitchen Products
                        <span class="heading-style">
                            <i></i>
                            <i></i>
                            <i></i>
                        </span>

                    </h3>
                    <!-- //tittle heading -->
                    <!-- product left -->
                <jsp:include page="LeftProduct.jsp" ></jsp:include> 
                <!-- //product left -->

<!-- product right -->
                <div class="agileinfo-ads-display col-md-9 w3l-rightpro">
                    <div class="wrapper">

 <% if((item=request.getParameter("var"))!=null) {
    %>   
  <div class="product-sec1">                    
<% 
    int j;
  if((allProduct=prod.ProductCat("kitchen",item)).isEmpty()==false)
{
while(i<allProduct.size()){ 
    prodbean=(prod_bean)allProduct.get(i);

%> 
<div class="col-xs-4 product-men"> 
    <div class="men-pro-item simpleCart_shelfItem">
        <div class="men-thumb-item">
            <img src='Retriveimage?<%=prodbean.getP_id()%>' alt="" height="160" width="120">
            <div class="men-cart-pro">
                <div class="inner-men-cart-pro">
                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                </div>
            </div>
            <span class="product-new-top">New</span>
        </div>
        <div class="item-info-product ">
            <h4>
                <a href="single.html"><%=prodbean.getName() + ", " + prodbean.getQuantity()%></a>
            </h4>
            <div class="info-product-price">
                <span class="item_price"><span class="fa fa-rupee" aria-hidden="true"></span> <%=prodbean.getPrice()%></span>
                <del><span class="fa fa-rupee" aria-hidden="true"></span> <%= prodbean.getDiscount()%></del>
            </div>
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
    </div>  <br>        
</div>

        <% i++;  }   
  i=0;  } else {%>
  <h3 class="text-danger">Products Not Found</h3>
<%}%>   
    <div class="clearfix"> </div> 
           </div> 
  <%}%>
        			</div>
			</div>

			<!-- //product right -->
		</div>
	</div>
	<!-- //top products -->
	<!-- special offers -->
	<div class="featured-section" id="projects">
		<div class="container">
			<!-- tittle heading -->
			<h3 class="tittle-w3l">Special Offers
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
            <a href="single.html">
                <img src='Retriveimage?<%=prodbean.getP_id()%>' alt="">
            </a>
        </div>
        <div class="product-name-w3l">
            <h4>
                <a href="single.html"><%=prodbean.getName() + "," + prodbean.getQuantity()%></a>
            </h4>
            <div class="w3l-pricehkj">
                <h6><span class="fa fa-rupee" aria-hidden="true"></span> <%=prodbean.getPrice()%></h6>
                <p>Save <del><span class="fa fa-rupee" aria-hidden="true"></span> <%= prodbean.getDiscount()%></del></p>
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

        <!-- Footer  -->
        <jsp:include page="footer.jsp" ></jsp:include>
        <!-- //Footer -->
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
					$("#amount").val("Rs." + ui.values[0] + " - Rs." + ui.values[1]);
                                            $("#min").val(ui.values[0]);
                                        $("#max").val(ui.values[1]);
				}
			});
			$("#amount").val("Rs." + $("#slider-range").slider("values", 0) + " - Rs." + $("#slider-range").slider("values", 1));
               $("#min").val($("#slider-range").slider("values", 0));
                $("#max").val($("#slider-range").slider("values", 1));
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
