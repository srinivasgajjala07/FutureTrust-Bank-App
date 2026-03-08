<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.bank.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Withdrawal Successful</title>

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
max-width:700px;
width:100%;
background:white;
padding:30px;
border-radius:10px;
box-shadow:0 10px 25px rgba(0,0,0,0.15);
text-align:center;
}

/* Title */
.header-box{
font-size:26px;
color:#28a745;
margin-bottom:15px;
}

/* Message */
.message{
font-size:16px;
margin-bottom:20px;
}

/* Info Card */
.info-card{
background:#f8f9fa;
padding:20px;
border-radius:8px;
border:1px solid #ddd;
margin-top:15px;
}

.info-card p{
margin:8px 0;
font-size:15px;
}

.info-card span{
font-weight:bold;
}

/* Button */
.button{
display:inline-block;
margin-top:20px;
padding:12px 25px;
background:#ff6347;
color:white;
text-decoration:none;
border-radius:6px;
}

.button:hover{
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

<div class="header-box">
Withdrawal Successful
</div>

<%
UserBean ub = (UserBean) request.getAttribute("ubean");
String msg = (String) request.getAttribute("msg");
%>

<div class="message">
Your withdrawal was processed successfully. Below are the details:
</div>

<div class="info-card">

<p><span>Account Holder:</span> <%= ub.getName() %></p>

<p><span>Account Number:</span> <%= ub.getAccno() %></p>

<p><span>Amount Withdrawn:</span> <%= ub.getDeposit() %> INR</p>

<p><span>Status:</span> <%= msg %></p>

</div>

<a href="home.html" class="button">Go to Home</a>

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