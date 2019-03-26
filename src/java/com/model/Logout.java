
package com.model;

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "Logout", urlPatterns = {"/Logout"})
public class Logout extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        HttpSession sesion=request.getSession();
        sesion.removeAttribute("custname");
        sesion.invalidate();
        
        response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");    
        //Forces caches to obtain a new copy of the page from the origin server
        response.setHeader("Cache-Control", "no-store");
        //Directs caches not to store the page under any circumstance
        response.setDateHeader("Expires", 0);
        //Causes the proxy cache to see the page as "stale"
        response.setHeader("Pragma", "no-cache");
        //HTTP 1.0 backward enter code here
       
        if((request.getParameter("id1"))!=null)
        {
            response.sendRedirect(response.encodeRedirectURL("admin/index.jsp"));
        } else {
        response.sendRedirect(response.encodeRedirectURL("index.jsp"));
        }
        
      
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
