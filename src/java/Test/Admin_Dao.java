
package Test;
import java.sql.*;
import java.util.*;

public class Admin_Dao 
{
     Connection con=null;
public Connection getConnection() throws Exception
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Pakers_and_Movers","root","");
 return conn;

    }

public int vehicle_assign(String Veh_No,int emp_id) throws Exception
{
    int i=0;
    con=getConnection();
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select count(veh_no) from vehicle_assign where veh_no='"+Veh_No+"'");
    rs.next();
    i=rs.getInt(1);
    if(i>0)
    {
       System.out.println("vehicle is already assigned");
    }
    else
    {
          i=stmt.executeUpdate("insert into vehicle_assign(veh_no,emp_id)"
           + "values('"+Veh_No+"','"+emp_id+"')");
    }
    return i;
}

public int Employee_Registration(String name,String Mob,String address,
        int Branch_Id,String Type )throws Exception
{
    int i=0;
    con=getConnection();
    Statement stmt=con.createStatement();
     ResultSet rs=stmt.executeQuery("select count(EMP_ID) from EMPLOYEE where MOBILE_NO="
             + "'"+Mob+"'");
  rs.next();
  i=rs.getInt(1);
  if(i>0)
  {
      System.out.println("Employee is already registered!!");
  }
  else
  {
    i=stmt.executeUpdate("insert into employee(EMP_NAME,MOBILE_NO,EMP_ADDRESS,BRANCH_ID,EMP_TYPE)"
                         + " values ('"+name+"','"+Mob+"','"+address+"','"+Branch_Id+"','"+Type+"')");
  }
    return i;
}
public int Vehicle_Registration(String Veh_No,int Branch_id,String Type)throws Exception
{
    int i=0;
    con=getConnection();
    Statement stmt=con.createStatement();
     ResultSet rs=stmt.executeQuery("select count(VEH_NO) from VEHICLE where VEH_NO='"+Veh_No+"'");
  rs.next();
  i=rs.getInt(1);
  if(i>0)
  {
      System.out.println("Vehicle is already registered!!");
  }
  else
  {
    i=stmt.executeUpdate("insert into vehicle(VEH_NO,BRANCH_ID,TYPE)"
                         + " values ('"+Veh_No+"','"+Branch_id+"','"+Type+"')");
  }
  return i;    
}






public ArrayList<Employee_Pojo> FetchE(String bcode) throws Exception
{
   
   ArrayList<Employee_Pojo> data=new ArrayList<Employee_Pojo>();
   con=getConnection();
   Statement stmt=con.createStatement();
   ResultSet rs=stmt.executeQuery("select * from employee  where branch_id= "+bcode);
   while(rs.next())
   {
       Employee_Pojo obj=new Employee_Pojo();
       obj.setEMP_ID(rs.getInt(1));
       obj.setEMP_NAME(rs.getString(2));
       obj.setMOBILE_NO(rs.getString(3));
       obj.setEMP_ADD(rs.getString(4));
       obj.setBRANCH_ID(rs.getInt(5));
       obj.setEMP_TYPE(rs.getString(6));
       data.add(obj);
       
       
   }
   return data;
}
public int updateEmployee(int id,String name,String mob,int braid,String add,String type) throws Exception
{
    int i=0;
    con=getConnection();
    Statement stmt=con.createStatement();
    i=stmt.executeUpdate("update employee set  EMP_NAME='"+name+"',MOBILE_NO='"+mob+"',EMP_ADDRESS='"+add+"',BRANCH_ID='"+braid+"',EMP_TYPE='"+type+"' where EMP_ID='"+id+"'");
    return i;
}
public int deleteEmployee(int id) throws Exception
{
    int i=0;
    con=getConnection();
    Statement stmt=con.createStatement();
    i=stmt.executeUpdate("delete from employee where EMP_ID="+id);
    return i;
}


