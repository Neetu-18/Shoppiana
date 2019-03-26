<%-- 
    Document   : Header
    Created on : Aug 5, 2018, 8:56:36 AM
    Author     : rohitkumar
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.EmailValidate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
String []stlist={"J&K","Haryana","Punjab","Himachal","New Delhi"};
%>

<!DOCTYPE html>
<html>
    <head>

    </head>
    <body>
        <!-- top-header -->
        <div class="header-most-top">
            <p>Grocery Offer Zone Top Deals & Discounts</p>
        </div>
        <!-- //top-header -->
        <!-- header-bot-->
        <div class="header-bot">
            <div class="header-bot_inner_wthreeinfo_header_mid">
                <!-- header-bot-->
                <div class="col-md-4 logo_agile">
                    <h1>
                        <a href="index.jsp"><span>S</span>hoppiana <br>
                            <img src="images/logo2.png" alt=" " height="40px" /> </a>
                    </h1>
                </div>
                <!-- header-bot -->
                <div class="col-md-8 header">
                    <!-- header lists -->
                    <ul>
                        <li><a class="play-icon popup-with-zoom-anim" href="#small-dialog1">
                                <span class="fa fa-map-marker" aria-hidden="true"></span> Shop Locator</a></li>
                        <li><a href="#" data-toggle="modal" data-target="#"> 
                                <span class="fa fa-truck" aria-hidden="true"></span>Track Order</a></li>
                        <li><span class="fa fa-phone" aria-hidden="true"></span> 011 234 5678</li>

                        <%
                              if ((session.getAttribute("custname")) != null) {%>

                        <li> <span class="fa fa-user" aria-hidden="true"></span><%= "Welcome:" + session.getAttribute("custname")%></li>
                        <li><a href="Logout"><span class="fa fa-sign-out" aria-hidden="true"></span>LOGOUT</a></li>
                            <% } else {%>

                        <li><a href="#" data-toggle="modal" data-target="#myModal1">
                                <span class="fa fa-unlock-alt" aria-hidden="true"></span> Sign In </a></li>
                        <li><a href="#" data-toggle="modal" data-target="#myModal2">
                                <span class="fa fa-pencil-square-o" aria-hidden="true"></span> Sign Up </a></li>

                        <%}%>
                    </ul>
                    <!-- //header lists -->
                    <!-- search -->
                    <div class="agileits_search">
                        <form action="product1.jsp" method="post">
                            <input name="Search" type="search" placeholder="Search for a Product..." required="">
                            <button type="submit" class="btn btn-default" aria-label="Left Align">
                                <span class="fa fa-search" aria-hidden="true"> </span> </button>
                        </form>
                    </div>
                    <!-- //search -->
                    <!-- cart details -->
                    <div class="top_nav_right">
                        <div class="wthreecartaits wthreecartaits2 cart cart box_1">
                            <form action="#" method="post" class="last">
                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="display" value="1">
                                <button class="w3view-cart" type="submit" name="submit" value="">
                                    <i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
                                </button>
                            </form>
                        </div>
                    </div>
                    <!-- //cart details -->
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
	<!-- shop locator (popup) -->
	<!-- Button trigger modal(shop-locator) -->
	<div id="small-dialog1" class="mfp-hide">
		<div class="select-city">
			<h3>Please Select Your Location</h3>
			<select class="list_of_cities">
                           
 <%          
String[] label = {"Delhi", "Bangalore", "Kolkata", "Hyderabad", "Pune", "Mumbai"};

    String[] c1 = {"Adarsh Nagar", "Ashram", "Azadpur", "Chandni Chowk", "Daryaganj", "Dwarka", "Greater Kailash I", "Green Park", "Badarpur", "Ashok Nagar"};
    String[] c2 = {"Anjanapura", "Hegde Nagar", "Indira Nagar", "Kadugodi", "Gottigere", "Jangamakote", "JP Nagar", "Dasarahalli Main Road", "Chamundi Nagar", "Ananth Nagar"};
    String[] c3 = {"Alambazar", "Alipur Road", "Baguiati", "Hazra Road", "Khidirpur", "Bondel Road", "New Barrakpur", "Champahati", "Duttapukur", "Haridevpur"};
    String[] c4 = {"Attapur", "Kondapur", "Lallaguda", "Nagaram", "Adarsh Nagar", "Bahadurpura", "Afzal Gunj", "Gagillapur", "Indresham", "Gowlipura"};
    String[] c5 = {"Bavdhan", "Ganesh Nagar", "Chourainagar", "Handewadi", "Fatima Nagar", "Ganga Dham", "Agarkar Nagar", "Bakori", "Alandi-Markal Road", "Charholi Khurd"};
    String[] c6 = {"Andheri West", "Bandra East", "Bhiwandi", "Chandivali", "Chira Bazar", "Karjat", "Govind Nagar", "Khandas Road", "barve Nagar", "Anand park"};

        
