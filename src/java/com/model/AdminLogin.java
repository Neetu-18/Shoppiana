package com.model;

import com.dao.Condb;
import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "AdminLogin", urlPatterns = {"/AdminLogin"})
public class AdminLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String n1 = request.getParameter("a");
        String n2 = request.getParameter("b");
        
        if (n1 != null) {
            String username = request.getParameter("uname");
            String password = request.getParameter("pass");
            try {
                Connection con =Condb.dbCon();
                PreparedStatement stmt = con.prepareStatement("select pass,email from admin_reg where uname=?");
                stmt.setString(1, username);

                ResultSet res = stmt.executeQuery();
                if (!res.next()) {
                    response.sendRedirect("admin/login.jsp?msg=Username does not exists...! ");
                } else {
                    String pwd = res.getString(1);
                    String email1 =res.getString(2);
                    if (password.equals(pwd)) {
                        HttpSession session = request.getSession(true);
                        session.setAttribute("uname", username);
                        session.setAttribute("pwd", pwd);
                        session.setAttribute("email", email1);
                        response.sendRedirect("admin/index.jsp");
                    } else {
                        response.sendRedirect("admin/login.jsp?msg=Password does not match...!");
                    }
                }
            } catch (Exception e) {
                System.out.println("Error " + e);
            }
        } else if (n2 != null) {
            String uname = request.getParameter("uname");
            String email = request.getParameter("email");
            try {
                Connection con =Condb.dbCon();
                PreparedStatement stmt = con.prepareStatement("select pass from admin_reg where email=? and uname=?");
                stmt.setString(1, email);
                stmt.setString(2, uname);

                ResultSet res = stmt.executeQuery();
                 if (res.next()) {
                    String pwd = res.getString(1);
                    response.sendRedirect("admin/forgot_pwd.jsp?msg1=Your Password is:  "+pwd);
                } else {
                    response.sendRedirect("admin/forgot_pwd.jsp?msg=User Not Exist...!");
                }
            } catch (Exception e) {
                System.out.println("Error " + e);
            }
        }

    }
}
