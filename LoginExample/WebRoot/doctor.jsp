<%@page import="org.apache.catalina.Session"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <%@ page import = "ExamplePackage.UserBean" %>
    <title>My JSP 'doctor.jsp' starting page</title>
    
	   <link rel="stylesheet" href="Design.css"> 
   
  </head>
  
  <body align="center" bgcolor="#E9967A">
    <h1>Welcome Doctor</h1>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "log";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Connection connection2=null;
Statement statement = null;
ResultSet resultSet = null;
Statement statement1 = null;
ResultSet resultpat = null;
%>
<h2 align="center"><font><strong>Today's Patients</strong></font></h2>


<table align="center" cellpadding="5" cellspacing="5" border="1">

 

<tr bgcolor="#A52A2A">
<td><b>Id</b></td>
<td><b>username</b></td>
<td><b>Age</b></td>



</tr>
<%
try{ 
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/log","root","");
statement=connection.createStatement();
statement1=connection.createStatement();
int Id = Integer.parseInt((session.getAttribute("Id").toString()));
String sql ="SELECT * FROM users INNER JOIN doctor ON users.id = doctor.patid WHERE usertype=3 AND  docid = "+Id; // selecting patients (user id = 3) where user id exists in doctor table of id is of current login doctor
String pat ="SELECT * FROM patient";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){

%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("FirstName") %></td>
<td><%=resultSet.getString("LastName") %></td>
</tr>


<% 
}
%>
</table> 
 <br>
<form  action="servlet/addPat" method="post" style = "text-align: center">
<select name="patList"style="width:100px;">
<%
resultpat = statement1.executeQuery(pat);
System.out.println(resultpat);
 
while(resultpat.next())
{

%>
 <option  value = <%=resultpat.getString("patid") %>><%=resultpat.getString("name") %></option>
 <% 
}
 %>
</select>

<br>

<input type = "text" name="docid" value="<%=Id %>" style="visibility: hidden;">
<input type = "text"  name="dep" value="OPD" style="visibility: hidden;" >
<p><input type = "submit" value="Add new patient"></p>
</form>




<%


} catch (Exception e) {
e.printStackTrace();
}

%>



  </body>
</html>
