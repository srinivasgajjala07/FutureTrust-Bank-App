<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Creation</title>
<style>
    /* Styling the body */
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        color: #333;
    }

    /* Container styling */
    .container {
        width: 100%;
        max-width: 600px;
        background-color: #fff;
        padding: 20px;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
    }

    /* Error message styling */
    .error-message {
        color: #d9534f;
        background-color: #f8d7da;
        padding: 10px;
        border-radius: 4px;
        margin-bottom: 15px;
        text-align: center;
        font-size: 16px;
    }
</style>
</head>
<body>

<div class="container">
    <% String msg = (String) request.getAttribute("err"); %>
    <% if (msg != null) { %>
        <div class="error-message"><%= msg %></div>
    <% } %>

    <%@ include file="withdraw.html" %>
</div>
</body>
</html>
