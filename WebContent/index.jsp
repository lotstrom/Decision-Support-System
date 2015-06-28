<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<HTML>
<head>

<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
        <script>
        $(function() {
            $('#search-id').on("submit", function() {
                $('#animated-gif').toggle();
            });
        });
    </script>

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
</header>
<br>

<title>Home</title>

<link rel="stylesheet" type="text/css" href="global.css">
</head>
<BODY>

<embed src="song/home.mp3" autostart="true" loop="true" hidden="true" height="0" width="0">

<div class="container center">

<script type="text/javascript">
function clearDefault(el) {
	  if (el.defaultValue==el.value) el.value = ""
	}

</script>

<img src="img/time2eatlogo.png"><br>
<h1>TIME2EAT</h1>
<br>
<form action="page2.jsp" method="get" id="search-id">
<input type ="text" class="shadow" name = "search" id="search" size="70" onfocus="clearDefault(this)" value="What do you want to eat?" style="color: #666;"/><br>
<br>


<input type="Submit" value="Search"  class="button rounded"> 
<br><br>
<img src="img/loading.gif" id="animated-gif" style="display:none;"/>
</form>
<br>
</div>



<div class="center">
<a href="http://www.facebook.com/time2eatfanpage"><img src="img/Facebook.png"></a>
<a href="https://twitter.com/Time2EatFanPage" target="frame"><img src="img/Twitter.png"></a>
</div>
<p class="less">We<img src="img/heart.png">Food</p>

<footer>

<p>

Time2Eat is a Decision Support System
<br>

made to help the students and workers at 
<br>

Lindholmen to find something they want to eat.
<br>
<span class = "copy">2012 Group Jupiter.</span>
</p>


</footer>


</BODY>
</HTML>