<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Closure - Failed</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff8e1;
            text-align: center;
            padding: 50px;
        }
        .container {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            background-color: #ffe0b2;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        h1 {
            color: #d32f2f;
        }
        p {
            font-size: 1.2em;
            color: #333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Account Closure Failed</h1>
        <p>${msg}</p>
        <a href="home.html">Return to Home</a>
    </div>
</body>
</html>
