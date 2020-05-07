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
 * @author Shashwat Vashimkar
 */
public class Customer_Dao {
     Connection con=null;
public Connection getConnection() throws Exception
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Pakers_and_Movers","root","");
 return conn;

    }
    public int Customer_Registration(String Name,String Address,String Mob,String Email,
                         String Password)throws Exception
  {
    int i=0;
    con=getConnection();
    Statement stmt=con.createStatement();
     ResultSet rs=stmt.executeQuery("select count(CUST_ID) from CUSTOMER where CUST_EMAIL="
             + "'"+Email+"'");
  rs.next();
  i=rs.getInt(1);
  if(i>0)
  {
      System.out.println("Customer is already registered!! dao");
  }
  else
  {
   i=stmt.executeUpdate("insert into customer(CUST_NAME,CUST_ADDRESS,MOBILE_NO,CUST_EMAIL,CUST_PASS)"
           + "values('"+Name+"','"+Address+"','"+Mob+"','"+Email+"','"+Password+"')");
  }
    return i;
}
    public ArrayList<Customer_Pojo> FetchC(String code) throws Exception
{
       ArrayList<Customer_Pojo> data=new ArrayList<Customer_Pojo>();
   con=getConnection();
   Statement stmt=con.createStatement();
   ResultSet rs=stmt.executeQuery(" SELECT * from customer where cust_ID ='"+code+"'");
   while(rs.next())
   {
       Customer_Pojo obj=new Customer_Pojo();
     //  obj.setCUST_ID(rs.getInt(1));
       obj.setCUST_NAME(rs.getString(2));
       obj.setCUST_ADDRESS(rs.getString(3));
       obj.setMOB_NO(rs.getString(4));
       obj.setCUST_EMAIL(rs.getString(5));
       data.add(obj);
       
   }
   return data;
}
    public ArrayList<Customer_Pojo> FetchCus(int invid) throws Exception
{
       ArrayList<Customer_Pojo> data=new ArrayList<Customer_Pojo>();
   con=getConnection();
   Statement stmt=con.createStatement();
   ResultSet rs=stmt.executeQuery(" select * from customer where cust_id in (select cust_id  from enquiry where enq_id in (SELECT enq_id from invoice where inv_id='"+invid+"'))");
   while(rs.next())
   {
       Customer_Pojo obj=new Customer_Pojo();
     //  obj.setCUST_ID(rs.getInt(1));
       obj.setCUST_NAME(rs.getString(2));
       obj.setCUST_ADDRESS(rs.getString(3));
       obj.setMOB_NO(rs.getString(4));
       obj.setCUST_EMAIL(rs.getString(5));
       data.add(obj);
       
   }
   return data;
}   
}
