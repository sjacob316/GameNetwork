package com.juice.smooth;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TReg
 */
@WebServlet("/TReg")
public class TReg extends HttpServlet {
	
	static final String DB_URL = "jdbc:mysql://localhost/thedata";
	static final String USER = "root";
	static final String PASS = "pass";
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String n = request.getParameter("userName");
		String e = request.getParameter("userPass");
		String p = request.getParameter("userEmail");
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(DB_URL, USER, PASS);
			PreparedStatement ps = con.prepareStatement("insert into logdata values(?,?,?)");
			
			ps.setString(1, n);
			ps.setString(2, p);
			ps.setString(3, e);
			
			int i = ps.executeUpdate();
			
			if(i > 0)
				out.print("You are succesfully Registered");
				response.sendRedirect("loginn.jsp");
		}
		catch(Exception e2){
			System.out.println(e2);
		}
		out.close();
	
	}

}
