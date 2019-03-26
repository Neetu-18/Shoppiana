<%-- 
    Document   : p_category
    Created on : Sep 17, 2018, 9:55:14 AM
    Author     : rohitkumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.dao.Condb"%>
<%@page import="java.sql.*"%>

<!DOCTYPE>
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
                    <a href="index.jsp">Dashboard</a> &gt; Products Category
                </div>
                <!-- End Help Navigation -->
                <div class="user_details">

                    <% int id = 0;
                        String pid = request.getParameter("edit");
                        if ((pid) != null) {
                            id = Integer.parseInt(pid);
                            Connection con = Condb.dbCon();
                            PreparedStatement stmt1 = con.prepareStatement("select * from p_category where c_id=?");
                            stmt1.setInt(1, id);
                            ResultSet res1 = stmt1.executeQuery();
                            while (res1.next()) {
                    %> 
                    <h1>Edit Product Category</h1>
                    <form action="../ProductUpdate?e1=1" method="post" enctype="multipart/form-data">
                        <table  style="width: 50%;">
                            <tr>
                                <td>Category Id:</td>
                                <td><input type="text" name="c_id" value="<%= res1.getInt("c_id")%>" readonly></td>
                            </tr>
                            <tr>
                                <td>Category:</td>
                                <td><input type="text" name="category" required="required" value="<%= res1.getString("category")%>"></td>
                            </tr>
                            <tr>
                                <td>Sub_Category:</td>
                                <td><input type="text" name="sub_category" required="required" value="<%= res1.getString("sub_category")%>"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td colspan="1" style="padding:5px 5px;"><input type="submit" value="update" style="float:center;"></td>
                            </tr>
                        </table>
                    </form>
                    <% }
              } else if ((request.getParameter("add")) != null) {%>
                    <h1>Add Product Category</h1>
                    <form action="../ProductUpdate?e2=1" method="post" enctype="multipart/form-data">
                        <table  style="width: 50%;">
                            <tr>
                                <td>Category:</td>
                                <td><input type="text" name="category" required="required" placeholder="ex:- kitchen, household, personal care etc..." ></td>
                            </tr>
                            <tr>
                                <td>Sub_Category:</td>
                                <td><input type="text" name="sub_category" required="required" placeholder="ex:- oil, noodle, soft drink etc..." ></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td colspan="1" style="padding:5px 5px;"><input type="submit" value="update" style="float:center;"></td>
                            </tr>
                        </table>
                    </form>
                    <% } %> 
                </div>
            </div>      
            <%
                    } else {
                        RequestDispatcher disp = request.getRequestDispatcher("err.jsp");
                        disp.forward(request, response);
                    }}
            %>
        </div>
        <!-- Footer -->
        <div id="footer">
            <p> © 2018 Shoppiana | All rights Reserved</p>
        </div>
        <!-- End Footer -->
    </body>
</html>