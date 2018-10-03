package ExamplePackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class baseDAO {

	
	
	 
	 
	 public static Connection getConnection(String host,String username,String password, String driver)
	 
	 
	 {
		 Connection con = null;
		 
		 try
	      {
	         
	         // assuming "DataSource" is your DataSource name

	         Class.forName(driver);
	         
	         try
	         {            	
	           con = DriverManager.getConnection(host,username,password); 
	             								
	              
	         }
	         
	         catch (SQLException ex)
	         {
	            ex.printStackTrace();
	         }
	      }

	      catch(ClassNotFoundException e)
	      {
	         System.out.println(e);
	      }

	   return con;
	}
	 
public static Connection getConnection()
	 
	 
	 {
		 Connection con = null;
		 
		 try
	      {
	         
	         // assuming "DataSource" is your DataSource name

	         Class.forName("com.mysql.jdbc.Driver");
	         
	         try
	         {            	
	           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/log", "root", ""); 
	             								
	              
	         }
	         
	         catch (SQLException ex)
	         {
	            ex.printStackTrace();
	         }
	      }

	      catch(ClassNotFoundException e)
	      {
	         System.out.println(e);
	      }

	   return con;
	}
	 }
	 