ArrayList allcity=new ArrayList();
allcity.add(c1);
allcity.add(c2);
allcity.add(c3);
allcity.add(c4);
allcity.add(c5);
allcity.add(c6);


int i=0;
%>

<%
  for (String s : label) {%>
<optgroup label=" <%= s%>">

    <%   String[] city = (String[]) allcity.get(i);
                                   for (String h : city) {%>

    <option selected style="display:none;color:#eee;">Select City</option>
    <option><%= h%></option>

</optgroup>
<%}
 i++;
   } %>

                        </select>
                        <div class="clearfix"></div>
                </div>
        </div>
	<!-- //shop locator (popup) -->
	<!-- signin Model -->
	<!-- Modal1 -->
        <div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body modal-body-sub_agile">
                        <div class="main-mailposi">
                            <span class="fa fa-envelope-o" aria-hidden="true"></span>
                        </div>
                        <div class="modal_body_left modal_body_left1">
                            <h3 class="agileinfo_sign">Sign In </h3>
                            <p>
                                Sign In now, Let's start your Soppiana. Don't have an account?
                                <a href="#" data-toggle="modal" data-target="#myModal2">
                                    Sign Up Now</a>
                            </p>
                            <form  method="post">
                                <div class="styled-input agile-styled-input-top">
                                    <input id="user" type="email"  placeholder="Email" name="email" required="">
                                </div>
                                <div class="styled-input">
                                    <input id="pwd" type="password"  placeholder="Password" name="password" required="">
                                </div>
                                <input class="btn btn-info" type="button" id="submit" value="Sign In" />
                                <input class="btn btn-info" type="button" id="submit2" value="Forgot Password" />
                                <span style="color: red" id="error"></span>
                                <span style="color: green" id="success"></span>
                            </form>
                            <div class="clearfix"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <!-- //Modal content-->
            </div>
        </div>
	<!-- //Modal1 -->
	<!-- //signin Model -->
	<!-- signup Model -->
	<!-- Modal2 -->
        <div class="modal fade" id="myModal2" tabindex="-1" role="dialog">

            <div class="modal-dialog">
                <!-- Modal content-->

                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body modal-body-sub_agile">
                        <div class="main-mailposi">
                            <span class="fa fa-envelope-o" aria-hidden="true"></span>
                        </div>
                        <div class="modal_body_left modal_body_left1">
                            <h3 class="agileinfo_sign">Sign Up</h3>
                            <p>
                                Come join the Shoppiana! Let's set up your Account.
                            </p>
                            <form action="RegisterController" method="post">
                                <div class="styled-input agile-styled-input-top">
                                    <input type="text" placeholder="Name" name="name" required="">
                                </div>
                                <div class="styled-input">
                                    <input type="email" placeholder="E-mail" name="email" id="email" required="">
                                </div>
                                <div class="styled-input">
                                    <input type="password" placeholder="Password" name="password" id="password1" required="">
                                </div>
                                <div class="styled-input">
                                    <input type="password" placeholder="Confirm Password" name="Confirm Password" id="password2" required="">
                                </div>
                                <div class="styled-input">
                                    <input type="text" placeholder="Mobile" name="mobile"  required="">
                                </div>
                                <div class="styled-input">
                                    <input type="text" placeholder="Address" name="address"  required="">
                                </div>
                                <div class="styled-input">
                                    <input type="text" placeholder="State" name="state" required="" list="statedata">
                                    <datalist id="statedata">
                                        <% for (String st : stlist) {%>
                                        <option value="<%=st%>"/>
                                        <%}%>     
                                    </datalist>
                                </div>
                                <input type="submit" value="Sign Up">
                            </form>
                            <p><a href="terms.jsp">By clicking register, I agree to your terms</a></p>
                        </div>
                    </div>
                </div>

                <!-- //Modal content-->
            </div>
        </div>
    </body>
</html>
