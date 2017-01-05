package com.juice.smooth;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Loginn")
public class Loginn extends HttpServlet {
	
	static final String DB_URL = "jdbc:mysql://localhost/thedata";
	static final String USER = "root";
	static final String PASS = "pass";
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String user = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(DB_URL, USER, PASS);
			PreparedStatement pst = con.prepareStatement("Select username, password from logdata where username =? and password=?");
			
			pst.setString(1, user);
			pst.setString(2, pass);
	
			ResultSet rs = pst.executeQuery();
			if (rs.next())
			{
				HttpSession session = request.getSession();
				session.setAttribute("username", user);
				response.sendRedirect("welcome.jsp");
			}
			else{
				response.sendRedirect("loginn.jsp");
			}
		}
		catch (Exception e) {
            e.printStackTrace();
        }
	}

}
