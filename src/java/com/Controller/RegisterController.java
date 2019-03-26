
package com.Controller;

import com.model.Register_model;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
@WebServlet(name = "RegisterController", urlPatterns = {"/RegisterController"})
public class RegisterController extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        Long mobile=Long.parseLong(request.getParameter("mobile"));
        String address=request.getParameter("address");
        String state=request.getParameter("state");
        
        HttpSession session=request.getSession(true);
        session.setAttribute("custname", name);
        session.setAttribute("email", email);
        session.setAttribute("pass", password);
        
        Register_model reg_model=new Register_model();
        
       ArrayList data= reg_model.RegisterCust(name,email, password, mobile, address, state);
        if(data.get(0).equals("success")){
        session.setAttribute("cust_id", data.get(1));
        response.sendRedirect("index.jsp");
        }
        
       
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
