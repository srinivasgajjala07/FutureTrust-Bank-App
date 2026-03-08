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

/* Styling the body */

body{
display:flex;
flex-direction:column;
min-height:100vh;
background-color:#f4f4f9;
color:#333;
}

/* Main container center */

.main{
flex:1;
display:flex;
justify-content:center;
align-items:center;
}

/* Card style for the content box */

.card{
width:450px;
background:#fff;
border-radius:8px;
box-shadow:0 4px 8px rgba(0,0,0,0.1);
padding:20px 30px;
text-align:center;
}

/* Header styling */

.card h2{
color:#007bff;
font-size:24px;
margin-bottom:15px;
}

/* Message styling */

.card p{
font-size:18px;
margin-bottom:10px;
color:#555;
}

/* Error message */

.error{
color:#d9534f;
}

/* Button */

.button{
display:inline-block;
margin-top:15px;
padding:10px 20px;
font-size:16px;
color:#fff;
background-color:#007bff;
border-radius:5px;
text-decoration:none;
}

.button:hover{
background-color:#0056b3;
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

<div class="card">

<%
UserBean ub = (UserBean) request.getAttribute("ubean");
String msg = (String) request.getAttribute("msg");
%>

<% if (ub != null) { %>

<h2>Amount Deposit Successfully!</h2>

<p><strong><%= ub.getDeposit() %></strong>! <%= msg %></p>

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