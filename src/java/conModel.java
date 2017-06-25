
import java.sql.*;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Shashi DIV
 */
public class conModel {
    
    Connection connection;

    public conModel() {
        connection = db.Connector();
        
          if(connection==null)System.exit(1);
    }
    
     public boolean isDbConnected(){
        try {
            return !connection.isClosed();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
