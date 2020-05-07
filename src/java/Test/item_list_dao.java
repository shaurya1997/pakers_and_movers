/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author shash
 */
public class item_list_dao {
     Connection con=null;
public Connection getConnection() throws Exception
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Pakers_and_Movers","root","");
 return conn;

    }
public int item_list(int inv_id,String name,String price,int qty )throws Exception
{
    int i=0;
    con=getConnection();
    Statement stmt=con.createStatement();
   
    i=stmt.executeUpdate("insert into item_list(inv_id,item_name,Rate,quantity)"
                         + " values ('"+inv_id+"','"+name+"','"+price+"','"+qty+"')");
  
    return i;
}
public ArrayList<item_list_pojo> FetchItem(String Icode) throws Exception
{
       ArrayList<item_list_pojo> data=new ArrayList<item_list_pojo>();
   con=getConnection();
   Statement stmt=con.createStatement();
   ResultSet rs=stmt.executeQuery("select * from item_list where inv_id='"+Icode+"'");
   while(rs.next())
   {
       item_list_pojo obj=new item_list_pojo();
      obj.setInv_id(rs.getInt(1));
      obj.setItem_name(rs.getString(2));
      obj.setPrice(rs.getString(3));
      obj.setQty(rs.getInt(4));
       data.add(obj);
       
   }
   return data;
}
}
