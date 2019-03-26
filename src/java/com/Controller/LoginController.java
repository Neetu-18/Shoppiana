
package com.Controller;

import com.model.Login_model;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       String name= request.getParameter("email");
       String pass=request.getParameter("password");
       
      
        
        Login_model log=new Login_model();
        if(log.login(name, pass))
        {
            System.out.println("serv login succes");
         HttpSession session=request.getSession();
        session.setAttribute("uname", name);
        session.setAttribute("pass", pass);
        response.sendRedirect("index.jsp");
        }
        else
        {
            System.out.println("ser fail login");
            RequestDispatcher dp=request.getRequestDispatcher("index.jsp");
     String str="Invalid login details ";
      request.setAttribute("msg", str);
      dp.include(request, response);
        } 
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
