
package com.model;

import com.dao.Condb;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
/**
 *
 * @author rohitkumar
 */
@WebServlet(name = "ProductUpdate", urlPatterns = {"/ProductUpdate"})
@MultipartConfig(maxFileSize=16177215)
public class ProductUpdate extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
      
            InputStream ins=null;
           try{
               
/* Edit product */
           if((request.getParameter("m1"))!=null)
       {
           
           String pcat=request.getParameter("category");
        String sub_cat=request.getParameter("sub_category");
         int id =Integer.parseInt(request.getParameter("p_id"));
         String pname=request.getParameter("pname");
        float price=Float.parseFloat(request.getParameter("price"));
        String qty=request.getParameter("qty");
        String type=request.getParameter("type");
        String desc=request.getParameter("desc");
        float discount=Float.parseFloat(request.getParameter("discount"));
        Part filepart = request.getPart("photo");
        
           ins=filepart.getInputStream();
        Connection con=Condb.dbCon();
        PreparedStatement pst=con.prepareStatement("update product set p_name=?,p_category=(select c_id from p_category where category=? and sub_category=?),p_price=?,p_quantity=?,p_image=?,p_type=?,description=?,p_discount=? where P_id=? ");
        pst.setString(1,pname);
        pst.setString(2, pcat);
        pst.setString(3, sub_cat);
        pst.setFloat(4, price);
        pst.setString(5,qty);
        pst.setBlob(6,ins);
        pst.setString(7,type);
        pst.setString(8,desc);
        pst.setFloat(9,discount);
       pst.setInt(10,id);

        int rs=pst.executeUpdate();
            if(rs>0)
            {
            response.sendRedirect("admin/products.jsp");
            }
       }
           
  /* Add New product */
      else if((request.getParameter("m2"))!=null){
          
           String pcat=request.getParameter("category");
        String sub_cat=request.getParameter("sub_category");
 
        String pname=request.getParameter("pname");
        float price=Float.parseFloat(request.getParameter("price"));
        String qty=request.getParameter("qty");
        String type=request.getParameter("type");
        String desc=request.getParameter("desc");
        float discount=Float.parseFloat(request.getParameter("discount"));
        Part filepart = request.getPart("photo");
       
        ins=filepart.getInputStream();
        Connection con=Condb.dbCon();
        PreparedStatement pst=con.prepareStatement("insert into product(p_name,p_category,p_price,p_quantity,p_image,p_type,description,p_discount) values(?,(select c_id from p_category where category=? and sub_category=?),?,?,?,?,?,?)");
        pst.setString(1,pname);
        pst.setString(2, pcat);
         pst.setString(3,sub_cat);
        pst.setFloat(4, price);
        pst.setString(5,qty);
        pst.setBlob(6, ins);
        pst.setString(7,type);
         pst.setString(8,desc);
        pst.setFloat(9,discount);

        int rs=pst.executeUpdate();
            if(rs>0)
            {
            response.sendRedirect("admin/add_product.jsp");
            }
              
  /* Delete product */
       } else if((request.getParameter("m3"))!=null){
       
       System.out.println(Integer.parseInt(request.getParameter("m3")));
       System.out.println(Integer.parseInt(request.getParameter("p_id")));
       }
 /*  End Delete product */
 
     /*  Edit Product Category  */      
    if((request.getParameter("e1"))!=null)
       {
       int id =Integer.parseInt(request.getParameter("c_id"));
        String pcat=request.getParameter("category");
         String sub_cat=request.getParameter("sub_category");
         
          Connection con=Condb.dbCon();
        PreparedStatement pst=con.prepareStatement("update p_category set category=?,sub_category=? where c_id=? ");
        pst.setString(1,pcat);
        pst.setString(2,sub_cat);
        pst.setInt(3,id);
        
        int rs=pst.executeUpdate();
            if(rs>0)
            {
            response.sendRedirect("admin/products.jsp");
            }     } 
    
 /*  Add Product Category  */ 
    else if ((request.getParameter("e2"))!=null) 
       {
       
        String pcat=request.getParameter("category");
         String sub_cat=request.getParameter("sub_category");
         
          Connection con=Condb.dbCon();
        PreparedStatement pst=con.prepareStatement("insert into p_category(category,sub_category) values(?,?)");
        pst.setString(1,pcat);
        pst.setString(2,sub_cat);
        int rs=pst.executeUpdate();
            if(rs>0)
            {
            response.sendRedirect("admin/p_category.jsp?add=1");
            }
       
       }
 
 /* End Edit Product Category  */  
 
 
       }
       
       catch(Exception e)
       {  System.out.println(e);}
      
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
