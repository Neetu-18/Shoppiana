
package com.model;

import com.dao.Condb;
import java.sql.*;

/**
 *
 * @author rohitkumar
 */
public class EmailValidate {
    
    public boolean EmailVal(String email){
//        try{
//         
//    Connection con = Condb.dbCon();
//    PreparedStatement pst=con.prepareStatement("select email from customer where email=?");
//    pst.setString(1, email);
//   ResultSet rs= pst.executeQuery();
//   if(rs.next())
//   {
//   System.out.println("Email exist");
//   
//   return true;
//   }
//   else{
//   System.out.println("Email not exist");}
//    
//    }
//    catch(Exception e){
//     System.out.println("Error" + e);
//    }
System.out.println("value from v"+ email);
if(email.equals("email") ){

    return true;
}
        return false;
    }
    
//    public static void main(String []arg){
//        
//    EmailValidate val=new EmailValidate();
//    System.out.println(val.EmailVal("rohit@12"));
//    }
    
}
