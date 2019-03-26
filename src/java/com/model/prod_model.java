
package com.model;

import com.bean.prod_bean;
import com.dao.Condb;
import java.sql.*;
import java.util.ArrayList;

public class prod_model {
    
     prod_bean pd=null;
   
     
     
     // Top Product
public ArrayList ProductType(String ptype,String p_cat){
       
        ArrayList prodlist=new ArrayList();
        try{
            Connection con=Condb.dbCon();
 PreparedStatement stm=con.prepareStatement("select * from product join p_category on product.c_id=p_category.c_id where p_type=? and sub_category=?");
 stm.setString(1,ptype);
 stm.setString(2,p_cat);
 
 ResultSet rs=stm.executeQuery();
while(rs.next())
{
   pd =new prod_bean();
   
    pd.setP_id(rs.getInt(1));
    pd.setName(rs.getString(2));
    pd.setP_category(rs.getInt(3));
    pd.setPrice(rs.getFloat(4));
    pd.setQuantity(rs.getString(5));
    pd.setType(rs.getString(7));
     pd.setDescription(rs.getString(8));
     pd.setDiscount(rs.getFloat(9));
    prodlist.add(pd);
     
}
  }
        catch(Exception e){
        System.out.println("Error" + e.getMessage());}
       
    return prodlist;
}
     // special deals & special offer
     
 public ArrayList getprod(String ptype){
       ArrayList p_list=new ArrayList();
        try{
            Connection con=Condb.dbCon();
 PreparedStatement stm=con.prepareStatement("select * from product where p_type=?");
 stm.setString(1,ptype);
 ResultSet rs=stm.executeQuery();
while(rs.next())
{
   pd =new prod_bean();
   
    pd.setP_id(rs.getInt(1));
    pd.setName(rs.getString(2));
    pd.setP_category(rs.getInt(3));
    pd.setPrice(rs.getFloat(4));
    pd.setQuantity(rs.getString(5));
    pd.setType(rs.getString(7));
     pd.setDescription(rs.getString(8));
     pd.setDiscount(rs.getFloat(9));
    p_list.add(pd);
}
  }
        catch(Exception e){
        System.out.println("Error" + e.getMessage());}
        
    return p_list;
}
 
 // product category (kitchen & household)
     
 public ArrayList ProductCat(String pcat,String scat){
      
     ArrayList p_list=new ArrayList();
        try{
     Connection con=Condb.dbCon();
 PreparedStatement stm=con.prepareStatement("select * from product join p_category on product.p_category=p_category.c_id where p_category.category=? and p_category.sub_category=?");
 stm.setString(1,pcat);
 stm.setString(2,scat);
 ResultSet rs=stm.executeQuery();
 
while(rs.next()){
   pd =new prod_bean();
   
    pd.setP_id(rs.getInt(1));
    pd.setName(rs.getString(2));
    pd.setP_category(rs.getInt(3));
    pd.setPrice(rs.getFloat(4));
    pd.setQuantity(rs.getString(5));
    pd.setType(rs.getString(7));
     pd.setDescription(rs.getString(8));
     pd.setDiscount(rs.getFloat(9));
    p_list.add(pd);
}
  }
      catch(Exception e){
       System.out.println("Error" + e.getMessage());}
    return p_list;
}
 
 
        //Single product
 public ArrayList singleprod(String sname)
 {
  ArrayList p_list=new ArrayList();
        try{
            Connection con=Condb.dbCon();
 PreparedStatement stm=con.prepareStatement("select * from product where p_name=?");
 stm.setString(1,sname);
 ResultSet rs=stm.executeQuery();
while(rs.next())
{
   pd =new prod_bean();
   
    pd.setP_id(rs.getInt(1));
    pd.setName(rs.getString(2));
    pd.setP_category(rs.getInt(3));
    pd.setPrice(rs.getFloat(4));
    pd.setQuantity(rs.getString(5));
   pd.setType(rs.getString(7));
     pd.setDescription(rs.getString(8));
     pd.setDiscount(rs.getFloat(9));
    p_list.add(pd);
}
  }
        catch(Exception e){
        System.out.println("Error" + e.getMessage());}
        
    return p_list;
 }
 
        //Search product
  public ArrayList searchprod(String pname)
 {
  ArrayList p_list=new ArrayList();
        try{
            Connection con=Condb.dbCon();
 PreparedStatement stm=con.prepareStatement("select * from product join p_category on product.p_category=p_category.c_id where p_name like ? '%' or p_category.sub_category like ? '%' ");
 stm.setString(1,pname);
 stm.setString(2,pname);
 ResultSet rs=stm.executeQuery();
while(rs.next())
{
   pd =new prod_bean();
   
    pd.setP_id(rs.getInt(1));
    pd.setName(rs.getString(2));
    pd.setP_category(rs.getInt(3));
    pd.setPrice(rs.getFloat(4));
    pd.setQuantity(rs.getString(5));
   pd.setType(rs.getString(7));
     pd.setDescription(rs.getString(8));
     pd.setDiscount(rs.getFloat(9));
    p_list.add(pd);
}
  }
        catch(Exception e){
        System.out.println("Error" + e.getMessage());}
    return p_list;
 }
  
  
  // all product category
 public ArrayList AllProduct(String pcat){
      
     ArrayList p_list=new ArrayList();
        try{
     Connection con=Condb.dbCon();
 PreparedStatement stm=con.prepareStatement("select * from product join p_category on product.p_category=p_category.c_id where p_category.category=?");
 stm.setString(1,pcat);

 ResultSet rs=stm.executeQuery();
 
while(rs.next()){
   pd =new prod_bean();
   
    pd.setP_id(rs.getInt(1));
    pd.setName(rs.getString(2));
    pd.setP_category(rs.getInt(3));
    pd.setPrice(rs.getFloat(4));
    pd.setQuantity(rs.getString(5));
    pd.setType(rs.getString(7));
     pd.setDescription(rs.getString(8));
     pd.setDiscount(rs.getFloat(9));
    p_list.add(pd);
}
  }
      catch(Exception e){
       System.out.println("Error" + e.getMessage());}
    return p_list;
}
 
 
  // Product Rating wise & price range
 public ArrayList Prod_rating(int min,int max,String rating){
      
     ArrayList p_list=new ArrayList();
        try{
     Connection con=Condb.dbCon();
 PreparedStatement stm=con.prepareStatement("select * from product where p_price between ? and ?");
 stm.setInt(1,min);
 stm.setInt(2,max);

 ResultSet rs=stm.executeQuery();
 
while(rs.next()){
   pd =new prod_bean();
   
    pd.setP_id(rs.getInt(1));
    pd.setName(rs.getString(2));
    pd.setP_category(rs.getInt(3));
    pd.setPrice(rs.getFloat(4));
    pd.setQuantity(rs.getString(5));
    pd.setType(rs.getString(7));
     pd.setDescription(rs.getString(8));
     pd.setDiscount(rs.getFloat(9));
    p_list.add(pd);
}
  }
      catch(Exception e){
       System.out.println("Error" + e.getMessage());}
    return p_list;
}
     
//     public static void main(String []arg){
//         
//         
//     ArrayList ls=new ArrayList();
//     
//     prod_model pm=new prod_model();
//    if( (ls=pm.ProductCat("kitchen","Tea")).size()==0)
//    {System.out.println("not found");}
//    
//    prod_bean prodbean=(prod_bean)ls.get(0);
//    System.out.println(prodbean.getName());
//     System.out.println(prodbean.getP_id());
//     
//     }
}