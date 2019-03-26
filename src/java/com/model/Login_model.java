package com.model;

import com.bean.cust_bean;
import com.dao.Condb;
import java.sql.*;

public class Login_model {

    public boolean login(String uname, String pass) {

        try {

            cust_bean cust = new cust_bean();
            Connection con = Condb.dbCon();
            PreparedStatement pst = con.prepareStatement("select * from customer where email=? and password=?");
            pst.setString(1, uname);
            pst.setString(2, pass);

            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                System.out.println("login succes");

                cust.setCust_id(rs.getInt(1));
                cust.setName(rs.getString(2));
                cust.setEmail(rs.getString(3));
                cust.setPassword(rs.getString(4));
                cust.setMobile(rs.getLong(5));
                cust.setAddress(rs.getString(6));
                cust.setState(rs.getString(7));
                return true;

            }
            System.out.println(" fail login");
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        }

        return false;

    }
    
    public void selec(String s){
        System.out.println(s);
    }
}
