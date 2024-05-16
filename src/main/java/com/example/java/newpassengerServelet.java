package com.example.java;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/addPassenger")
public class newpassengerServelet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
//		String uid= request.getParameter("username");
//		String pass= request.getParameter("password");
//		
//		
//		PrintWriter out = response.getWriter();
//		
//		out.print(uid);
//		out.print(pass);
		
		RequestDispatcher rd;
		rd=request.getRequestDispatcher("./airline.jsp");
		rd.forward(request, response);
	}

}

