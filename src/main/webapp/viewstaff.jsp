<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Staff</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/viewstaff.css">
</head>
<body>

		<%
		String id = request.getParameter("sid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String designation = request.getParameter("des");
		%>
		
	<table>
		<s:forEach var="stf" items="${staff}">
		
		<s:set var="id" value="${stf.id}"/>
		<s:set var="name" value="${stf.name}"/>
		<s:set var="email" value="${stf.email}"/>
		<s:set var="password" value="${stf.password}"/>
		<s:set var="phone" value="${stf.phone}"/>
		<s:set var="designation" value="${stf.designation}"/>
		<tr>
		<td>Staff_ID</td>
		<td>${stf.id}</td>
	</tr>
	<tr>
		<td>Name</td>
		<td>${stf.name}</td>
	</tr>
	<tr>
		<td>Email</td>
		<td>${stf.email}</td>
	</tr>
	<tr>
		<td>Password</td>
		<td>${stf.password}</td>
	</tr>
	<tr>
		<td>Phone</td>
		<td>${stf.phone}</td>
	</tr>
	<tr>
		<td>Designation</td>
		<td>${stf.designation}</td>
	</tr>
	
	<tr>
		<td>
			<s:url value="deletestaff.jsp" var="deletestaff">
		<s:param name="id" value="${id}"/>
		<s:param name="name" value="${name}"/>
		<s:param name="email" value="${email}"/>
		<s:param name="password" value="${password}"/>
		<s:param name="phone" value="${phone}"/>
		<s:param name="designation" value="${designation}"/>
		</s:url>
			<a href="${deletestaff}">
			<input type="button" name="delete" value="delete">
			</a>
			
		</td>
	</tr>
	
	 
	</s:forEach>
	
	
</table>

</body>
</html>