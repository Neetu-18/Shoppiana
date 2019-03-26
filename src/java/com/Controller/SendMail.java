
package com.Controller;


import com.dao.Condb;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.email.EmailUtility;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class SendMail extends HttpServlet {
private String host;
private String port;
private String user;
private String pass;

public void init() {
		// reads SMTP server setting from web.xml file
		ServletContext context = getServletContext();
		host = context.getInitParameter("host");
		port = context.getInitParameter("port");
		user = context.getInitParameter("user");
		pass = context.getInitParameter("pass");
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        String rec=request.getParameter("user");
        
      
        
        
       // String resultMessage = "";
		try {
                    Connection con =Condb.dbCon();
                    PreparedStatement stmt = con.prepareStatement("select password from customer where email=?");
                    stmt.setString(1, rec);
                    ResultSet res = stmt.executeQuery();
                        if (!res.next()) {
                              System.out.println("Email not found");
                            response.getWriter().println("Error");
                        } else {
                              System.out.println("Email found ");
                            String content="Your Password :"+res.getString(1);
			    EmailUtility.sendEmail(host, port, user, pass, rec,"recovery password",content);
			//resultMessage = "The e-mail was sent successfully";
                         response.getWriter().println("Success");
                        }
		} catch (Exception ex) {
			ex.printStackTrace();
			//resultMessage = "There were an error: " + ex.getMessage();
		} 
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
