<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<HTML>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<header>
<div class ="headcontainer">

<nav class ="links">
<a href="index.jsp">Home</a>
<a href="foodwall.jsp">Food Wall</a>
<a href="info.jsp">Info</a>
</nav>

<nav class ="login">
<a href="login.jsp">Login</a>
<a href="ContactServlet">Contact Us</a>
</nav>
</div>
</header><br>



<title>Contact Us</title>

<link rel="stylesheet" type="text/css" href="contactus.css">

</head>


<BODY>

<div class="container center">
<h1>Contact Us</h1>
<form action="FormServlet" method="post">
    <div class="conta">
   	<label for="name">Your Full Name:</label>
   	<br>
    <input type="text" name="name" id="name" value maxlength="50">
    <br>
    </div>
    
  <div class="conta">
   	<label for="name">Email Address:</label>
   	<br>
    <input type="text" name="email" id="email" value maxlength="50">
    <br>
    </div>

 <div class="conta">
    <label for="name">Subject:</label>
    <br>
    <input type="text" name="subject" id="subject" value maxlength="50">
    <br>
    </div>

  
    <div class="conta">
   	<label for="name">Message:</label>
   	<br>
     <textarea cols="50" rows="10" name="message" id="message"></textarea>
    <br>
    </div>
   
    <input type="Submit" value="Send" class="button rounded">
</form>
</div>
 

</BODY>
</HTML>