
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
     <%
     try
     {
       String rid =request.getParameter("rid");
       Connection con=ConnectDB.connect();
       PreparedStatement ps1=con.prepareStatement("delete from rem_tbl where rid=?");
       ps1.setString(1,rid);
       int i =ps1.executeUpdate();
       if(i>0)
       {
    	   response.sendRedirect("success.html");
       }
       else
       {
    	   response.sendRedirect("failed.html");
  
       }
       
     }
     catch(Exception e)
     {
    	 e.printStackTrace();
     }

     %>
  
</body>
</html>