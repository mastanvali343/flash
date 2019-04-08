<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Treader Login Page</title>
</head>
<body>
	<h1>Treader Login Page</h1>
	<form action="TreaderLoginAct.jsp" method = "POST">
	username : <input type = "text" name = "username" /><br/><br/>
	password : <input type = "password" name = "password" /><br/><br/>
	<input type = "submit" value = "Login" />
	</form>
	<h1>Invalid username/password</h1>
</body>
</html>