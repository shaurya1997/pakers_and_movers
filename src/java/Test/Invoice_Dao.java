package Test;
import java.sql.*;
import java.util.*;

public class Invoice_Dao 
{
     Connection con=null;
public Connection getConnection() throws Exception
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Pakers_and_Movers","root","");
 return conn;

    }
public int Invoice_Entry(int enq_id,String date,String price,int branch_Id,String HC )throws Exception
{
    int i=0;
    con=getConnection();
    Statement stmt=con.createStatement();
   
    i=stmt.executeUpdate("insert into invoice(enq_id,inv_date,price,branch_id,Happy_Code)"
                         + " values ('"+enq_id+"','"+date+"','"+price+"','"+branch_Id+"','"+HC+"')");
  
    return i;
}
public int Invoice_id(int enqId) throws Exception
{
    int id=0;
       // String u_name=session.getAttribute("uname").toString();
      //  out.println("<script>alert('uname'+email);</script>");
        con=getConnection();
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select inv_id from invoice where enq_id='"+enqId+"'");
       while(rs.next())
       {
            id=rs.getInt(1); 
       }
       
        
        return id;
}
}
