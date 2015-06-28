<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<head>
<header>
<div class ="headcontainer">

<nav class ="links">
<a href="index.jsp">Home</a>
<a href="foodwall.jsp">Food Wall</a>
<a href="info.jsp">Info</a>
</nav>

<nav class ="login">
<a href="login.jsp">login</a>
<a href="ContactServlet">Contact Us</a>
</nav>
</div>
</header><br>




<title>Login</title>

<link rel="stylesheet" type="text/css" href="login.css">

</head>


<BODY>

<div class="container center">
<h1>Login</h1>
<form action="Login.jsp" method="post">
	<input type="Username" name="Username" id="Username"placeholder="Username"/><br/>
	<input type="Password" name="Password" id="Password"placeholder="Password"/><br/>
	<input type="checkbox" name="remember"value="yes"checked="Checked"/>Remember me?<br/>
	<br>
	<input type="Submit" value="Login"  class="button rounded"><br>


</form>
</div>


</BODY>
</HTML>