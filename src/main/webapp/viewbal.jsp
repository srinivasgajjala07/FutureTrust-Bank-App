<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="com.bank.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Account Details - FutureTrust Bank</title>

<style>

/* Reset */

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial,sans-serif;
}

/* Body */

body{
background:#f3f4f6;
display:flex;
flex-direction:column;
min-height:100vh;
}

/* Header */

header{
background:#003366;
color:white;
padding:15px 20px;
text-align:center;
}

.logo{
font-size:1.8rem;
font-weight:bold;
color:#ff6347;
}

/* Main */

.main{
flex:1;
display:flex;
justify-content:center;
align-items:center;
}

/* Container */

.container{
background:white;
border-radius:10px;
box-shadow:0 10px 25px rgba(0,0,0,0.15);
width:100%;
max-width:450px;
padding:30px;
text-align:center;
}

/* Title */

h1{
color:#003366;
margin-bottom:20px;
}

/* Details */

.details{
text-align:left;
margin-bottom:20px;
}

.details p{
font-size:16px;
margin:8px 0;
}

.details strong{
color:#003366;
}

/* Status */

.status{
font-weight:bold;
color:#28a745;
margin-top:10px;
}

/* Button */

.btn{
display:inline-block;
margin-top:20px;
padding:12px 25px;
background:#ff6347;
color:white;
text-decoration:none;
border-radius:6px;
font-weight:bold;
}

.btn:hover{
background:#e55347;
}

/* Footer */

footer{
background:#003366;
color:white;
text-align:center;
padding:10px;
}

footer a{
color:#ff6347;
text-decoration:none;
}

</style>

</head>

<body>

<!-- HEADER -->

<header>
<div class="logo">FutureTrust Bank</div>
</header>


<!-- MAIN -->

<div class="main">

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

</div>


<!-- FOOTER -->

<footer>

<p>© 2026 FutureTrust Bank. All Rights Reserved.</p>

<p>
<a href="#">Privacy Policy</a> |
<a href="#">Terms of Service</a>
</p>

</footer>

</body>
</html>