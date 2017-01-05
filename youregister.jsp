<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="loginn.css">
<title>Registration</title>
</head>
<body>
<div id="header">
		<h1><img src="http://i63.tinypic.com/2yns11k.jpg" border="0"></h1>
	</div>
<div id="SideNav">
		<ul>
			<li class="lnavlist"><a href="index.html">Home</a></li>
			<li class="lnavlist"><a href="youregister.jsp"class="active">Register</a></li>
			<li class="lnavlist"><a href="loginn.jsp">Login</a></li>
		</ul>
	</div>
	<br>
<div id ="midmain">
<br>
<h3>Enter username, password and email address to complete registration process.</h3>
<div id="form">
<form action="TReg" method="post">
<br>
    <label for="userName">Username</label>
    <br>
    <input type="text" id="userName" name="userName">
<br>
    <label for="userPass">Password</label>
    <br>
    <input type="password" id="userPass" name="userPass">
<br>
    <label for="userEmail">Email</label>
    <br>
    <input type="text" id="userEmail" name ="userEmail">
<br>  
    <input type="submit" value="Submit">
<br>
<br>
  </form>
</div>
  
</div>
</body>
</html>