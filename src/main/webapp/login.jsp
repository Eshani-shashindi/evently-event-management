<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/login.css">
</head>
<body>

<div>
<form action="login" method="post">
		User Name <input type="text" name="userName" placeholder="Enter your username"><br>
		Password <input type="password" name="password" placeholder="Enter your password"><br>
		<input type="submit" name="submit" value="Login">
	</form>
	</div>
	
</body>
</html>