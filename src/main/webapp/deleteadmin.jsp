<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Your Profile</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/deleteadmin.css">
</head>
<body>
	
		<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		%>
		
		<form action="delete" method="POST">
	Admin_ID<input type="text" name="id" value ="<%=id%>" readonly><br>
	Name<input type="text" name="name" value="<%=name%>" readonly><br>
	Email<input type="email" name="email" value="<%=email%>" readonly><br>
	Password<input type="password" name="password" value="<%=password%>" readonly><br>
	Phone<input type="text" name="phone" value="<%=phone%>" readonly><br><br>
	<input type="submit" name="delete" value="Delete">
	</form>
	
	

</body>
</html>