<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/adminlogin.css">
</head>
<body>
		
		<form action="log" method="POST">
		<h1>Admin Login</h1><br>
		Email<input type="email" name="email" required><br>
		Password<input type="password" name="password" required><br>
		
		<input type="Submit" name="login" value="Login">
		
		</form>
</body>
</html>