public ArrayList<Vehicle_Pojo> FetchV(String code) throws Exception
{
       ArrayList<Vehicle_Pojo> data=new ArrayList<Vehicle_Pojo>();
   con=getConnection();
   Statement stmt=con.createStatement();
   ResultSet rs=stmt.executeQuery("select * from vehicle where branch_id="+code);
   while(rs.next())
   {
       Vehicle_Pojo obj=new Vehicle_Pojo();
       obj.setVEH_NO(rs.getString(1));
       obj.setBRANCH_ID(rs.getInt(2));
       obj.setTYPE(rs.getString(3));
       data.add(obj);
       
   }
   return data;
}
public ArrayList<Invoice_Pojo> FetchI(String code) throws Exception
{
    ArrayList<Invoice_Pojo> data=new ArrayList<Invoice_Pojo>();
    con=getConnection();
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select * from invoice where aid in (select aid from admin where branch_id='"+code+"') ");
    while(rs.next())
    {
        Invoice_Pojo obj=new Invoice_Pojo();
        obj.setINV_ID(rs.getInt(1));
        obj.setENQ_ID(rs.getInt(2));
        obj.setINV_DATE(rs.getString(3));
        obj.setPRICE(rs.getString(4));
       // obj.setSECURITY_COST(rs.getFloat(5));
        obj.setBranch_ID(rs.getInt(5));
        obj.setHAPPY_CODE(rs.getString(6));
        data.add(obj);
        
    }
    return data;
}
 public ArrayList<Customer_Pojo> FetchC(String code) throws Exception
{
       ArrayList<Customer_Pojo> data=new ArrayList<Customer_Pojo>();
   con=getConnection();
   Statement stmt=con.createStatement();
   ResultSet rs=stmt.executeQuery(" SELECT * from customer where cust_ID in ( select cust_ID from enquiry where source_ in ( select city from branch where branch_id ='"+code+"'))");
   while(rs.next())
   {
       Customer_Pojo obj=new Customer_Pojo();
       obj.setCUST_ID(rs.getInt(1));
       obj.setCUST_NAME(rs.getString(2));
       obj.setCUST_ADDRESS(rs.getString(3));
       obj.setMOB_NO(rs.getString(4));
       obj.setCUST_EMAIL(rs.getString(5));
       data.add(obj);
       
   }
   return data;
}
public int deleteVehicle(String veh_no) throws Exception
{
     int i;
    con=getConnection();
     Statement stmt=con.createStatement();
     i=stmt.executeUpdate("delete from vehicle where VEH_NO='"+veh_no+"' ");
     return i;
}
public int updateCustomer(int id,String name,String add,String mob,String email) throws Exception
{
    int i=0;
    con=getConnection();
    Statement stmt=con.createStatement();
    i=stmt.executeUpdate("update customer set CUST_NAME='"+name+"',CUST_EMAIL='"+email+"',MOBILE_NO='"+mob+"',"
            + "CUST_ADDRESS='"+add+"' where CUST_ID='"+id+"'");
    return i;
}
  public int updateInvoice(int in_id,int enq_id,String date,String price,String sec_price,int a_id,String hcode) throws Exception
{
    int i=0;
    con=getConnection();
    Statement stmt=con.createStatement();
    i=stmt.executeUpdate("update invoice set ENQ_ID='"+enq_id+"',INV_DATE='"+date+"',PRICE='"+price+"',"
            + "security_cost='"+sec_price+"',HAPPY_CODE='"+hcode+"',AID='"+a_id+"' where INV_ID='"+in_id+"' ");
    return i;
}
  public int deleteInvoice(int id) throws Exception
{
     int i;
    con=getConnection();
     Statement stmt=con.createStatement();
     i=stmt.executeUpdate("delete from invoice where inv_id='"+id+"' ");
     return i;
}
     public int deleteFeedback(int id) throws Exception
{
     int i;
    con=getConnection();
     Statement stmt=con.createStatement();
     i=stmt.executeUpdate("delete from feedback where f_id='"+id+"' ");
     return i;
}
 public int deleteCustomer(int id) throws Exception
{
     int i;
    con=getConnection();
     Statement stmt=con.createStatement();
     i=stmt.executeUpdate("delete from customer where cust_id='"+id+"' ");
     return i;
}
 public ArrayList<FeedBack_pojo> FetchF(String t) throws Exception
{
       ArrayList<FeedBack_pojo> data=new ArrayList<FeedBack_pojo>();
   con=getConnection();
   Statement stmt=con.createStatement();
   ResultSet rs=stmt.executeQuery("select * from feedback where cust_id in"
           + " (select cust_id from enquiry where enq_id  in"
           + "(select enq_id from invoice where aid in "
           + "(select aid from admin where branch_id='"+t+"')))");
   while(rs.next())
   {
       FeedBack_pojo obj=new FeedBack_pojo();
      obj.setF_ID(rs.getInt(1));
      obj.setCUST_ID(rs.getInt(2));
      obj.setMSG(rs.getString(3));
      data.add(obj);
       
   }
   return data;
}
 public ArrayList<Enquiry_Pojo> FetchEn(String bcode) throws Exception
{
       ArrayList<Enquiry_Pojo> data=new ArrayList<Enquiry_Pojo>();
   con=getConnection();
   Statement stmt=con.createStatement();
   ResultSet rs=stmt.executeQuery("select * from enquiry where source_ in"
           + " (select city from branch where branch_id  ='"+bcode+"' )");
   while(rs.next())
   {
       Enquiry_Pojo obj=new Enquiry_Pojo();
      obj.setENQ_ID(rs.getInt(1));
      obj.setCUST_ID(rs.getInt(2));
      obj.setSOURCE(rs.getString(3));
      obj.setDESTINATION(rs.getString(4));
      obj.setDOD(rs.getString(5));
      obj.setMSG(rs.getString(6));
       data.add(obj);
       
   }
   return data;
}
}



