<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Airline Management System</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
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
    </ul>
  </div>
</nav>
<br>
<br>
	<div class = "container">
		<div class = "row">
			<div class ="col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
				<h1 class = "text-center"> Fill Ticket Details </h1>
				<div class = "card-body">
					<form method="post" action="/ticketregister" class="register-form"
							id="register-form">
						<div class ="form-group">
							<label> Full Name </label>
							<input
							type = "text"
							name = "pass_name"
							class = "form-control"
							placeholder="Enter First Name" 
							/>
						</div>
						
						<div class ="form-group">
						<label for="flights">Choose Origin flight:</label>

							<select name="originlocation" id="flights" th:field = "*{lastName}"
							class = "form-control">
							  <option value="Panta">Panta</option>
							  <option value="Luckhnow">Luckhnow</option>
							  <option value="Delhi">Delhi</option>
							  <option value="Mumbai">Mumbai</option>
							</select>
							
						</div>
						
						
						
						<div class ="form-group">
						<label for="flights">Choose destination flight:</label>

							<select name="destinationlocation" id="flights" th:field = "*{email}"
							class = "form-control">
							  <option value="Panta">Panta</option>
							  <option value="Luckhnow">Luckhnow</option>
							  <option value="Delhi">Delhi</option>
							  <option value="Mumbai">Mumbai</option>
							</select>
							
						</div>
						
						<div class ="form-group">
						<label for="passengernumber">No. of Luggage :</label>

							<select name="passengers" id="passengernumber" th:field = "*{lastName}"
							class = "form-control">
							  <option value="one">1</option>
							  <option value="two">2</option>
							  <option value="three">3</option>
							  <option value="four">4</option>
							  <option value="five">5</option>
							</select>
						
						</div>
						
						<div class ="form-group">
							<label> Fare </label>
							<input
							type = "text"
							name = "amountFare"
							th:field = "*{lastName}"
							class = "form-control"
							placeholder="Enter Last Name" 
							/>
						</div>
						
						
						
						
						<div class = "box-footer">
						 <button type="submit" class = "btn btn-primary">
								Submit
							</button>
							
						</div>
						
					</form>
				
				</div>
			</div>
		</div>
	</div>
		<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>

</body>
</html>