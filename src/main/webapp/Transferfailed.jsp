<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transfer Failed</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f8d7da;
            color: #721c24;
            padding: 20px;
            text-align: center;
        }

        /* Container */
        .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }

        /* Heading */
        h1 {
            font-size: 2.5em;
            color: #721c24;
            margin-bottom: 20px;
        }

        /* Message */
        .message {
            font-size: 1.2em;
            margin-bottom: 30px;
            color: #721c24;
        }

        /* Retry Button */
        .retry-btn {
            background-color: #f44336;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            font-size: 1.1em;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .retry-btn:hover {
            background-color: #d32f2f;
        }

        /* Footer Styling */
        footer {
            margin-top: 40px;
            color: #333;
            font-size: 0.9em;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Transfer Failed</h1>
        <p class="message">We encountered an issue processing your transaction. Please try again later.</p>
        <a href="home.html">
            <button class="retry-btn">Go Back to Home</button>
        </a>
    </div>

    <footer>
        <p>&copy; 2024 APANA Bank. All rights reserved.</p>
    </footer>

</body>
</html>
