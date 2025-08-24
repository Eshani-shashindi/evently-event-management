<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete booking</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/deleteBooking.css">
</head>
<body>
<%
		String bookingid=request.getParameter("bookingid");
		String date=request.getParameter("date");
		String eventtype=request.getParameter("eventtype");
		String name=request.getParameter("name");
		
			
	%>

<form action="deleteBooking" method="post">
	<table>
	<tr> <td>Booking ID</td>
	<td><input type="text" name="bookingid" value="<%= bookingid%>"readonly></td>
	</tr>
 <tr>
  <td>Date</td>
  <td><input type="date" id="date" name="date" value="<%= date%>"readonly></td>
  </tr>
  <tr>
  <td>Event Type</td>
  <td><input type="text" id="eventtype" name="eventtype" value="<%= eventtype%>"readonly></td>
  </tr>
 <tr> 
 <td>Name</td>
 <td><input type="text" name="name" value="<%= name%>"readonly></td>
 </tr>
	</table><br><br>
  
  
  <input type="submit" name="submit" value="Delete Booking">
</form>
</body>
</html>