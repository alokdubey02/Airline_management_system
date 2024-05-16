package com.example.java;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.java.jpaconn.passengerTicketInterface;

import jakarta.servlet.RequestDispatcher;

@Controller
public class addPassengerController {

	@Autowired
	passengerTicketInterface passengerTicketInterfaceobj;
	RequestDispatcher dispacher=null;
@RequestMapping("/create_profile")
public String home() {
	System.out.println("In create profile ");
	return "airline.jsp";
}
}