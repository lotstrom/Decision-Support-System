<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- @author Ale Lotstrom 
When "show"-link is pressed on the search results displayed in page2.jsp, different information and marker location 
depending on which restaurant the meal is connected to, are displayed on this page. Each restaurant has its own if-statement 
that gets the parameter restaurant.name from the database connected to page2.jsp. -->

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


<title>Information</title>
<link rel="stylesheet" type="text/css" href="restaurant.css">
 
<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
</script>
 
 
 
</head>
<body>
<div class="container">
 
<%if (request.getParameter("restoid").contains("Slimfood")) {%>
       

<script>
 
var myCenter=new google.maps.LatLng(57.70826, 11.93784);
 
function initialize()
{
       
var position = new google.maps.LatLng(57.70826, 11.93784);
var mapProp = {
  center:myCenter,
  icon:'img/slimfood_logo.png',
  zoom:15,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };
var map=new google.maps.Map(document.getElementById("googleMap")
  ,mapProp);
 
var marker=new google.maps.Marker({
  position:position,
  animation:google.maps.Animation.BOUNCE,
  });
 
marker.setMap(map);
 
}
 
google.maps.event.addDomListener(window, 'load', initialize);
 
 
</script>
<h1 class="center"> Slimfood </h1>
 
<div style= "border: 1px solid #C9C9C9; position: relative; left: 34px; absolute; width: 531px; height: 135px; overflow: hidden;">
<img src="img/slimfood.jpg">
 
 
</div>
        <p> The idea behind Slimfood is pretty simple:
                we serve healthy, good and fresh salad and sushi        
                that appeals to the eye as much as the palate.         
                We want to keep a quality that is a bit out of
                the ordinary. The food, the hospitality,
                restaurant environment, everything must be of high
                quality. With us it is easy and varied eating.
        </p>
<div id="googleMap" style="border: 1px solid #C9C9C9; float:right; width:300px;height:300px;"></div>
<div class= "inviscontainer center">
Adress: Lindholmsallen 45 <br>
Telephone: 031-320 00 85 <br>
Website: <a href="http://www.slimfood.se" >www.slimfood.se</a><br>
<br>Opening hours: <br>
Weekdays: 10.00 - 18.00
<br>Saturday: Closed <br>
Sunday: Closed<br><br>
<img src="img/slimfood_logo.png">
 
</div>
<%
}
%>
 
<%if (request.getParameter("restoid").contains("Kapten Nemo's Pizzeria")) {%>
       
<script>
 
var myCenter=new google.maps.LatLng(57.707957,11.934296);
 
function initialize()
{
       
var position = new google.maps.LatLng(57.707957,11.934296);
var mapProp = {
  center:myCenter,
  zoom:15,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };
var map=new google.maps.Map(document.getElementById("googleMap")
  ,mapProp);
 
var marker=new google.maps.Marker({
  position:position,
  animation:google.maps.Animation.BOUNCE,
  });
 
marker.setMap(map);
 
}
 
google.maps.event.addDomListener(window, 'load', initialize);
 
 
</script>
<h1 class="center"> Kapten Nemo's </h1>
 
<div style= "border: 1px solid #C9C9C9; position: relative; float: center;  width: 600px; height: 135px; overflow: hidden;">
<img src="img/kaptennemopizaico.jpg">
 
 
</div>
        <p> Pizza, pasta, kebabs, salads, burgers and falafel we have it all, come to kapten nemo's pizzeria and enjoy all your favorite dishes in one place. Student Bonus! Show off your student card to get a free 33 cl drink with the purchase of any dish.
        </p>
<div id="googleMap" style="border: 1px solid #C9C9C9; float:right; width:300px;height:300px;"></div>
<div class= "inviscontainer center">
Adress: Karlavagnsgatan 21  <br>
Telephone: 031-23 24 64 <br>
Website: <a href="http://www.kaptennemos.se" >www.kaptennemos.se</a><br>
<br>Opening hours: <br>
Weekdays: 09.00 - 21.00
<br>Saturday: 12.00 - 22.00 <br>
Sunday: 12.00 - 21.00<br><br>
<img src="img/kaptennemo.png">
     
</div>
<%}
%>
 
