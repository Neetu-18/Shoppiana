
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.dao.Condb"%>

<!DOCTYPE>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Shoppiana: Admin</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
         
    </head>
    <body>
        <div id="container">
            <!-- Header -->
            <div id="header">
                <div class="shell">
                    <div id="head">
                        <h1><a href="index.jsp">Admin Panel</a></h1>
                        <div class="right">
                            <% session = request.getSession(false);
                                if (session != null) {
                                    if (session.getAttribute("uname") != null) {
                                        String name = (String) session.getAttribute("uname");
                                        int count = 0;
                                        int count1 = 0;
                                        int count2 = 0;
                                        int count3 = 0;
                                        Connection con = Condb.dbCon();
                                        Statement statement = con.createStatement();
                            %>
                            <p> Welcome <a href="#"><strong><% out.println(name.toUpperCase());%></strong></a> | 
                                <a href="../Logout?id1=<% out.print(name);%>">Logout</a></p>
                        </div>
                    </div>

                    <!-- Navigation -->
                    <div id="navigation">
                        <ul>
                            <li><a href="#" class="active"><span>Dashboard</span></a></li>
                            <li><a href="products.jsp"><span>Products</span></a></li>
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
                    <a href="index.jsp">Dashboard</a>&gt; All Data
                </div>
                <!-- End Help Navigation -->
                <div class="user_details">
                    <h1>Welcome to Admin Panel :<b style="color:#4458ad;"><% out.println(name.toUpperCase());%></b></h1>
                     <%
                                     
                        ResultSet resultset1 = statement.executeQuery("select count(*) from product");
                        while (resultset1.next()) {
                            count1 = resultset1.getInt("count(*)");
                        }
                    %>
                    <div class="box">
                        All Products :<%out.print(count1);%>
                        
                        <br>
                        <a href="products.jsp">Manage</a>
                    </div> 
                    <%
                    ResultSet resultset = statement.executeQuery("select * from orders");
                            while (resultset.next()) {
                                count = resultset.getInt(1);
                            }
                  %>
                    <div class="box">
                        All Orders :<% out.print(count);%>
                        <br>
                        <a href="orders.jsp">Manage</a>
                    </div>
                    <%
                        ResultSet resultset2 = statement.executeQuery("select count(*) from customer");
                        while (resultset2.next()) {
                            count2 = resultset2.getInt("count(*)");
                        }
                    %>
                    <div class="box">
                        All Customers :<% out.print(count2);%>
                        <br>
                        <a href="customers.jsp">Manage</a>
                    </div>
                    <%
                        ResultSet resultset3 = statement.executeQuery("select count(*) from feedback");
                        while (resultset3.next()) {
                            count3 = resultset3.getInt("count(*)");
                        }
                    %>
                    <div class="box">
                        All Feedbacks : <% out.print(count3);%>
                        <br>
                        <a href="feedbacks.jsp">Manage</a>
                    </div>
                  
                </div>
            </div>
         </div>
            <%
                    } else {
                        RequestDispatcher disp = request.getRequestDispatcher("login.jsp");
                        disp.forward(request, response);
                    }
                }
            %>
            <!-- Footer -->
          <div id="footer">
          <p> © 2018 Shoppiana | All rights Reserved</p>
        </div>
        <!-- End Footer -->
    </body>
</html>