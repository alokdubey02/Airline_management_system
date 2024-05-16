package com.example.java;

import java.io.IOException;
import java.io.PrintWriter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.java.jpaconn.AccountDetail;
import com.example.java.jpaconn.signup;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@Controller
public class controller {
	@Autowired
	signup signup;
	RequestDispatcher dispacher=null;
@RequestMapping("/home")
public String home() {
	System.out.println("In Home ");
	return "login.jsp";
}




//@RequestMapping("/register")
//public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	
//String uname= request.getParameter("name");
//String email= request.getParameter("email");
//String pass= request.getParameter("pass");
//String repass= request.getParameter("re_pass");
//String contact= request.getParameter("contact");
//PrintWriter out=response.getWriter();
//signup.save(new AccountDetail(uname,email,pass,contact));
//dispacher=request.getRequestDispatcher("registration.jsp");
//request.setAttribute("status", "success");
//dispacher.forward(request, response);
////out.print(uname+"<h1> hello</h1>"+"</br>"+email+"</br>"+pass+"</br>"+repass+"</br>"+contact);
//
//}
}
