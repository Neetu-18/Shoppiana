
package com.model;

import com.dao.Condb;
import java.sql.*;

import java.util.ArrayList;

/**
 *
 * @author rohitkumar
 */
public class Register_model {
    
    public ArrayList RegisterCust(String name,String email,String password,Long mobile,String address,String state){
        
        ArrayList var=new ArrayList();
        
        try{
            Connection con=Condb.dbCon();
            PreparedStatement pst=con.prepareStatement("insert into customer(name,email,password,mobile_no,address,state) values(?,?,?,?,?,?)");
             pst.setString(1,name);
             pst.setString(2,email);
             pst.setString(3, password);
             pst.setLong(4,mobile);
             pst.setString(5, address);
             pst.setString(6,state);
                
                int rs=pst.executeUpdate();
                if(rs>0)
                {
                    var.add("success");
                    System.out.println("successfully data inserteed");
                Statement st=con.createStatement();
                ResultSet rst=st.executeQuery("select max(cust_id) from customer");
                if(rst.next()){
                    
                    var.add(rst.getInt(1));
                }
                else{
                var.add("Error");
                System.out.println("Error in data insertion");
                }
                }
           }
        catch(Exception e){
        System.out.println("Error"+ e);
        }
        
        return var;
    
    }
    

}
