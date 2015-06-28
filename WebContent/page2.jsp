<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<html>
<header>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

<meta http-equiv="content-type" content="text/html; charset=UTF-8" /> 
  <script src="http://maps.google.com/maps/api/js?sensor=false" 
          type="text/javascript"></script>


</header><br>
<title>Result</title>

<link rel="stylesheet" type="text/css" href="page2.css">
</head>

<embed src="song/home.mp3" autostart="true" loop="true" hidden="true" height="0" width="0">

<BODY>

<script type="text/javascript">
function clearDefault(el) {
	  if (el.defaultValue==el.value) el.value = ""
	}
</script>

<div class="container center">

<h1>Result</h1>

<form action="page2.jsp" method="get" id="search-id" style="text-align: center;">
<input type ="text" class="shadow" name = "search" id="search" size="70" onfocus="clearDefault(this)" value="In the mood for something else?" style="color: #666;"/> <input type="Submit" value="Search"  class="button rounded"> 
<br><br>
<img src="img/loading.gif" id="animated-gif" style="display:none;"/>
</form>


<%
    String value=request.getParameter("search");
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection("jdbc:mysql://instance32100.db.xeround.com:13217/mydb", "jupiter", "jupiter05");
    Statement st=conn.createStatement();
    ResultSet rs = st.executeQuery("SELECT menu.name, menu.info, menu.price, restaurants.name from menu,"
    		+ " restaurants where restaurants_restaurantID=RestaurantID AND (menu.name like '%"
    		+ value
    		+ "%' "
    		+ "or menu.info like '%"
    		+ value
    		+ "%' or menu.category like '%"
    		+ value
    		+ "%' "
    		+ "or menu.kitchen like '%"
    		+ value
    		+ "%' or quick_choose like '%" + value + "%')");
%>
    <table>
    <tr class="head">
      <td>Name:</td>
      <td>Info:</td>
      <td>Price:</td>
      <td>Restaurant:</td>
      <td>Location:</td>
     
    </tr>    
  <%
  
   while (rs.next()){ 
  %>
    <tr class="content">
      <td class="name"><%=rs.getString("name")%></td>
      <td class="info"><%=rs.getString("info")%></td>
      <td class="price"><%=rs.getInt("price")%></td>
      <td class="restaurant"><%=rs.getString("restaurants.name")%></td>
      <td class="location"><a href="restaurant.jsp?restoid=<%=rs.getString("restaurants.name")%>">Show</a>
      
    </tr>
  <%
   }
  %>
  </table>

<%conn.close();%>

</div>



<div class="center">
<a href="http://www.facebook.com/time2eatfanpage"><img src="img/Facebook.png"></a>
<a href="https://twitter.com/Time2EatFanPage"><img src="img/Twitter.png"></a>
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