package ExamplePackage;

import java.io.*;  
import java.sql.*;  

import javax.servlet.ServletException;  
import javax.servlet.http.*;  
  
public class Register extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  

PrintWriter out = response.getWriter();  
          
String f=request.getParameter("FirstName");  
String l=request.getParameter("LastName");  
String u=request.getParameter("username");  
String p=request.getParameter("password");  
int ut=Integer.parseInt(request.getParameter("usertype"));           
try{  
//Class.forName("com.mysql.jdbc.Driver");  
//Connection con=getConnection("jdbc:mysql://localhost:3306/log","root","");  
Connection con = null;

con = baseDAO.getConnection();
  String sql ="insert into users values(?,?,?,?,?,?)";
  
PreparedStatement ps=con.prepareStatement(sql,PreparedStatement.RETURN_GENERATED_KEYS);  // for auto increment of id

ps.setString(1,null); 
ps.setString(2,f);  
ps.setString(3,l);  
ps.setString(4,u);  
ps.setString(5,p);  
ps.setInt(6,ut);           
int i=ps.executeUpdate();  
if(i>0)  
	
	if(ut==1){
		
		out.print("You are successfully registered as Admin");
	}
	else
	if(ut==2){
		
		out.print("You are successfully registered as Doctor");
	}
	else
	if(ut==3){
		
		int maxid=0;
		 
		//String sql2 ="";
		  
		  PreparedStatement pstmt=con.prepareStatement("sql2");
		  ResultSet rs = pstmt.executeQuery("SELECT MAX(ID) as id FROM users");
		  //rs.next();
		  //rs.getInt("id");
		  
		  while (rs.next())
		  {
			  maxid = rs.getInt("id");
		   
		  }
		 
		
		out.println("You are succesfully registered as Patient Please note your patient id " + maxid);
		
		
	}


       
/*SELECT * FROM Table
WHERE ID = (
    SELECT MAX(ID) FROM Table)

SELECT TOP 1 * FROM Table
ORDER BY ID DESC */
	
//out.print("You are successfully registered as " + ut );  
	



      
          
}catch (Exception e2) {
	
	  System.out.println(e2);}  



         
out.close();  
}



  
}  