/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Shashi DIV
 */
 import java.sql.*;
public class db {

    
    
   public static Connection Connector() {
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/shopping","root","biri");
            return conn;
        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
        
    }
    
    
}
