/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Shashwat Vashimkar
 */
public class Enquiry_Dao {
     Connection con=null;
public Connection getConnection() throws Exception
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Pakers_and_Movers","root","");
 return conn;

    }
    public int Enquiry_Registration(int cid,String Source,String Destination,String DOD,
                         String Message)throws Exception
  {
    int i=0;
    con=getConnection();
    Statement stmt=con.createStatement();
  
     out.println("<script>alert('cust id'+cid);</script>");
   i=stmt.executeUpdate("insert into enquiry(CUST_ID,SOURCE_,DESTINATIONA,DOD,MSG)"
           + "values('"+cid+"','"+Source+"','"+Destination+"','"+DOD+"','"+Message+"')");

    return i;
}
    public int get_cust_id(String email)throws Exception
    {
        int id=0;
       // String u_name=session.getAttribute("uname").toString();
        out.println("<script>alert('uname'+email);</script>");
        con=getConnection();
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select cust_id from customer where cust_email='"+email+"'");
       while(rs.next())
       {
            id=rs.getInt(1); 
       }
       
        
        return id;
    }
}
