<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="loginn.css">
<title>Login</title>
</head>
<body>
<div id="header">
		<h1><img src="http://i63.tinypic.com/2yns11k.jpg" border="0"></h1>
	</div>
<div id="SideNav">
		<ul>
			<li class="lnavlist"><a href="index.html">Home</a></li>
			<li class="lnavlist"><a href="youregister.jsp">Register</a></li>
			<li class="lnavlist"><a href="loginn.jsp"class="active">Login</a></li>
		</ul>
	</div>
	<br>
	<div id ="midmain">
<br>
<h3>Enter valid username and password to login.</h3>
<div id="form">
<form action="Loginn" method="post">
<br>
    <label for="uname">Username</label>
    <br>
    <input type="text" id="uname" name="uname">
<br>
    <label for="pass">Password</label>
    <br>
    <input type="password" id="pass" name="pass">
<br>    
    <input type="submit" value="Submit">
<br>
<br>
  </form>
</div>
  
</div>
</body>
</html>