<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Transfer Failed</title>

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

/* Main section */

.main{
flex:1;
display:flex;
justify-content:center;
align-items:center;
}

/* Container */

.container{
max-width:600px;
background:white;
padding:30px;
border-radius:10px;
box-shadow:0 10px 25px rgba(0,0,0,0.15);
text-align:center;
}

/* Heading */

h1{
font-size:2em;
color:#d32f2f;
margin-bottom:15px;
}

/* Message */

.message{
font-size:16px;
margin-bottom:20px;
}

/* Button */

.retry-btn{
background:#ff6347;
color:white;
padding:12px 25px;
border:none;
border-radius:6px;
font-size:15px;
cursor:pointer;
}

.retry-btn:hover{
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


<!-- MAIN CONTENT -->

<div class="main">

<div class="container">

<h1>Transfer Failed</h1>

<p class="message">
We encountered an issue processing your transaction. Please try again later.
</p>

<a href="home.html">
<button class="retry-btn">Go Back to Home</button>
</a>

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