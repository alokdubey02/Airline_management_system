package com.example.java;

import java.io.IOException;
import java.io.PrintWriter;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.java.jpaconn.AccountDetail;
import com.example.java.jpaconn.passengerDetails;
import com.example.java.jpaconn.passengerTicketInterface;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ticketregister")
public class passengerTicketServelet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Autowired
	passengerTicketInterface passengerTicketObj;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher ticketdispacher;
		String pname= request.getParameter("pass_name");
		String porigin= request.getParameter("originlocation");
		String pdestination= request.getParameter("destinationlocation");
		String pfare= request.getParameter("amountFare");
		String pPassengers= request.getParameter("passengers");
//		PrintWriter out=response.getWriter();
//		signup.save(new AccountDetail(uname,email,pass,contact));
		passengerTicketObj.save(new passengerDetails(pname,porigin,pdestination,pfare,pPassengers));
		ticketdispacher=request.getRequestDispatcher("airline.jsp");
		request.setAttribute("status", "success");
		ticketdispacher.forward(request, response);

	}
}
