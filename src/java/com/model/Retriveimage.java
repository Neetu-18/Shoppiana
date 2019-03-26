
package com.model;

import com.dao.Condb;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class Retriveimage extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("image/jpg");
       
             byte[] rawbyte=null;
            ServletOutputStream out=response.getOutputStream();
            try{
                
                int id=Integer.parseInt(request.getQueryString()); 

            Connection con=Condb.dbCon();
            PreparedStatement pst=con.prepareStatement("select p_image from product where p_id=?");
            pst.setInt(1, id);
            
           ResultSet rs= pst.executeQuery();
           
           while(rs.next())
           {
               Blob image =rs.getBlob("p_image");
               rawbyte=image.getBytes(1, (int)image.length());
               out.write(rawbyte);
               out.flush();
           }  
            }
            catch(Exception e){
            System.out.println("Error"+ e.getMessage());}
            finally {
            try {
                out.close();
            } catch (Exception ex) {
            }  
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