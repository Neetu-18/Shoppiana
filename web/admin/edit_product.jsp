
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.dao.Condb"%>
<%@page import="java.sql.*"%>

<!DOCTYPE >
<html>
    <head>
        <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
        <title>Shoppiana: Admin</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
      
        <style>
            td{
                text-align: center;  
                padding-bottom: 15px;
            }
            h1{
                display: inline-block;
            }
            #myModal {
                display: none; /* Hidden by default */
                position: fixed; /* Stay in place */
                z-index: 1; /* Sit on top */
                padding-top: 100px; /* Location of the box */
                left: 0;
                top: 0;
                width: 100%; /* Full width */
                height: 100%; /* Full height */
                overflow: auto; /* Enable scroll if needed */
                background-color: rgb(0,0,0); /* Fallback color */
                background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            }

            /* Modal Content */
            .modal-content {
                background-color: #fefefe;
                margin: auto;
                padding: 20px;
                border: 1px solid #888;
                width: 40%;
            }

            /* The Close Button */
            .close {
                color: #aaaaaa;
                float: right;
                font-size: 28px;
                font-weight: bold;
            }

            .close:hover,
            .close:focus {
                color: #000;
                text-decoration: none;
                cursor: pointer;
            }
            #closed{
                padding: 10px;
                border-radius: 5px;
                background-image: linear-gradient(#28D2DE 0%, #1A878F 100%);
                font: 14px Oswald;
                color: #FFF;
                text-transform: uppercase;
                text-shadow: #000 0px 1px 5px;
                border: 1px solid #000;
                opacity: 0.7;
            }
        </style>
        
    </head>
    <body>
        <div id="container">
            <!-- Header -->
            <div id="header">
                <div class="shell">

                    <div id="head">
                        <h1><a href="index.jsp">Admin Panel</a></h1>
                        <div class="right">
                            <%
                                session = request.getSession(false);
                                if (session != null) {
                                    if (session.getAttribute("uname") != null) {
                                        String name = (String) session.getAttribute("uname");
                                        String pid = request.getParameter("pid");
                                        int ep=0;
                                        if(!pid.equals("")){
                                        ep=Integer.parseInt(pid);
                                        }
                                         Connection con =Condb.dbCon();
                                        PreparedStatement stmt1 = con.prepareStatement("select * from product where p_id=?");
                                        stmt1.setInt(1, ep);
                                       
                                       
                                        ResultSet res1 = stmt1.executeQuery();
                                        while (res1.next()) {
                                            


                            %>
                            <p> Welcome <a href="#"><strong><% out.println(name.toUpperCase());%></strong></a> | 
                                <a href="../Logout?id1=<% out.print(name);%>">Logout</a>
                            </p>
                           

                        </div>
                    </div>
                            <!-- Navigation -->
                                <div id="navigation">
                                    <ul>
                                        <li><a href="index.jsp"><span>Dashboard</span></a></li>
                                        <li><a href="products.jsp" class="active"><span>Products</span></a></li>
                                        <li><a href="orders.jsp"><span>Orders</span></a></li>
                                        <li><a href="customers.jsp"><span>Customers</span></a></li>
                                        <li><a href="reports.jsp"><span>Reports</span></a></li>
                                        <li><a href="feedbacks.jsp"><span>Feedbacks</span></a></li>
                                        <li><a href="../Logout?id1=<% out.print(name);%>"><span>Logout</span></a></li>
                                    </ul>
                                </div>
                                <!-- End Navigation -->
                </div>
            </div>
            <!-- End Header -->
            
            <!-- Content -->
            <div id="content" class="shell">
                <!-- Help Navigation -->
                <div id="help-nav">
                    <a href="index.jsp">Dashboard</a> &gt; Edit Products
                </div>
                <!-- End Help Navigation -->

                <!-- Edit Product -->  
                <div class="user_details">
                    <h1>Edit Product Details</h1>
                    <form action="../ProductUpdate?m1=1" method="post" enctype="multipart/form-data">
                        <table  style="width: 90%;">
                            <tr>   
                                <td>Category:</td> 
                                <td>  <select name="category">  
                                        <option>-Select-</option>
                                        <%
                                            Statement statement = con.createStatement();
                                            ResultSet res = statement.executeQuery("select distinct(category) from p_category");
                                            while (res.next()) {
                                        %>  
                                        <option ><%= res.getString(1)%></option>
                                        <%  } %>
                                    </select>
                                </td>
                                <td>Sub_Category:</td>
                                <td>
                                    <select name="sub_category">
                                        <option>-Select-</option>
                                        <%
                           res = statement.executeQuery("select sub_category from p_category");
                           while (res.next()) {%>
                                        <option><%= res.getString(1)%> </option>
                                        <%   }%>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Name:</td>
                                <td><input type="text" name="pname" value="<%= res1.getString("p_name")%>" ></td>
                                <td>Type:</td>
                                <td><input type="text" name="type" required="required" value="<%= res1.getString("p_type")%>"></td>
                            </tr>
                            <tr>
                                <td>Price:</td>
                                <td><input type="text" name="price" required="required" value="<%= res1.getFloat("p_price")%>"></td>
                                <td>Quantity:</td>
                                <td><input type="text" name="qty" required="required" value="<%= res1.getString("p_quantity")%>"></td>
                            </tr>
                            <tr>
                                <td>Product Id:</td>
                                <td><input type="text" name="p_id" value="<%= res1.getInt("P_id")%>" readonly></td>
                                <td>Discount:</td>
                                <td><input type="text" name="discount" required="required" value="<%= res1.getFloat("p_discount")%>"></td>
                            </tr>
                            <tr>
                                <td>Description:</td>
                                <td><textarea  name="desc" required="" rows="8" cols="50"><%= res1.getString("description")%></textarea> </td>
                                <td>Image:</td>
                                <td><img src='../Retriveimage?<%= res1.getInt(1)%>' alt='' height='150' width='150'/>
                                    <input type="file" name="photo" size="50" placeholder="select product image" /> </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="padding:5px 5px;"><input type="submit" value="update" style="float:right;"></td>
                            </tr>
                        </table>
                    </form>
                </div>
                <!-- Edit Product -->                               
            </div>
            <!-- End Content -->
            <%
                        }
                    } else {
                        RequestDispatcher disp = request.getRequestDispatcher("err.jsp");
                        disp.forward(request, response);
                    } }
            %>
        </div>
        <!-- Footer -->
        <div id="footer">
            <p> © 2018 Shoppiana | All rights Reserved</p>
        </div>
        <!-- End Footer -->
    </body>
</html>