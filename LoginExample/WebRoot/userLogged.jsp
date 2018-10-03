<%@ page language="java" 
         contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"
         import="ExamplePackage.UserBean"
   %>
 
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
   "http://www.w3.org/TR/html4/loose.dtd">

   <html>

      <head>
		   <link rel="stylesheet" href="Design.css"> 
         <meta http-equiv="Content-Type" 
            content="text/html; charset=windows-1256">
         <title>   User Logged Successfully   </title>
      </head>
      
      <h2 align="center">Logged in Successfully</h2>
	
      <body align="center" bgcolor="#E9967A">

         <center>
           
            
           <% UserBean currentUser = ((UserBean) (session.getAttribute("currentSessionUser")));%> 
   			Welcome <%= currentUser.getFirstName() + " " + currentUser.getLastName() %> 
   			<br>
   			
   			<a href=""></a>
        
         </center>

      </body>
	
   </html>