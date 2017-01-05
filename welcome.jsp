<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="welcome.css">
<title>GamingNetwork</title>
</head>
<body>

	<%
		if(session.getAttribute("username")==null)
		{
			response.sendRedirect("loginn.jsp");
		}
	%>
	<div id="header">
		<h1><img src="http://i63.tinypic.com/2yns11k.jpg" border="0"></h1>
	</div>
<div id="SideNav">
		<ul>
			<li class="lnavlist"><a href="welcome.jsp"class="active">Home</a></li>
			<!-- <li class="lnavlist"><a href="">Forum</a></li> -->
			<li class="lnavlist"><a href="browsegames.jsp">Browse Games</a></li>
			<li class="lnavlist"><a href="contactus.jsp">Contact Us</a></li>
			<!-- <li class="dropdown"><a href="">Platforms</a> -->
				<div class="dropdown-content">
					<a href=#>PC</a>
					<a href=#>Xbox One</a>
					<a href=#>Playstation 4</a>
					<a href=#>Wii</a>
					<a href=#>Mobile</a>
				</div>
			</li>
		</ul>
	</div>
	<br>
	<div id="midmain">
	Welcome ${username}
	<form action="Logout" method="post">
	<input type="submit" value="Logout">
	</form>
	<br>
	<div class="slideshow-container">
	
	<div class="mySlides fade">
		<div class="numbertext">1 / 3</div>
		<img src="http://i67.tinypic.com/2a7d4j7.png" style="width:100%">
		<div class="text">Overwatch</div>
	</div>
	
	<div class="mySlides fade">
		<div class="numbertext">2 / 3</div>
		<img src="http://i66.tinypic.com/2881etv.jpg" style="width: 100%">
		<div class="text"></div>
	</div>
	
	<div class="mySlides fade">
		<div class="numbertext">3 / 3</div>
		<img src="http://i63.tinypic.com/9ql3yh.png" style="width: 100%">
		<div class="text"></div>
	</div>
	
	<a class="prev" onClick="plusSlides(-1)">&#10094;</a>
	<a class="next" onclick="plusSlides(1)">&#10095;</a>
	</div>
	<br>
	
	<div style="text-align:center">
  		<span class="dot" onclick="currentSlide(1)"></span> 
  		<span class="dot" onclick="currentSlide(2)"></span> 
  		<span class="dot" onclick="currentSlide(3)"></span> 
	</div>
	</div>
	
	<script>
	var slideIndex = 1;
	showSlides(slideIndex);

	function plusSlides(n) {
	  showSlides(slideIndex += n);
	}

	function currentSlide(n) {
	  showSlides(slideIndex = n);
	}

	function showSlides(n) {
	  var i;
	  var slides = document.getElementsByClassName("mySlides");
	  var dots = document.getElementsByClassName("dot");
	  if (n > slides.length) {slideIndex = 1} 
	  if (n < 1) {slideIndex = slides.length}
	  for (i = 0; i < slides.length; i++) {
	      slides[i].style.display = "none"; 
	  }
	  for (i = 0; i < dots.length; i++) {
	      dots[i].className = dots[i].className.replace(" active", "");
	  }
	  slides[slideIndex-1].style.display = "block";
	  dots[slideIndex-1].className += " active";
	}
	</script>
</body>
</html>