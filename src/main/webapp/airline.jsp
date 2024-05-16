<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<%@ page import="com.example.java.jpaconn.passengerDetails" %>
<%@ page import="java.util.List" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="com.example.java.jpaconn.passengerTicketInterface" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>


<meta charset="ISO-8859-1">
<title>Airline Management System</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	
	
	<script>
  function cancelTicket(passName) {
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "/cancelTicket?pass_Name=" + encodeURIComponent(passName), true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function () {
      if (xhr.readyState === 4 && xhr.status === 200) {
        // Handle the response or perform any necessary UI updates
        alert("Ticket canceled successfully!");
        location.reload(); // Refresh the page to reflect the changes
      }
    };
    xhr.send();
  }
</script>
	
</head>
<body>
<%
    ApplicationContext context = WebApplicationContextUtils.getRequiredWebApplicationContext(application);
    passengerTicketInterface drinkdetail = context.getBean(passengerTicketInterface.class);
    List<passengerDetails> drink = drinkdetail.findAll();
%>


        


<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="#">Airline Management System</a>

  <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>

  <!-- Navbar links -->
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" th:href="@{/airline}">Airline Management</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href = "vistaraHelp.jsp">Help</a>
      </li>
    </ul>
  </div>
</nav>

	<div class ="container">
		<div class = "row">
			<h1> List of Passengers </h1>
		</div>
		<form method="post" action="/addPassenger" class="register-form"
							id="login-form">
		<div class = "row">
			<div class = "col-lg-3">
				<a href = "create_profile.jsp" class = "btn btn-primary btn-success mb-3"> Add Passengers</a>
				<a href = "login.jsp" class = "btn btn-primary btn-success mb-3"> Logout</a>
			</div>
		</div>
		</form>
		<table class = "table table-striped table-bordered">
			<thead class = "table-dark">
				<tr>
					<th> Full Name </th>
					<th> Origin </th>
					<th> Destination </th>
					<th> No. of Luggage </th>
					<th> Fare </th>
					<th> Actions </th>
				</tr>
			</thead>
			
			<tbody>
			<% for (passengerDetails d : drink) { %>
       <tr >
					<td ><%=d.getPassName()%></td>
					<td ><%=d.getOriginLocation()%></td>
					<td ><%=d.getDestinationLocation()%></td>
					<td><%=d.getPassQuantity()%></td>
					<td><%=d.getAmountFare()%></td>
				
					<td>
						<a href = "buyTicket.jsp"
						 class = "btn btn-success">Buy Ticket</a>
						 
						
						<a onclick="cancelTicket('<%=d.getPassName()%>')"
    						class="btn btn-danger">Cancel Ticket</a>

						 
					</td>
				</tr>
    <% } %>
				
			</tbody>
		
		</table>
		
	</div>

</body>
</html>