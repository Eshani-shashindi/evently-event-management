<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User booking details</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/UserBookingDetails.css">
</head>
<body>

<h2>Booking Successful</h2>
<table>
<c:forEach var="booking" items="${bookingDetails}">

<c:set var="Bid" value="${booking.bookingId}"></c:set>
<c:set var="date" value="${booking.bookingDate}"></c:set>
<c:set var="eventtype" value="${booking.eventType}"></c:set>
<c:set var="name" value="${booking.name}"></c:set>

<tr>
<td>User Name</td>
<td>${booking.name}</td>
</tr>
<tr>
<td>Booking ID</td>
<td>${booking.bookingId}</td>
</tr>
<tr>
<td>Booking Date</td>
<td>${booking.bookingDate}</td>
</tr>
<tr>
<td>Event type</td>
<td>${booking.eventType}</td>
<tr>

</c:forEach>
</table>


<c:url value="updateBooking.jsp" var="bookingupdate">
	<c:param name="bookingid" value="${Bid}"/>
	<c:param name="date" value="${date}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="eventtype" value="${eventtype}"/>
</c:url>
<a href="${bookingupdate}">
<input type="button" name="update" value="Update booking">
</a>

<br>
<c:url value="deleteBooking.jsp" var="bookingdelete">
	<c:param name="bookingid" value="${Bid}"/>
	<c:param name="date" value="${date}"/>
	<c:param name="eventtype" value="${eventtype}"/>
	<c:param name="name" value="${name}"/>
	
	</c:url>
	
<a href="${bookingdelete}">
<input type="button" name="delete" value="Delete booking">
</a>
</body>
</html>