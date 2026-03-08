<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="com.bank.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Creation Success</title>

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
background-color:#003366;
color:white;
padding:15px 20px;
}

.nav-bar{
display:flex;
justify-content:space-between;
align-items:center;
max-width:1100px;
margin:auto;
}

.logo{
font-size:1.8rem;
font-weight:bold;
color:#ff6347;
text-decoration:none;
}

.nav-links{
display:flex;
gap:15px;
}

.nav-links a{
color:white;
text-decoration:none;
padding:8px 15px;
border-radius:5px;
}

.nav-links a:hover{
background:#ff6347;
color:#003366;
}

/* Main container */

.main{
flex:1;
display:flex;
justify-content:center;
align-items:center;
}

/* Card */

.card{
width:450px;
background:white;
border-radius:10px;
box-shadow:0 10px 25px rgba(0,0,0,0.15);
padding:30px;
text-align:center;
}

.card h2{
color:#28a745;
margin-bottom:15px;
}

.card p{
font-size:17px;
margin-bottom:10px;
}

/* Button */

.button{
display:inline-block;
margin-top:15px;
padding:12px 22px;
font-size:16px;
color:white;
background:#ff6347;
border-radius:6px;
text-decoration:none;
}

.button:hover{
background:#e55347;
}

/* Error */

.error{
color:#d9534f;
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
<div class="nav-bar">

<a class="logo">FutureTrust Bank</a>

<div class="nav-links">
<a href="home.html">Home</a>
<a href="deposit.html">Deposit</a>
<a href="withdraw.html">Withdraw</a>
<a href="Transfer.html">Transfer</a>
</div>

</div>
</header>


<!-- MAIN -->

<div class="main">

<div class="card">

<%
UserBean ub = (UserBean) request.getAttribute("ubean");
String msg = (String) request.getAttribute("msg");
%>

<% if (ub != null) { %>

<h2>Account Created Successfully!</h2>

<p>Congratulations <strong><%= ub.getName() %></strong>!</p>

<p><%= msg %></p>

<p>Your Account Number is:</p>

<p><strong><%= ub.getAccno() %></strong></p>

<a href="home.html" class="button">Go to Home</a>

<% } else { %>

<p class="error">Error: User information not found.</p>

<a href="newaccount.html" class="button">Try Again</a>

<% } %>

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