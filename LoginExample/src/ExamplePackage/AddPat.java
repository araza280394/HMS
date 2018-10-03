package ExamplePackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddPat extends HttpServlet {

	
	
	

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();

		String dep=request.getParameter("dep");    
		int patid=Integer.parseInt(request.getParameter("patList"));  
	  
		System.out.println("dep  "+request.getParameter("dep"));
		int docid=Integer.parseInt(request.getParameter("docid"));     
		
		try{  
			Connection con = null;

			con = baseDAO.getConnection();
			
		//Class.forName("com.mysql.jdbc.Driver");  
		//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/log","root","");  
		  String sql ="insert into doctor values(?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql,PreparedStatement.RETURN_GENERATED_KEYS);  // for auto increment of id
      
		ps.setInt(1,docid);
		ps.setInt(2,patid);   
		ps.setString(3,dep);           
		int i=ps.executeUpdate();  
		if(i>0)  
		out.print("You have successfully added a new patient..." );  

	
	}catch (Exception e2) {System.out.println(e2);}  
    
	out.close();  
	}

	
	 
	
}
