<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Balance Inquiry - Unsuccessful</title>

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
background:white;
padding:30px;
border-radius:10px;
box-shadow:0 10px 25px rgba(0,0,0,0.15);
max-width:420px;
text-align:center;
}

h1{
color:#dc3545;
margin-bottom:15px;
}

p{
font-size:16px;
margin-bottom:15px;
}

/* Button */

.btn{
display:inline-block;
margin-top:15px;
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


<!-- MAIN CONTENT -->

<div class="main">

<div class="container">

<h1>Transaction Unsuccessful</h1>

<p>
<%
String msg = (String) request.getAttribute("msg");

if(msg != null){
out.print(msg);
}else{
out.print("We are unable to retrieve your balance at this time. Please try again later.");
}
%>
</p>

<a href="home.html" class="btn">Go Back to Home</a>

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