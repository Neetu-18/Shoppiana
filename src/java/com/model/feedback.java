
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

/**
 *
 * @author rohitkumar
 */
@WebServlet(name = "feedback", urlPatterns = {"/feedback"})
public class feedback extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
        String name=request.getParameter("name");
        String subject=request.getParameter("subject");
        String email=request.getParameter("email");
        String msg=request.getParameter("message");
       
        try{
         Connection conn=Condb.dbCon();
        PreparedStatement pst=conn.prepareStatement("insert into feedback(u_name,email,subject,message) values(?,?,?,?)");
        pst.setString(1,name);
        pst.setString(2,email);
        pst.setString(3,subject);
        pst.setString(4,msg);
        
        int rs=pst.executeUpdate();
        if(rs>0){
        response.sendRedirect("contact.jsp?msg1=your Message is send Successfully...");
        }
        }
        catch(Exception e){
        System.out.println("Exception" +e);
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
