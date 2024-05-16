<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Payment Gateway</title>
    <!-- Include any necessary CSS or JavaScript libraries here -->
    <link rel="stylesheet" href="styles.css">
    <script src="script.js"></script>
    <style>
    .container {
        max-width: 400px;
        margin: 0 auto;
        padding: 20px;
        background-color: #f5f5f5;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
    }

    .form-group {
        margin-bottom: 15px;
    }

    label {
        display: block;
        font-weight: bold;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        background-color: #4CAF50;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
    <%@ page import="com.example.java.jpaconn.passengerDetails" %>
<%@ page import="java.util.List" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="com.example.java.jpaconn.passengerTicketInterface" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
</head>
<body>
<%
    ApplicationContext context = WebApplicationContextUtils.getRequiredWebApplicationContext(application);
    passengerTicketInterface drinkdetail = context.getBean(passengerTicketInterface.class);
    List<passengerDetails> drink = drinkdetail.findAll();
%>

    <div class="container">
        <h2>Payment Gateway</h2>
        <form method="post" action="process_payment.jsp">
            <div class="form-group">
                <label for="cardNumber">Card Number:</label>
                <input type="number" id="cardNumber" name="cardNumber" required>
            </div>
            <div class="form-group">
                <label for="expiryDate">Expiry Date:</label>
                <input type="number" id="expiryDate" name="expiryDate" required>
            </div>
            <div class="form-group">
                <label for="cvv">CVV:</label>
                <input type="number" id="cvv" name="cvv" required>
            </div>
            <div class="form-group">
           
                <label for="amount">Amount:</label>
                
                <input type="number" id="amount" name="amount" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Make Payment">
                
            </div>
        </form>
    </div>
    
</body>
</html>
