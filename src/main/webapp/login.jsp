<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Crypto login page</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<style>
body {
    background-image: url(images/signin-image.jpg);
    background-size: cover;
    background-position: center;
    font-family: Arial, sans-serif;
}

.main {
    
}

.sign-in {
    
}

.signin-image img {
    width: 100%;
    max-width: 400px;
    height: auto;
}

.form-title {
    text-align: center;
    font-size: 28px;
    color: #333;
    margin-bottom: 30px;
}

.form-group {
    position: relative;
    margin-bottom: 20px;
}

.form-group label {
    position: absolute;
    top: 50%;
    left: 16px;
    transform: translateY(-50%);
    font-size: 18px;
    color: #999;
}

.form-group input {
    width: 100%;
    padding: 12px 32px;
    font-size: 16px;
    border-radius: 30px;
    border: 1px solid #ccc;
}

.form-button {
    text-align: center;
}

.form-submit {
    background-color: #4CAF50;
    color: #fff;
    padding: 12px 20px;
    font-size: 18px;
    border: none;
    border-radius: 30px;
    cursor: pointer;
}

.signup-image-link {
    display: block;
    text-align: center;
    margin-top: 20px;
    color: #666;
    font-size: 16px;
    text-decoration: none;
}

/* Add more custom styles as needed */

</style>
	<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">

	<div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
		
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/signin-image.jpg" alt="sing up image">						
						</figure>
						<h2 class="form-title"></h2>
						
					</div>

					<div class="signin-form">
						<h2 class="form-title">Vistara Airline</h2>
						<form method="post" action="login" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="username" id="username"
									placeholder=" User id" />
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder=" Password" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Remember
									me</label>
							</div>
							<a href="registration.jsp" class="signup-image-link">Create an
							account</a>
							<div class="form-group form-button">
								
									<input type="submit" name="signin" id="signin"
										class="form-submit" value="Log in" />
						
							</div>

						</form>
						
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script type="text/javascript">
	var status=document.getElementById("status").value;
	if(status=="failed"){
		console.log("wrong id or pass")
		swal.fire("Sorry"," Wrong Username Or Password","error");
	}
	</script>
	
</body>

</html>