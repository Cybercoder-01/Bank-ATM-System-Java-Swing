package bankatm;

import java.sql.*;


public class Conn {
    
    Connection c ;
    Statement s;
    public Conn()
    {
        try
        {
            
            
            c=DriverManager.getConnection("jdbc:mysql://localhost:3307/bank?useSSL=false&serverTimezone=UTC","root","");
            s=c.createStatement();
            
        }
        catch(Exception e) 
                {
                    System.out.println(e);
                }
    }
}