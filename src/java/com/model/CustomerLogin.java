
package com.model;

import com.dao.Condb;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author rohitkumar
 */
@WebServlet(name = "CustomerLogin", urlPatterns = {"/CustomerLogin"})
public class CustomerLogin extends HttpServlet {


   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      System.out.println("in servlet custlogin ");
            HttpSession session = request.getSession(true);
            
            String email = request.getParameter("user");
            String password = request.getParameter("pwd");
            System.out.println(email+" "+password);
            try {
                Connection con = Condb.dbCon();
                PreparedStatement stmt = con.prepareStatement("select name,password,cust_id from customer where email=?");
                stmt.setString(1, email);
                ResultSet res = stmt.executeQuery();
                if (!res.next()) {
                    session.setAttribute("dnt_exist","dnt_exist");
                    response.getWriter().println("Error");
                } else {
                    String name = res.getString(1);
                    String pwd = res.getString(2);
                    int  cid = res.getInt(3);
                    
                    if (password.equals(pwd)) {
                        
                        session.setAttribute("custname", name);
                        session.setAttribute("password", pwd);
                        session.setAttribute("email", email);
                        session.setAttribute("custid", cid);
                        System.out.println("in success ");
                        response.getWriter().println("Success");
                    } else {
                        System.out.println("in error ");
                          session.setAttribute("loginfail", "Invalid login details..!");
                          response.getWriter().println("Error");
                    }
                }
            } catch (Exception e) {
                System.out.println("Error " + e);
            }
        } 
}