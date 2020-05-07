
package Test;
import java.sql.*;
import java.util.*;

public class Master_Admin_Dao 
{
     Connection con=null;
public Connection getConnection() throws Exception
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Pakers_and_Movers","root","");
 return conn;

    }
public int Admin_Registration(String Name,String Email,String Mob,String Address,
        int Branch_Id,String Password)throws Exception
{
    int i=0;
    con=getConnection();
    Statement stmt=con.createStatement();
     ResultSet rs=stmt.executeQuery("select count(*) from ADMIN where A_EMAIL="
             + "'"+Email+"'");
  rs.next();
  i=rs.getInt(1);
  if(i>0)
  {
      System.out.println("Admin is already registered!!");
  }
  else
  {
   i=stmt.executeUpdate("insert into admin(A_NAME,A_EMAIL,A_PASSWORD,BRANCH_ID,MOB_NO,ADDRESS)"
           + "values('"+Name+"','"+Email+"','"+Password+"','"+Branch_Id+"','"+Mob+"','"+Address+"')");
  }
    return i;
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
public int Branch_Registration(String Branch_add,String City,String Contact)throws Exception
{
  int i=0;
  con = getConnection();
  Statement stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery("select count(BRANCH_ID) from BRANCH where CITY='"+City+"'");
  rs.next();
  i=rs.getInt(1);
  if(i>0)
  {
      System.out.println("Branch is already registered!!");
  }
  else
  {
  i=stmt.executeUpdate("insert into branch(BRANCH_ADDRESS,CITY,BRANCH_CONTACT)"
                   + " values('"+Branch_add+"','"+City+"','"+Contact+"')");
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
public int  State_Registration(String sname) throws Exception
{
    int i=0;
    con=getConnection();
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select count(S_NAME) from state where S_NAME='"+sname+"'");
    rs.next();
    i=rs.getInt(1);
    if(i>0)
    {
        System.out.println("state is already registered");
    }
    else
    {
      i=stmt.executeUpdate("insert into state(S_NAME)"
                         + " values ('"+sname+"')");
    }
    return i;
}
public int city_Registration(String sname,String city) throws Exception
{
    int i=0;
    con=getConnection();
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select count(c_name) from city where c_name='"+city+"'");
    rs.next();
    i=rs.getInt(1);
    if(i>0)
    {
        System.out.println("city is already registered");
    }
    else
    {
      i=stmt.executeUpdate("insert into city(C_NAME,S_NAME)"
                         + " values ('"+city+"','"+sname+"')");
    }
    return i;
}
public ArrayList<Admin_Pojo> Fetch() throws Exception
{
ArrayList<Admin_Pojo> data=new ArrayList<Admin_Pojo>();
con=getConnection();
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from admin");
while(rs.next())
{
    Admin_Pojo obj=new Admin_Pojo();
    obj.setA_ID(rs.getInt(1));
    obj.setName(rs.getString(2));
    obj.setEmail(rs.getString(3));
    obj.setBRANCH_ID(rs.getInt(5));
    obj.setMob_no(rs.getString(6));
    obj.setAddress(rs.getString(7));
    data.add(obj);
}
return data;

}
public ArrayList<Branch_Pojo> FetchB() throws Exception
{
    ArrayList<Branch_Pojo> data=new ArrayList<Branch_Pojo>();
    con=getConnection();
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select * from branch");
    while(rs.next())
    {
     Branch_Pojo obj=new Branch_Pojo();
     obj.setBRANCH_ID(rs.getInt(1));
     obj.setBRANCH_ADD(rs.getString(2));
     obj.setCITY(rs.getString(3));
     obj.setBRANCH_CON(rs.getString(4));
     data.add(obj);
    }
    return data;
}
public int updateBranch(int id,String add,String city,String mob) throws Exception
{
 int i=0;
    con=getConnection();
    Statement stmt=con.createStatement();
    i=stmt.executeUpdate("update branch set BRANCH_ADDRESS='"+add+"',CITY='"+city+"',BRANCH_CONTACT='"+mob+"' where BRANCH_ID="+id);
    return i;
}
public int deleteBranch(int id) throws Exception
{
    int i=0;
    con=getConnection();
      Statement stmt=con.createStatement();
    i=stmt.executeUpdate("delete from branch where BRANCH_ID="+id);
    return i;
}
public ArrayList<Employee_Pojo> FetchE(String t) throws Exception
{
   ArrayList<Employee_Pojo> data=new ArrayList<Employee_Pojo>();
   con=getConnection();
   Statement stmt=con.createStatement();
   ResultSet rs=stmt.executeQuery("select * from employee where BRANCH_ID="+t);
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
public int updateAdmin(int id,String name,String email,int branchId,String mob,String address) throws Exception
{
    int i=0;
    con=getConnection();
    Statement stmt=con.createStatement();
    i=stmt.executeUpdate("update admin set A_NAME='"+name+"',A_EMAIL='"+email+"',MOB_NO='"+mob+"',"
            + "ADDRESS='"+address+"' where AID='"+id+"'");
    return i;
}
public int deleteAdmin(int id) throws Exception
{
    int i;
    con=getConnection();
     Statement stmt=con.createStatement();
     i=stmt.executeUpdate("delete from admin where AID="+id);
     return i;
}
public ArrayList<Vehicle_Pojo> FetchV(String t) throws Exception
{
       ArrayList<Vehicle_Pojo> data=new ArrayList<Vehicle_Pojo>();
   con=getConnection();
   Statement stmt=con.createStatement();
   ResultSet rs=stmt.executeQuery("select * from vehicle where BRANCH_ID="+t);
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
public ArrayList<Invoice_Pojo> FetchI(String t) throws Exception
{
    ArrayList<Invoice_Pojo> data=new ArrayList<Invoice_Pojo>();
    con=getConnection();
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select * from invoice where aid in (select aid from admin where branch_id='"+t+"') ");
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
 public ArrayList<Customer_Pojo> FetchC(String t) throws Exception
{
       ArrayList<Customer_Pojo> data=new ArrayList<Customer_Pojo>();
   con=getConnection();
   Statement stmt=con.createStatement();
   ResultSet rs=stmt.executeQuery(" SELECT * from customer where cust_ID in ( select cust_ID from enquiry where source_ in ( select city from branch where branch_id ='"+t+"'))");
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
public int deleteVehicle(String veh_no) throws Exception
{
     int i;
    con=getConnection();
     Statement stmt=con.createStatement();
     i=stmt.executeUpdate("delete from vehicle where VEH_NO='"+veh_no+"' ");
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
           + " (select city from branch where branch_id  ='"+bcode+"')");
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
























