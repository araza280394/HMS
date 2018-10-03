package ExamplePackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.Session;

public class PatReg extends HttpServlet {
	 
	static Connection con;
	   static ResultSet rs;  
		
	/**
	 * Constructor of the object.
	 */
	public PatReg() {
		super();
	}

	

	
	 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();

		String n=request.getParameter("name");    
		int a=Integer.parseInt(request.getParameter("age"));  
		String ad=request.getParameter("address");  
		String d=request.getParameter("disease");  
		out.println("dep  "+request.getParameter("dep"));
//		out.print("You are appointed successfully" ); 
		int dep=Integer.parseInt(request.getParameter("dep"));     
		int Id=Integer.parseInt(request.getParameter("id")); 
		try{  
			// connection interface of baseDAO
			Connection con = null;

			con = baseDAO.getConnection();
			
		  String sql ="insert into patient values(?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql,PreparedStatement.RETURN_GENERATED_KEYS);  // for auto increment of id
      
		ps.setString(1,null);
		ps.setInt(2,Id); 
		ps.setString(3,n);  
		ps.setInt(4,a);  
		ps.setString(5,ad);  
		ps.setString(6,d);  
		ps.setInt(7,dep);           
		int i=ps.executeUpdate();  
		if(i>0)  
			
			
		out.print("You are appointed successfully. Your appointment id is:" ); 
		
		
	
	}catch (Exception e2) {System.out.println(e2);}  
		
	out.close();  
	}
	
	
	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
