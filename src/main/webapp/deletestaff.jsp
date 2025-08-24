<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Staff Member</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/deletestaff.css">
</head>
<body>

		<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String designation = request.getParameter("designation");
		%>
		
		<form action="deletestf" method="POST">
        <h1>Delete Staff Member</h1>
        <div class="form-group">
            <label>Staff ID</label>
            <input type="text" name="id" value ="<%=id%>" readonly>
        </div>
        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" value="<%=name%>" readonly>
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" value="<%=email%>" readonly>
        </div>
        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" value="<%=password%>" readonly>
        </div>
        <div class="form-group">
            <label>Phone</label>
            <input type="text" name="phone" value="<%=phone%>" readonly>
        </div>
        <div class="form-group">
            <label>Designation</label>
            <input type="text" name="designation" value="<%=designation%>" readonly>
        </div>
        <input type="submit" name="delete" value="Delete Staff Member">
    </form>

</body>
</html>