<%if (request.getParameter("restoid").contains("Bombay Bistro")) {%>
       
<script>
 
var myCenter=new google.maps.LatLng(57.708316,11.937755);
 
function initialize()
{
       
var position = new google.maps.LatLng(57.708316,11.937755);
var mapProp = {
  center:myCenter,
  zoom:15,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };
var map=new google.maps.Map(document.getElementById("googleMap")
  ,mapProp);
 
var marker=new google.maps.Marker({
  position:position,
  animation:google.maps.Animation.BOUNCE,
  });
 
marker.setMap(map);
 
}
 
google.maps.event.addDomListener(window, 'load', initialize);
 
 
</script>
<h1 class="center"> Bombay Bistro </h1>
 
<div style= "border: 1px solid #C9C9C9; position: relative; left: 22px; float: center;  width: 550px; height: 135px; overflow: hidden;">
<img src="img/bombaybistro.jpg">
 
 
</div>
        <p> Bombay Bistro offers excellent Indian cuisine and an authentic Indian environment. A stone's throw from lindholmen, bombay bistro is a place for those who want to enjoy good food, unwind or celebrate with family and friends.
        </p>
<div id="googleMap" style="border: 1px solid #C9C9C9; float:right; width:300px;height:300px;"></div>
<div class= "inviscontainer center">
Adress: Lindholmsallen 35  <br>
Telephone: 031-50 88 90 <br>
Website: <a href="http://www.restaurangbombay.se" >www.restaurangbombay.se</a><br>
<br>Opening hours: <br>
Weekdays: 11.00 - 21.00
<br>Saturday: 15.00 - 21.00 <br>
Sunday: 12.00 - 21.00<br><br>
<img src="img/bombaybistro_logo.png">
   
</div>
<%}
%>
 
<%if (request.getParameter("restoid").contains("Mimolett")) {%>
       
<script>
 
var myCenter=new google.maps.LatLng(57.712283,11.944914);
 
function initialize()
{
       
var position = new google.maps.LatLng(57.712283,11.944914);
var mapProp = {
  center:myCenter,
  zoom:15,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };
var map=new google.maps.Map(document.getElementById("googleMap")
  ,mapProp);
 
var marker=new google.maps.Marker({
  position:position,
  animation:google.maps.Animation.BOUNCE,
  });
 
marker.setMap(map);
 
}
 
google.maps.event.addDomListener(window, 'load', initialize);
 
 
</script>
<h1 class="center"> Mimolett </h1>
 
<div style= "border: 1px solid #C9C9C9; position: relative; left: 29px; float: center;  width: 540px; height: 135px; overflow: hidden;">
<img src="img/mimolett.jpg">
 
 
</div>
        <p> A nice Italian restaurant in the heart of lindholmen. Come and eat authentic Italian food in our cozy restaurant or why not dine on our terrace during the summer. We offer an Italian suited for everyone. Our children's menu is very popular with the smaller ones.
        </p>
<div id="googleMap" style="border: 1px solid #C9C9C9; float:right; width:300px;height:300px;"></div>
<div class= "inviscontainer center">
Adress: Lindholmsallen 61  <br>
Telephone: 031-22 44 66 <br>
Website: <a href="http://www.mimolett.se" >www.mimolett.se</a><br>
<br>Opening hours: <br>
Weekdays: 10.00 - 23.00
<br>Saturday: 13.00 - 01.00 <br>
Sunday: Closed<br><br><br>
<img src="img/Mimoletto.jpg">
 
</div>
<%}
%>
 
<%if (request.getParameter("restoid").contains("L´s Kitchen")) {%>
       
<script>
 
var myCenter=new google.maps.LatLng(57.707126,11.939796);
 
function initialize()
{
       
var position = new google.maps.LatLng(57.707126,11.939796);
var mapProp = {
  center:myCenter,
  zoom:15,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };
var map=new google.maps.Map(document.getElementById("googleMap")
  ,mapProp);
 
var marker=new google.maps.Marker({
  position:position,
  animation:google.maps.Animation.BOUNCE,
  });
 
marker.setMap(map);
 
}
 
google.maps.event.addDomListener(window, 'load', initialize);
 
 
</script>
<h1 class="center"> L´s Kitchen </h1>
 
<div style= "border: 1px solid #C9C9C9; position: relative; float: center;  width: 600px; height: 135px; overflow: hidden;">
<img src="img/Lkitchenhead.jpg">
 
 
</div>
        <p> L's Kitchen is a multifaceted culinary quality concept comprising three styles catered for all tastes and created great opportunities for exclusive conference arrangements. Global, local or fresh? On our mattorg serving food with inspiration from all corners of the world, but also traditional fare with a modern touch and fresh salads and vegetarian options.
        </p>
<div id="googleMap" style="border: 1px solid #C9C9C9; float:right; width:300px;height:300px;"></div>
<div class= "inviscontainer center">
Adress: Lindholmspiren 5  <br>
Telephone: 031- 772 39 50 <br>
Website: <a href="http://www.lkitchen.se" >www.lkitchen.se</a><br>
<br>Opening hours: <br>
Weekdays: 11.00 - 13.30
<br>Saturday: Closed <br>
Sunday: Closed<br><br>
<img src="img/lskitchenlogo2.png">
     
</div>
<%}
%>
 
