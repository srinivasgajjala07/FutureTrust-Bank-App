<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Balance Inquiry - Unsuccessful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
        .container {
            text-align: center;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 400px;
        }
        h1 {
            color: #dc3545; /* Red color for unsuccessful */
            margin-bottom: 20px;
        }
        p {
            font-size: 16px;
            color: #333;
        }
        .btn {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            color: #ffffff;
            background-color: #007bff;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Transaction Unsuccessful</h1>
        <p>
            <%
                String msg = (String) request.getAttribute("msg");
                if (msg != null) {
                    out.print(msg);
                } else {
                    out.print("We are unable to retrieve your balance at this time. Please try again later.");
                }
            %>
        </p>
        <a href="home.html" class="btn">Go Back to Home</a>
    </div>
</body>
</html>
