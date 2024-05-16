package com.example.java;

import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.java.jpaconn.passengerTicketInterface;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/farecalculation")
public class fareServelet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	@Autowired
	passengerTicketInterface passengerTicketObj;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher ticketFare;
//		String fare=(String) request.getAttribute("passengernumber");
		System.out.println(request.getAttribute("originlocation")+" "+ request.getAttribute("destinationlocation"));
//		PrintWriter out=response.getWriter();
//		out.print(fare);
//		System.out.println(fare);
		ticketFare=request.getRequestDispatcher("airline.jsp");
		request.setAttribute("status", "success");
		ticketFare.forward(request, response);
		
		
		
	}
}