<%if (request.getParameter("restoid").contains("Cafe Villan")) {%>
       
<script>
 
var myCenter=new google.maps.LatLng(57.701241,11.915099);
 
function initialize()
{
       
var position = new google.maps.LatLng(57.701241,11.915099);
var mapProp = {
  center:myCenter,
  zoom:15,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };
var map=new google.maps.Map(document.getElementById("googleMap")
  ,mapProp);
 
var marker=new google.maps.Marker({
  position:position,
  animation:google.maps.Animation.BOUNCE,
  });
 
marker.setMap(map);
 
}
 
google.maps.event.addDomListener(window, 'load', initialize);
 
 
</script>
<h1 class="center"> Café Villan </h1>
 
<div style= "border: 1px solid #C9C9C9; position: relative; float: center;  width: 600px; height: 135px; overflow: hidden;">
<img src="img/CafeVillan.jpg">
 
 
</div>
        <p> At lunch, Cafe Villan offers their guests tasty dishes with a touch of international cuisine. Cafe Villan also includes a large salad buffet  and pasta buffet, where they have two kinds of pasta to choose from every day. In the summer they have a large outside dining area where you can enjoy a pleasant and relaxed atmosphere near the sea!
        </p>
<div id="googleMap" style="border: 1px solid #C9C9C9; float:right; width:300px;height:300px;"></div>
<div class= "inviscontainer center">
Adress: Sjöporten 5  <br>
Telephone: 031 - 65 88 10 <br>
<br>
<br>Opening hours: <br>
Weekdays: 09:00-23:00
<br>Saturday: 11:00-24:00 <br>
Sunday: 11:00-22:00<br><br><br>
<img src="img/VillanLogo1.gif">
     
</div>
<%}
%>
 

 
<%if (request.getParameter("restoid").contains("Restaurang Gothia")) {%>
       
<script>
 
var myCenter=new google.maps.LatLng(57.710243,11.945052);
 
function initialize()
{
       
var position = new google.maps.LatLng(57.710243,11.945052);
var mapProp = {
  center:myCenter,
  zoom:15,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };
var map=new google.maps.Map(document.getElementById("googleMap")
  ,mapProp);
 
var marker=new google.maps.Marker({
  position:position,
  animation:google.maps.Animation.BOUNCE,
  });
 
marker.setMap(map);
 
}
 
google.maps.event.addDomListener(window, 'load', initialize);
 
 
</script>
<h1 class="center"> Restaurang Gothia </h1>
 
<div style= "border: 1px solid #C9C9C9; position: relative;left: 58px; float: center;  width: 480px; height: 135px; overflow: hidden;">
<img src="img/gothia3.jpg">
 
 
</div>
        <p> Gothia's specialty is traditional Swedish food, but we also have a wide selection of dishes from around the world. We prepare the food with care, and of excellent raw materials from reputable suppliers. In our cooking, we use only the canola & olive oil for a healthier profiling. We produce all the food from scratch, which excludes artificial ingredients.
        </p>
<div id="googleMap" style="border: 1px solid #C9C9C9; float:right; width:300px;height:300px;"></div>
<div class= "inviscontainer center">
Adress: Regnbågsgatan 8A  <br>
Telephone: 031 - 51 88 50  <br>
Website: <a href="http://www.restauranggothia.com" >www.restauranggothia.com</a><br>
<br>Opening hours: <br>
Weekdays: 7:00 - 15:00  
<br>Saturday: Closed <br>
Sunday: Closed<br>
<img src="img/gothia logo.png">
     
</div>
<%}
%>
 
 
<%if (request.getParameter("restoid").contains("Cafe Mocka")) {%>
       
<script>
 
var myCenter=new google.maps.LatLng(57.708678,11.938142);
 
function initialize()
{
       
var position = new google.maps.LatLng(57.708678,11.938142);
var mapProp = {
  center:myCenter,
  zoom:15,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };
var map=new google.maps.Map(document.getElementById("googleMap")
  ,mapProp);
 
var marker=new google.maps.Marker({
  position:position,
  animation:google.maps.Animation.BOUNCE,
  });
 
marker.setMap(map);
 
}
 
google.maps.event.addDomListener(window, 'load', initialize);
 
 
</script>
<h1 class="center"> Cafe Mocka </h1>
 
<div style= "border: 1px solid #C9C9C9; position: relative;left: 72px; float: center;  width: 442px; height: 135px; overflow: hidden;">
<img src="img/cafemocka.gif">
 
 
</div>
        <p> Cafe Mocha is an Italian-inspired cafe with cozy
modern decor and atmosphere. We offer lunch
Monday-Friday, as well as catering for parties or conferences.
 
        </p>
<div id="googleMap" style="border: 1px solid #C9C9C9; float:right; width:300px;height:300px;"></div>
<div class= "inviscontainer center">
Adress: Lindholmsallen 31  <br>
Telephone: 031-719 26 19 <br>
Website: <a href="http://www.cafemocka.se" >www.cafemocka.se</a><br>
<br>Opening hours: <br>
Weekdays: 8:00 - 19:00
<br>Saturday: Closed <br>
Sunday: Closed<br><br><br>
<img src="img/mocka logo.png">
     
</div>
<%}
%>
 
