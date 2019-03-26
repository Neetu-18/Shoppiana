
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.dao.Condb"%>
<%@page import="java.sql.Connection"%>
<%!
    String var = "";
%>
<%
    var = request.getParameter("msg");
    if (var == null) {
        var = "";
    }
%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<title>Shoppiana: Admin</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<style>
    td{
        text-align: center;
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
                                        String email1 = (String) session.getAttribute("email1");
                                        int i = 0;
                                        int count = 0;
                                        Connection con =Condb.dbCon();
                                        Statement statement = con.createStatement();

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
                            <li><a href="products.jsp"><span>Products</span></a></li>
                            <li><a href="orders.jsp"><span>Orders</span></a></li>
                            <li><a href="customers.jsp"><span>Customers</span></a></li>
                            <li><a href="reports.jsp"><span>Reports</span></a></li>
                            <li><a href="feedbacks.jsp" class="active"><span>Feedbacks</span></a></li>
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
                    <a href="index.jsp">Dashboard</a> &gt; All Feedbacks
                </div>
                <!-- End Help Navigation -->
                <div class="user_details">
                    <%
                        ResultSet resultset1 = statement.executeQuery("select count(*) from feedback");
                        while (resultset1.next()) {
                            count = resultset1.getInt("count(*)");
                    %>
                    <h1>Total Feedbacks (<% out.print(count);%>)</h1>
                    <% }%>
                   <!-- <h1 style="float:right;"><a href="add_product.jsp" id="show">Add New Product</a></h1>
                    <h2><font color='red'><%= var%></font></h2>-->
                    <table  border="0" cellspacing=0 cellpadding=10 class="tab2" style="width: 100%;">
                        <tr style="background-color: #60C8F2;">
                            <th>S.No.</th>
                            <th>Feedback ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Subject</th>
                            <th>Message</th>
                            
                        </tr>
                            <%
                                ResultSet resultset = statement.executeQuery("select * from feedback");
                                while (resultset.next()) {
                                    i++;
                            %>
                        <tr style="background: none repeat scroll 0% 0% #ECF8FD;font-size:13px;">
                            <td><% out.print(i);%></td>
                            <td><%out.print(resultset.getInt(1));%></td>
                            <th><%out.print(resultset.getString(2));%></th>
                            <td><%out.print(resultset.getString(3));%></td>
                            <td><%out.print(resultset.getString(4));%></td>
                            <td><%out.print(resultset.getString(5));%></td>
                             </tr>
                        <%  } %>
                    </table>
                </div>
            </div>
            <!-- End Content -->
        </div>
        <%
                } else {
                    RequestDispatcher disp = request.getRequestDispatcher("err.jsp");
                    disp.forward(request, response);
                }
            }
        %>
        <!-- Footer -->
           <div id="footer">
                <p> © 2018 Shoppiana | All rights Reserved </p>
            </div>
        <!-- End Footer -->
                <script>
            // Get the modal
            var modal = document.getElementById('myModal');

            // Get the button that opens the modal
            var btn = document.getElementById("myBtn");

            // Get the <span> element that closes the modal
            var span = document.getElementsByClassName("close")[0];

            // When the user clicks the button, open the modal 
            btn.onclick = function () {
                modal.style.display = "block";
            }

            // When the user clicks on <span> (x), close the modal
            span.onclick = function () {
                modal.style.display = "none";
            }

            document.getElementById('closed').onclick = function () {
                modal.style.display = "none";
            }
            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        </script>
    </body>
</html>