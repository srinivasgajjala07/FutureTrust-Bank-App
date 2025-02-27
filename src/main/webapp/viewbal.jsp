<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.bank.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Details - ABC Bank</title>
    <style>
        /* General Body Styling */
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4f7fc;
            color: #555;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        /* Container for details */
        .container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 450px;
            padding: 30px;
            text-align: center;
        }
        /* Header */
        h1 {
            color: #00509e;
            font-size: 28px;
            margin-bottom: 20px;
            font-weight: 600;
        }
        /* Account Info */
        .details {
            text-align: left;
            margin-bottom: 20px;
        }
        .details p {
            font-size: 16px;
            color: #333;
            margin: 10px 0;
        }
        .details strong {
            color: #00509e;
        }
        /* Status Message */
        .status {
            font-weight: bold;
            color: #28a745; /* Green for success */
            font-size: 16px;
            margin-top: 20px;
        }
        /* Back Button */
        .btn {
            display: inline-block;
            margin-top: 30px;
            padding: 12px 30px;
            background-color: #00509e;
            color: white;
            text-decoration: none;
            border-radius: 50px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #003366;
        }
        .btn:active {
            background-color: #001d3d;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Account Details</h1>
        <%  
            String msg = (String) request.getAttribute("msg"); 
            UserBean ub = (UserBean) request.getAttribute("ub");  
        %>
        <div class="details">
            <p><strong>Name:</strong> <%= ub.getName() %></p>
            <p><strong>Account Number:</strong> <%= ub.getAccno() %></p>
            <p><strong>Balance:</strong> ₹<%= ub.getDeposit() %></p>
        </div>
        <p class="status"><%= msg %></p>
        <a href="home.html" class="btn">Back to Home</a>
    </div>
</body>
</html>
