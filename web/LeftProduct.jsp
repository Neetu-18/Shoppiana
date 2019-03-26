<%-- 
    Document   : RightProduct
    Created on : Sep 16, 2018, 4:43:52 AM
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
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- product left -->
        <div class="side-bar col-md-3"> 
            <div class="search-hotel">
                <h3 class="agileits-sear-head">Search Here..</h3>
                <form action="product1.jsp" method="post">
                    <input type="search" placeholder="Product name..." name="Search" required="">
                    <input type="submit" value=" ">
                </form>
            </div>
            <!-- price range -->
            <div class="range">
                <h3 class="agileits-sear-head">Price range</h3>
                <ul class="dropdown-menu6">
                    <li>
                        <div id="slider-range"></div>
                        <input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
                       
                    </li>
                </ul>
            </div>
            <!-- //price range -->
            <!-- food preference -->
            <div class="left-side">
                <h3 class="agileits-sear-head">Food Preference</h3>
                <ul>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">Vegetarian</span>
                    </li>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">Non-Vegetarian</span>
                    </li>
                </ul>
            </div>
            <!-- //food preference -->
            <!-- discounts -->
            <div class="left-side">
                <h3 class="agileits-sear-head">Discount</h3>
                <ul>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">5% or More</span>
                    </li>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">10% or More</span>
                    </li>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">20% or More</span>
                    </li>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">30% or More</span>
                    </li>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">50% or More</span>
                    </li>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">60% or More</span>
                    </li>
                </ul>
            </div>               
            <!-- //discounts -->
            <!-- reviews -->
            <div class="customer-rev left-side">
                <h3 class="agileits-sear-head">Customer Review</h3>
                <form action="product1.jsp" method="post">
                    <ul>
                        <li>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <input type="hidden" id="min" name="min" value="" />
                            <input type="hidden" id="max" name="max"  value=""/>
                            <input type="hidden" id="rating" name="rating" value="5.0"  />
                            <input type="submit" id="sum" class="btn-link" value="5.0"/>
                        </li>
                        <li>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star-o" aria-hidden="true"></i>
                            <input type="submit" id="sum" class="btn-link" value="4.0"/>
                        </li>
                        <li>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star-half-o" aria-hidden="true"></i>
                            <i class="fa fa-star-o" aria-hidden="true"></i>
                            <input type="submit" id="sum" class="btn-link" value="3.5"/>
                        </li>
                        <li>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star-o" aria-hidden="true"></i>
                            <i class="fa fa-star-o" aria-hidden="true"></i>
                            <input type="submit" id="sum" class="btn-link" value="3.0"/>
                        </li>
                        <li>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star-half-o" aria-hidden="true"></i>
                            <i class="fa fa-star-o" aria-hidden="true"></i>
                            <i class="fa fa-star-o" aria-hidden="true"></i>
                            <input type="submit" id="sum" class="btn-link" value="2.5"/>
                        </li>

                    </ul>
                </form>

                <!-- //reviews -->
            </div>
            <!-- product left -->
            <!-- deals -->
            <div class="deal-leftmk left-side">
                <h3 class="agileits-sear-head">Special Deals</h3>
 <%   
if((allProduct=prod.getprod("special deals")).isEmpty()==false)
{
while(i<allProduct.size()){
prodbean=(prod_bean)allProduct.get(i);
%>   
<div class="special-sec1">
    <div class="col-xs-4 img-deals">
        <img src='Retriveimage?<%=prodbean.getP_id()%>' alt="">
    </div>
    <div class="col-xs-8 img-deal1">
        <h3><%=prodbean.getName() + ", " + prodbean.getQuantity()%></h3>
        <a href="single.jsp?var=<%=prodbean.getName()%>">Rs. <%=prodbean.getPrice()%></a>
    </div>
    <div class="clearfix"></div>
</div>
<%    i++;
        }
        i = 0;
    }%>  
            </div>
            <!-- //deals -->
        </div>
        <!-- //product left -->
    </body>
</html>
