<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Staff Member</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/addstaff.css">
</head>
<body>
		
		 <form action="add" method="POST">
        <h2>Add Staff Member</h2>
        <label for="name">Name</label>
        <input type="text" id="name" name="name" required>
        
        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>
        
        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>
        
        <label for="phone">Phone</label>
        <input type="text" id="phone" name="phone" required>
        
        <label for="des">Designation</label>
        <input type="text" id="des" name="des" required><br>
        
        <input type="submit" name="submit" value="Add Staff Member">
    </form>

</body>
</html>