<%if (request.getParameter("restoid").contains("Masala Kitchen")) {%>
       
<script>
 
var myCenter=new google.maps.LatLng(57.70653,11.94543);
 
function initialize()
{
       
var position = new google.maps.LatLng(57.70653,11.94543);
var mapProp = {
  center:myCenter,
  zoom:15,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };
var map=new google.maps.Map(document.getElementById("googleMap")
  ,mapProp);
 
var marker=new google.maps.Marker({
  position:position,
  animation:google.maps.Animation.BOUNCE,
  });
 
marker.setMap(map);
 
}
 
google.maps.event.addDomListener(window, 'load', initialize);
 
 
</script>
<h1 class="center"> Masala Kitchen </h1>
 
<div style= "border: 1px solid #C9C9C9; position: relative; float: center;  width: 600px; height: 135px; overflow: hidden;">
<img src="img/Masala Kitchen.jpg">
 
 
</div>
<p>Masala Kitchen: With a mixture of delicacies from Kashmir in the north to Kerala in the south, we serve Indian lunch Monday to Friday. Evenings and weekends we are open on request from companies and bigger groups of people.  Besides the excellent food we have to offer, the private location, a great outdoor veranda and two big dining-halls make Masala Kitchen the perfect spot for you party.
</p>
<div id="googleMap" style="border: 1px solid #C9C9C9; float:right; width:300px;height:300px;"></div>
<div class= "inviscontainer center">
Adress: Theres svenssons gata 6  <br>
Telephone: 031 - 22 67 77 <br>
Website: <a href="http://masalakitchen.se/" >www.masalakitchen.se</a><br>
<br>Opening hours: <br>
Weekdays: 11.00 - 14.00
<br>Saturday: Closed <br>
Sunday: Closed
<img src="img/masala_logo.jpg">
     
</div>
<%}
%>
 
