
package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Condb {
   static Connection con;
   
   public static Connection dbCon(){
    try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppianadb","root","root");
                    }
            catch(Exception e){
             System.out.println("Error:" +e.getMessage());}
           
            return con;
   }
}