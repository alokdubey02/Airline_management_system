<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Payment Confirmation</title>
    <style>
        /* Styles for the popup */
        .popup {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
        }
        
        .popup h2 {
            margin-top: 0;
        }
        
        .popup button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
<form method="post" action="airline.jsp">
    <div class="popup">
        <h2>Payment Done!</h2>
        <p>Your payment has been successfully processed.</p>
        <input type="submit" value="Back to main page">
       
    </div>
</form>
   
</body>
</html>
