package com.example.java;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/cancelTicket")
public class CancelTicketServlet extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    String passName = request.getParameter("pass_Name");

    
    try {
      
      Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");

    
      PreparedStatement statement = connection.prepareStatement("DELETE FROM passenger_details WHERE pass_Name = ?");
      statement.setString(1, passName);

      
      int rowsAffected = statement.executeUpdate();

      
      statement.close();
      connection.close();

      
      response.getWriter().println("Ticket canceled successfully!");
    } catch (SQLException e) {
      
      e.printStackTrace();
      response.getWriter().println("An error occurred while canceling the ticket.");
      response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
    }
  }
}
