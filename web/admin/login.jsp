<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    String var = "";
%>
<%
    var = request.getParameter("msg");
    if (var == null) {
        var = "";
    }
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
                <h1>Admin Login</h1>
                <form method="post" action="../AdminLogin?a=1">
                    <h4><font color='red'><%= var%></font></h4>
                    <p><input type="text" name="uname" value="" placeholder="Username or Email" required=""></p>
                    <p><input type="password" name="pass" value="" placeholder="Password" required=""></p>
                    <p class="submit"><input type="submit" name="commit" value="Login"></p>
                </form>
                <p>Forgot your password? <a href="forgot_pwd.jsp">Click here to reset it</a>.</p>
            </div>
        </section>
    </body>
</html>
