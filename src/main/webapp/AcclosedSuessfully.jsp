<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Closed - Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            text-align: center;
            padding: 50px;
        }
        .container {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            background-color: #e0f7fa;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        h1 {
            color: #00796b;
        }
        p {
            font-size: 1.2em;
            color: #333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Account Closed Successfully</h1>
        <p>${msg}</p>
        <p><strong>Account Holder Name:</strong> ${ub.name}</p>
        <p><strong>Account Number:</strong> ${ub.accno}</p>
        <p>Thank you for using APANA Bank. We hope to serve you again in the future.</p>
        <a href="home.html">Return to Home</a>
    </div>
</body>
</html>
