package com.example.java;

import java.io.IOException;
import java.io.PrintWriter;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.java.jpaconn.AccountDetail;
import com.example.java.jpaconn.signup;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/register")
public class registrationServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Autowired
	signup signup;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher dispacher;
		String uname= request.getParameter("name");
		String email= request.getParameter("email");
		String pass= request.getParameter("pass");
		String repass= request.getParameter("re_pass");
		String contact= request.getParameter("contact");
		PrintWriter out=response.getWriter();
		signup.save(new AccountDetail(uname,email,pass,contact));
		dispacher=request.getRequestDispatcher("registration.jsp");
		request.setAttribute("status", "success");
		dispacher.forward(request, response);

	}

}
