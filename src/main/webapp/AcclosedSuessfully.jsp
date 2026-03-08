<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Account Closed - Success</title>

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

/* Card */

.container{
max-width:550px;
background:white;
padding:30px;
border-radius:10px;
box-shadow:0 10px 25px rgba(0,0,0,0.15);
text-align:center;
}

h1{
color:#28a745;
margin-bottom:15px;
}

p{
font-size:16px;
margin-bottom:10px;
}

/* Home Button */

.home-btn{
display:inline-block;
margin-top:15px;
padding:12px 25px;
background:#ff6347;
color:white;
text-decoration:none;
border-radius:6px;
font-weight:bold;
}

.home-btn:hover{
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

<h1>Account Closed Successfully</h1>

<p>${msg}</p>

<p><strong>Account Holder Name:</strong> ${ub.name}</p>

<p><strong>Account Number:</strong> ${ub.accno}</p>

<p>Thank you for using FutureTrust Bank.</p>

<a href="home.html" class="home-btn">Return to Home</a>

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