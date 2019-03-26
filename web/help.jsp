<%-- 
    Document   : help
    Created on : Sep 12, 2018, 9:35:52 PM
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
                        <li>Help</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- //page -->
        <!-- FAQ-help-page -->
        <div class="faqs-w3l">
            <div class="container">
                <!-- tittle heading -->
                <h3 class="tittle-w3l">Help
                    <span class="heading-style">
                        <i></i>
                        <i></i>
                        <i></i>
                    </span>
                </h3>
                <!-- //tittle heading -->
                <div class="wthree-help">
                    <div class="col-xs-7 agile-left-help">
                        <h3 class="w3-head">How Can We help you</h3>
                        <form action="#" method="get">
                            <textarea placeholder="Your Query" name="Message" required=""></textarea>
                            <input type="submit" value="Submit">
                        </form>
                        <h5>OR</h5>
                        <a href="contact.jsp">Contact Us</a>
                    </div>
                    <div class="col-xs-5 agile-right-help">
                        <img src="images/contact2.jpg" alt=" ">
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="faq-w3agile">
                    <h5>Top 10 Frequently asked questions</h5>
                    <ul class="faq">
                        <li class="item1">
                            <a href="#" title="click here">What is Shoppiana ?</a>
                            <ul>
                                <li class="subitem1">
                                    <p> Shoppiana is India's largest and most convenient hyper local delivery company which enables you to order grocery,bakery,fruits & vegetables 
                                        and other products that you need every day, directly via your mobile or web browser.</p>
                                </li>
                            </ul>
                        </li>
                        <li class="item2">
                            <a href="#" title="click here">what kind of products do you sell ?</a>
                            <ul>
                                <li class="subitem1">
                                    <p> You can choose from over 120,000 products spread across various categories such as grocery, bakery, fruits, 
                                        beverages, personal care products, baby care products, pet products and much more.</p>
                                </li>
                            </ul>
                        </li>
                        <li class="item3">
                            <a href="#" title="click here">What is the minimum order value ?</a>
                            <ul>
                                <li class="subitem1">
                                    <p>There is no minimum order value. However, each store has a minimum order value to qualify for free delivery. In case you do not reach the 
                                        limit, a delivery charge will be levied against that order.</p>
                                </li>
                            </ul>
                        </li>
                        <li class="item4">
                            <a href="#" title="click here">How can I make payments at Shoppiana ?</a>
                            <ul>
                                <li class="subitem1">
                                    <p>Shoppiana accepts multiple modes of payment. You can make online payments using credit cards, debit cards, netbanking, PayTM, PayU 
                                        Money and Mobikwik Wallet. Cash on delivery (COD) is also available for orders less than Rs. 5000.</p>
                                </li>
                            </ul>
                        </li>
                        <li class="item5">
                            <a href="#" title="click here">How can I review my receipt ?</a>
                            <ul>
                                <li class="subitem1">
                                    <p>We handover the receipt from the merchant to you at the time of delivery. Also, you can look at your transaction history in the “My Orders” 
                                        tab.</p>
                                </li>
                            </ul>
                        </li>
                        <li class="item6">
                            <a href="#" title="click here">How can I cancel my order ?</a>
                            <ul>
                                <li class="subitem1">
                                    <p>Shoppiana provides easy and hassle-free cancellation. You can cancel your order via the app or web before it is dispatched to your home. 
                                        This option is available under the “My Orders” tab in “View Details”.
                                        Please note: Once the order is packed, the merchant may levy a fee of Rs.29 if an order is canceled by the customer.</p>
                                </li>
                            </ul>
                        </li>
                        <li class="item7">
                            <a href="#" title="click here">What If I want to return something ?</a>
                            <ul>
                                <li class="subitem1">
                                    <p>If you’re dissatisfied with the products delivered, please register a complaint via the app within 48 hours for non-perishable items and
                                        24 hours for perishable items. Our customer support team will get in touch with you to resolve this issue.You can also return the products
                                        which you are dissatisfied with, at the time of delivery and we will get the refund initiated for you.</p>
                                </li>
                            </ul>
                        </li>
                        <li class="item8">
                            <a href="#" title="click here">What if I have any complaint regarding my order ?</a>
                            <ul>
                                <li class="subitem1">
                                    <p>You can use the “Contact Us” section on the app/web. Our customer care executives are always happy to help.</p>
                                </li>
                            </ul>
                        </li>
                        <li class="item9">
                            <a href="#" title="click here">How can I be sure the products I order are of good quality ?</a>
                            <ul>
                                <li class="subitem1">
                                    <p>Our products vendors have a quality check process in place to ensure quality of the items delivered, is up to the mark. Do let us know within 
                                        24 Hours if you’re not happy with the quality of product received.</p>
                                </li>
                            </ul>
                        </li>
                        <li class="item10">
                            <a href="#" title="click here">Is it safe to use my debit/credit card to shop on Shoppiana ?</a>
                            <ul>
                                <li class="subitem1">
                                    <p>Yes, it is. All transactions on Shoppiana are completed via secure payment gateways (Citrus, PayU) which are PCI and DSS compliant. We do not store
                                        your card details at any given time.</p>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- //FAQ-help-page -->
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

 <!-- script for tabs -->
 <script>
         $(function () {

                 var menu_ul = $('.faq > li > ul'),
                         menu_a = $('.faq > li > a');

                 menu_ul.hide();

                 menu_a.click(function (e) {
                         e.preventDefault();
                         if (!$(this).hasClass('active')) {
                                 menu_a.removeClass('active');
                                 menu_ul.filter(':visible').slideUp('normal');
                                 $(this).addClass('active').next().stop(true, true).slideDown('normal');
                         } else {
                                 $(this).removeClass('active');
                                 $(this).next().stop(true, true).slideUp('normal');
                         }
                 });

         });
 </script>
 <!-- script for tabs -->

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
