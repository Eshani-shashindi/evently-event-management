<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit your Profile</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/updateadmin.css">
</head>
<body>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
	%>

	<form action="update" method="POST">
        <h2>Edit Profile</h2>
        <label for="id">Admin ID</label>
        <input type="text" name="id" value ="<%=id%>" readonly>

        <label for="name">Name</label>
        <input type="text" name="name" value="<%=name%>">

        <label for="email">Email</label>
        <input type="email" name="email" value="<%=email%>">

        <label for="password">Password</label>
        <input type="password" name="password" value="<%=password%>">

        <label for="phone">Phone</label>
        <input type="text" name="phone" value="<%=phone%>"><br><br>

        <input type="submit" name="update" value="Update">
    </form>

</body>
</html>