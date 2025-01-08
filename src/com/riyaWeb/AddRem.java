package com.riyaWeb;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class AddRem
 */
public class AddRem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddRem() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String rtitle = request.getParameter("rtitle");
		String rdesc = request.getParameter("rdesc");
	///////	
		String uemail = User.getUemail();
/////////////
		
		try
		{
			Connection con = ConnectDB.connect();
			PreparedStatement ps1 = con.prepareStatement("insert into rem_tbl values(?,?,?,?)");
			ps1.setInt(1, 0);
			ps1.setString(2, rtitle);
			ps1.setString(3, rdesc);
			ps1.setString(4, uemail);
			int i = ps1.executeUpdate();
			if(i==1)
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
    }

}
