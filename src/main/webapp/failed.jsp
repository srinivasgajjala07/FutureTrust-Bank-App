<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Creation</title>

<style>

/* Reset */

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial,sans-serif;
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

/* Body */

body{
background-color:#f9f9f9;
display:flex;
flex-direction:column;
min-height:100vh;
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
width:100%;
max-width:600px;
background-color:#fff;
padding:20px;
box-shadow:0px 4px 10px rgba(0,0,0,0.1);
border-radius:8px;
}

/* Error message */

.error-message{
color:#d9534f;
background-color:#f8d7da;
padding:10px;
border-radius:4px;
margin-bottom:15px;
text-align:center;
font-size:16px;
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

<%
String msg = (String) request.getAttribute("err");
%>

<% if (msg != null) { %>
<div class="error-message"><%= msg %></div>
<% } %>

<%@ include file="deposit.html" %>

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