<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/dashboard.css">
</head>
<body>

	<table>
	<a:forEach var="adm" items="${admDetails}">
	
	<a:set var="id" value="${adm.id}"/>
	<a:set var="name" value="${adm.name}"/>
	<a:set var="email" value="${adm.email}"/>
	<a:set var="password" value="${adm.password}"/>
	<a:set var="phone" value="${adm.phone}"/>
	
	<tr>
		<td>Admin_ID</td>
		<td>${adm.id}</td>
	</tr>
	<tr>
		<td>Name</td>
		<td>${adm.name}</td>
	</tr>
	<tr>
		<td>Email</td>
		<td>${adm.email}</td>
	</tr>
	<tr>
		<td>Password</td>
		<td>${adm.password}</td>
	</tr>
	<tr>
		<td>Phone</td>
		<td>${adm.phone}</td>
	</tr>
	
	 
	</a:forEach>
	</table>
	
	<a:url value="updateadmin.jsp" var="admupdate">
		<a:param name="id" value="${id}"/>
		<a:param name="name" value="${name}"/>
		<a:param name="email" value="${email}"/>
		<a:param name="password" value="${password}"/>
		<a:param name="phone" value="${phone}"/>
		
	</a:url>
	<a href="${admupdate}">
	<input type="button" name="update" value="Edit your Profile">
	</a>
	<br><br>
	
	<a:url value="deleteadmin.jsp" var="deleteadmin">
		<a:param name="id" value="${id}"/>
		<a:param name="name" value="${name}"/>
		<a:param name="email" value="${email}"/>
		<a:param name="password" value="${password}"/>
		<a:param name="phone" value="${phone}"/>
	</a:url>
	<a href="${deleteadmin}">
	<input type="button" name="delete" value="delete your profile">
	</a>
	<br><br>
	
	
	<a href="view">
	<input type="submit" name="view" value="view staff members">
	</a><br><br>
	
	<a:url value="addstaff.jsp" var="addstaff">
	</a:url>
	<a href="${addstaff}">
	<input type="button" name="add" value="Add Staff Member">
	</a>
	
</body>
</html>