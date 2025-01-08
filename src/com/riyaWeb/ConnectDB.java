package com.riyaWeb;

import java.sql.Connection;
import java.sql.DriverManager;


public class ConnectDB 
{
	static Connection con = null;
	public static Connection connect()
	{
		if(con==null) 
		{
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/web_reminder","root","");
				
			}
			catch (Exception e) 
			{
				System.out.println("Something went wrong..!!");
				e.printStackTrace();		
			}
		}
		return con;
	}
}

