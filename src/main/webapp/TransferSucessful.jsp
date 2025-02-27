<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.bank.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transaction Successful</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f6f9;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            width: 100%;
            max-width: 800px;
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        /* Header */
        .header {
            background-color: #007bff;
            padding: 20px;
            color: white;
            font-size: 26px;
            font-weight: bold;
            text-align: center;
            border-radius: 8px 8px 0 0;
        }

        /* Message Section */
        .message {
            font-size: 18px;
            color: #555;
            margin-top: 20px;
            text-align: center;
        }

        /* Information Card */
        .info-card {
            background-color: #f8f9fa;
            padding: 20px;
            margin-top: 30px;
            border-radius: 8px;
            border: 1px solid #ddd;
        }

        .info-card p {
            font-size: 16px;
            margin: 10px 0;
        }

        .info-card span {
            font-weight: bold;
        }

        /* Button Styling */
        .button {
            display: inline-block;
            background-color: #007bff;
            color: white;
            padding: 12px 25px;
            font-size: 16px;
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #0056b3;
        }

    </style>
</head>
<body>

    <div class="container">
        <div class="header">
            Transaction Successful
        </div>

        <% 
            UserBean ub = (UserBean) request.getAttribute("ub");
            String msg = (String) request.getAttribute("msg");
            String raccno = (String) request.getAttribute("raccno"); // Get receiver account number
        %>

        <div class="message">
            <p>Your Transfer was processed successfully. Below are the details:</p>
        </div>

        <div class="info-card">
            <p><span>Account Holder:</span> <%= ub.getName() %></p>
            <p><span>Account Number:</span> <%= ub.getAccno() %></p>
            <p><span>Receiver Account Number:</span> <%= raccno %></p> <!-- Display receiver account number -->
            <p><span>Amount Withdrawn:</span> <%= ub.getDeposit() %> USD</p>
            <p><span>Status:</span> <%= msg %></p>
        </div>

        <a href="home.html" class="button">Go to Home</a>
    </div>

</body>
</html>