<%if (request.getParameter("restoid").contains("Oishii Sushibar")) {%>
       
<script>
 
var myCenter=new google.maps.LatLng(57.705489,11.933814);
 
function initialize()
{
       
var position = new google.maps.LatLng(57.705489,11.933814);
var mapProp = {
  center:myCenter,
  zoom:15,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };
var map=new google.maps.Map(document.getElementById("googleMap")
  ,mapProp);
 
var marker=new google.maps.Marker({
  position:position,
  animation:google.maps.Animation.BOUNCE,
  });
 
marker.setMap(map);
 
}
 
google.maps.event.addDomListener(window, 'load', initialize);
 
 
</script>
<h1 class="center"> Oishii Sushibar </h1>
 
<div style= "border: 1px solid #C9C9C9; position: relative; float: center;  width: 600px; height: 135px; overflow: hidden;">
<img src="img/Sushioishii.jpg">
 
 
</div>
<p>Oishii Sushi bar is small and tasteful decorated restaurant that serves sushi and hot dishes. The number of seats is limited, but in the summer, guests get nice and sunny patio. Please call in advance for takeaway order so you will not have to wait. Oishii sushi bar also offers delivery to Ericsson on Wednesdays and Fridays.</p>
<div id="googleMap" style="border: 1px solid #C9C9C9; float:right; width:300px;height:300px;"></div>
<div class= "inviscontainer center">
Adress: Lindholmsvagen 1  <br>
Telephone: 031 - 23 13 88 <br>
Website: <a href="http://www.oishii.se/" >www.oishii.se</a><br>
<br>Opening hours: <br>
Weekdays: 11:00 - 15:00  
<br>Friday: 11:00 - 19:00 <br>
Sunday: Closed<br><br>
<img src="img/Oishhi Logo.jpg">
     
</div>
<%}
%>
 
<%if (request.getParameter("restoid").contains("Lai Thai")) {%>
       
<script>
 
var myCenter=new google.maps.LatLng(57.707865,11.93316);
 
function initialize()
{
       
var position = new google.maps.LatLng(57.707865,11.93316);
var mapProp = {
  center:myCenter,
  zoom:15,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };
var map=new google.maps.Map(document.getElementById("googleMap")
  ,mapProp);
 
var marker=new google.maps.Marker({
  position:position,
  animation:google.maps.Animation.BOUNCE,
  });
 
marker.setMap(map);
 
}
 
google.maps.event.addDomListener(window, 'load', initialize);
 
 
</script>
<h1 class="center"> Lai Thai </h1>
 
<div style= "border: 1px solid #C9C9C9; position: relative; float: center; left: 50px;  width: 500px; height: 135px; overflow: hidden;">
<img src="img/Lai-Thai-Restaurant-Pad-Thai-2.jpg">
 
 
</div>
<p>Lai Thai: Lai Thai serves delicious Thai cuisine made with fresh ingredients. With great authentic taste and convenient take away options, Lai Thai is perfect for carry out lunch. Weekly Menus available.</p>
<div id="googleMap" style="border: 1px solid #C9C9C9; float:right; width:300px;height:300px;"></div>
<div class= "inviscontainer center">
Adress: Ceres Street 22   <br>
Telephone: 031 - 22 70 22 <br>
<br>Opening hours: <br>
Weekdays: 11:00 - 20:30
<br>Saturday: 12:00 - 20:30 <br>
Sunday: 12:00 - 20:30<br><br><br><br>
<img src="img/Lai thai logo.gif">
     
</div>
<%}
%>
 
<%if (request.getParameter("restoid").contains("Spacys")) {%>
       
<script>
 
var myCenter=new google.maps.LatLng(57.709701,11.942662);
 
function initialize()
{
       
var position = new google.maps.LatLng(57.709701,11.942662);
var mapProp = {
  center:myCenter,
  zoom:15,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };
var map=new google.maps.Map(document.getElementById("googleMap")
  ,mapProp);
 
var marker=new google.maps.Marker({
  position:position,
  animation:google.maps.Animation.BOUNCE,
  });
 
marker.setMap(map);
 
}
 
google.maps.event.addDomListener(window, 'load', initialize);
 
 
</script>
<h1 class="center"> Spacys </h1>
 
<div style= "border: 1px solid #C9C9C9; position: relative; float: center;  width: 600px; height: 135px; overflow: hidden;">
<img src="img/Spacys2.png">
 
 
</div>
<p>Spacys serves today's freshest fish straight from the fish market. Meat, chicken and vegetarian without unnecessary additives. Spacys is also known for their great salad buffet, their homemade sourdough bread and healthy food choices. Try the business lunch or opt for a VIP room or conference table.</p>
<div id="googleMap" style="border: 1px solid #C9C9C9; float:right; width:300px;height:300px;"></div>
<div class= "inviscontainer center">
Adress: Götaverksgatan 4   <br>
Telephone: 0709-253773  <br>
Website: <a href="http://www.spacys.se/" >www.spacys.se</a><br>
<br>Opening hours: <br>
Weekdays: 11.00 - 14.00
<br>Saturday: Closed <br>
Sunday: Closed<br>
<img src="img/logospacys.png">
     
</div>
<%}
%>
 
 <div style="clear:both;"></div>
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
</body>
</html>