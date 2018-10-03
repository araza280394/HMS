    <%@page import="org.apache.catalina.Session"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<% String ss=  session.getAttribute("Id").toString(); %>
<!DOCTYPE html>
<html>
  <head>
    <title>Appointment.html</title>

   <link rel="stylesheet" href="Design.css"> 	
    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="this is my page">
    <meta name="content-type" content="text/html; charset=ISO-8859-1">
    
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->

  </head>
  <h1 align="center">Make Appointment</h1>
  <body  bgcolor="#E9967A">
    <form align="center" action="servlet/PatReg" method="post">
    
    <table align="center">
    <tr> <td> Name:  </td> <td> <input type="text" name="name" size="20"> </td> </tr> 
    <tr><td></td><td></td></tr>
    <tr><td></td><td></td></tr>
    <tr> <td> Age:	 </td><td> <input type="text" name="age" size="20"> </td> </tr>
    <tr><td></td><td></td></tr>
    <tr><td></td><td></td></tr>
    <tr> <td> Address: </td><td><input type="text" name="address" size="20"> <tr> <td>
    <tr><td></td><td></td></tr>
    <tr><td></td><td></td></tr>
    <tr> <td> Disease: </td><td><input type="text" name="disease" size="20">  </td> </tr>
    <tr><td></td><td></td></tr>
    <tr><td></td><td></td></tr>
    <tr> <td> Patient id: </td><td><input type = "text" name ="id"size="20">  </td></tr>
    <tr><td></td><td></td></tr>
    <tr><td></td><td></td></tr>
 
    <tr> <td> Department: </td> <td> <select width="160"name="dep"> 
								    <option value="1">OPD</option>
								    <option value="2">ENT</option>
								    <option value="3">Cardiology</option> 
  									 </select> </td></tr> 
  	<tr><td></td><td></td></tr>
  	<tr><td></td><td></td></tr>
  	<tr><td></td><td></td></tr>
  	<tr><td></td><td></td></tr>
    
    <tr> <td></td> <td align="center"> <input type="submit" value="Submit"> </td> </tr>
    <tr> <td></td> <td align="center"><input type="reset"></td> </tr>
    </table>
   </form>
   
   <a  href="LoginPage.jsp"><--Home</a>
  </body>
</html>
