<%@page import ="com.riyaWeb.*" %>
<%@page import ="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>






<table style="width:100%">

    <center><h1>Reminder Application</h1></center>
    
    
   
    
	<table>
	  <tr>
	    <th>ID</th>
	    <th>Title</th>
	    <th>Description</th>
	    <th>Email</th>
	  </tr>
  <%
     
 
     try
     {
    	 Connection con = ConnectDB.connect();
    	 String uemail = User.getUemail();
    	 PreparedStatement ps1 =con.prepareStatement("select * from rem_tbl where uemail=?");
    	 ps1.setString(1, uemail);
    	 ResultSet rs = ps1.executeQuery();
    	 while(rs.next())
    	 {
   %>	
         <tr>
         <td><%= rs.getString(1) %></td>
         <td><%= rs.getString(2) %></td>
         <td><%= rs.getString(3) %></td>
         <td><%= rs.getString(4) %></td>
         <td><a href ="delete.jsp?rid=<%=rs.getString(1)%>">Delete</a></td>
         </tr>
     <%
    	 }
     }  
    catch(Exception e)
     {
    	e.printStackTrace();
     }
      //if end
     %>
         </table>
         </div>
         
  
</table>

</body>
</html>
