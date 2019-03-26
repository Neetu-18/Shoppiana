<%-- 
    Document   : main
    Created on : Aug 6, 2018, 8:09:08 PM
    Author     : rohitkumar
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.model.prod_model"%>
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
    </head>
    <body>
	<!-- top Products -->
        <div class="ads-grid">
            <div class="container">
                <!-- tittle heading -->
                <h3 class="tittle-w3l">Our Top Products
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
                <div class="agileinfo-ads-display col-md-9">
                    <div class="wrapper">
                        <!-- first section (nuts) -->
                        <div class="product-sec1">
                            <h3 class="heading-tittle">Nuts</h3>
 <%   
if((allProduct=prod.ProductType("top product","Dry Fruits, Nuts")).isEmpty()==false)
{
while(i<allProduct.size()){
prodbean=(prod_bean)allProduct.get(i);
%>
<div class="col-md-4 product-men">
    <div class="men-pro-item simpleCart_shelfItem">
        <div class="men-thumb-item">
            <img src='Retriveimage?<%=prodbean.getP_id()%>' height="150" width="120" alt="">
            <div class="men-cart-pro">
                <div class="inner-men-cart-pro">
                    <a href="single.jsp?var=<%=prodbean.getName()%>" class="link-product-add-cart">Quick View</a>
                </div>
            </div>
            <span class="product-new-top">New</span>
        </div>
        <div class="item-info-product ">
            <h4>
                <a href="single.jsp?var=<%=prodbean.getName()%>"> <%= prodbean.getName() + ", " + prodbean.getQuantity()%> </a>
            </h4>
            <div class="info-product-price">
                <span class="item_price"><span class="fa fa-rupee" aria-hidden="true"></span> <%= prodbean.getPrice()%></span>
                <del><span class="fa fa-rupee" aria-hidden="true"></span> <%= prodbean.getDiscount()%></del>
            </div>
            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                <form action="#" method="post">
                    <fieldset>
                        <input type="hidden" name="cmd" value="_cart" />
                        <input type="hidden" name="add" value="1" />
                        <input type="hidden" name="business" value=" " />
                        <input type="hidden" name="item_name" value= <%= prodbean.getName() + "," + prodbean.getQuantity()%> />
                        <input type="hidden" name="amount" value=<%= prodbean.getPrice()%> />
                        <input type="hidden" name="discount_amount" value="1.00" />
                        <input type="hidden" name="currency_code" value="INR" />
                        <input type="hidden" name="return" value=" " />
                        <input type="hidden" name="cancel_return" value=" " />
                        <input type="submit" name="submit" value="Add to cart" class="button" />
                    </fieldset>
                </form>
            </div>

        </div>
    </div>
</div>
                                                 
 <%    i++; }
    i=0;
      } %>
      <div class="clearfix"></div>
                        </div>
                        <!-- //first section (nuts) -->
                        <!-- second section (nuts special) -->
                        <div class="product-sec1 product-sec2">
                            <div class="col-xs-7 effect-bg">
                                <h3 class="">Pure Energy</h3>
                                <h6>Enjoy our all healthy Products</h6>
                                <p>Get Extra 10% Off</p>
                            </div>
                            <h3 class="w3l-nut-middle">Nuts & Dry Fruits</h3>
                            <div class="col-xs-5 bg-right-nut">
                                <img src="images/nut1.png" alt="">
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <!-- //second section (nuts special) -->
                        <!-- third section (oils) -->
                        <div class="product-sec1">
                            <h3 class="heading-tittle">Oils</h3>
<%   
if((allProduct=prod.ProductType("top product","Oils, Vinegars")).isEmpty()==false)
{
while(i<allProduct.size()){
prodbean=(prod_bean)allProduct.get(i);
%>                                           
<div class="col-md-4 product-men">
    <div class="men-pro-item simpleCart_shelfItem">
        <div class="men-thumb-item">
            <img src='Retriveimage?<%=prodbean.getP_id()%>'  height="150" width="120" alt="">
            <div class="men-cart-pro">
                <div class="inner-men-cart-pro">
                    <a href="single.jsp?var=<%=prodbean.getName()%>" class="link-product-add-cart">Quick View</a>
                </div>
            </div>
            <span class="product-new-top">New</span>
        </div>
        <div class="item-info-product ">
            <h4>
                <a href="single.jsp?var=<%=prodbean.getName()%>"><%=prodbean.getName() + "," + prodbean.getQuantity()%></a>
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
                        <input type="hidden" name="item_name" value= <%=prodbean.getName() + "," + prodbean.getQuantity()%> />
                        <input type="hidden" name="amount" value=<%=prodbean.getPrice()%> />
                        <input type="hidden" name="discount_amount" value="1.00" />
                        <input type="hidden" name="currency_code" value="INR" />
                        <input type="hidden" name="return" value=" " />
                        <input type="hidden" name="cancel_return" value=" " />
                        <input type="submit" name="submit" value="Add to cart" class="button" />
                    </fieldset>
                </form>
            </div>

        </div>
    </div>
</div>
<% i++;
    }
   i=0;}%>
   <div class="clearfix"></div>
                        </div>
                        <!-- //third section (oils) -->
                        <!-- fourth section (noodles) -->
                        <div class="product-sec1">
                            <h3 class="heading-tittle">Pasta & Noodles</h3>
 <%   
if((allProduct=prod.ProductType("top product","Pasta and Noodles")).isEmpty()==false)
{
while(i<allProduct.size()){
prodbean=(prod_bean)allProduct.get(i);
%>
<div class="col-md-4 product-men">
    <div class="men-pro-item simpleCart_shelfItem">
        <div class="men-thumb-item">
            <img src='Retriveimage?<%=prodbean.getP_id()%>'  height="150" width="120" alt="">
            <div class="men-cart-pro">
                <div class="inner-men-cart-pro">
                    <a href="single.jsp?var=<%=prodbean.getName()%>" class="link-product-add-cart">Quick View</a>
                </div>
            </div>
        </div>
        <div class="item-info-product ">
            <h4>
                <a href="single.jsp?var=<%=prodbean.getName()%>"><%=prodbean.getName() + "," + prodbean.getQuantity()%></a>
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
                        <input type="hidden" name="item_name" value=<%=prodbean.getName() + "," + prodbean.getQuantity()%> />
                        <input type="hidden" name="amount" value=<%=prodbean.getPrice()%> />
                        <input type="hidden" name="discount_amount" value="1.00" />
                        <input type="hidden" name="currency_code" value="INR" />
                        <input type="hidden" name="return" value=" " />
                        <input type="hidden" name="cancel_return" value=" " />
                        <input type="submit" name="submit" value="Add to cart" class="button" />
                    </fieldset>
                </form>
            </div>

        </div>
    </div>
</div>
<% i++;}
   i=0;}%>
                

   <div class="clearfix"></div>
                        </div>
                        <!-- //fourth section (noodles) -->
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
            <a href="single.jsp?var=<%=prodbean.getName()%>">
                <img src='Retriveimage?<%=prodbean.getP_id()%>' height="160" width="120" alt="">
            </a>
        </div>
        <div class="product-name-w3l">
            <h4>
                <a href="single.jsp?var=<%=prodbean.getName()%>"><%=prodbean.getName() + "," + prodbean.getQuantity()%></a>
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
                        <input type="hidden" name="currency_code" value="INR" />
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


    </body>
</html>
