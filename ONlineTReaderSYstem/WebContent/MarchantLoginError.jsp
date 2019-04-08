<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Marchant Login Page</title>
</head>
<body>
	<h1>Marchant Login Page</h1>
	<form action="MarchantLoginAct.jsp" method = "POST">
	username : <input type = "text" name = "username" /><br/><br/>
	password : <input type = "password" name = "password" /><br/><br/>
	<input type = "submit" value = "Login" />
	</form>
	<h1>Invalid username/password</h1>
</body>
</html>