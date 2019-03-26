<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    String var = "";
    String var1 = "";
%>
<%
    var = request.getParameter("msg");
    var1 = request.getParameter("msg1");

%>
<!DOCTYPE html>
<html>
    <head>
        <title>Shoppiana: Admin</title>
        <link rel="stylesheet" href="css/login.css">
    </head>
<body>
<section class="container">
<div class="login">
<h1>Forgot Password</h1>
<form method="post" action="../AdminLogin?b=1">
    <% if (var == null) {
            var = "";
        } else if (var != null) {
    %>
    <h4><font color='red'><%= var%></font></h4>
        <%}%>
        <% if (var1 == null) {
                var1 = "";
            } else if (var1 != null) {
        %>
    <h4><font color='green'><%= var1%></font></h4>
        <% }%>
    <p><input type="text" name="uname" value="" placeholder="Enter username" required=""></p>
    <p><input type="text" name="email" value="" placeholder="Enter Email" required=""></p>
    <p class="submit"><input type="submit" name="commit" value="Find"></p>
</form>
<p>Back to Login:<a href="login.jsp">Click here</a>.</p>
</div>
</section>
</body>
</html>