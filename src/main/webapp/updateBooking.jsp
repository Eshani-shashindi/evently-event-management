<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/updateBooking.css">
<head>
<meta charset="UTF-8">
<title>update details</title>
<style type="text/css">
		table {
  			border-collapse: collapse;
		}

		table, th, td {
		  border: 1px solid black;
		}
	</style>

</head>
<body>

	<%
		String bookingid=request.getParameter("bookingid");
		String date=request.getParameter("date");
		String name=request.getParameter("name");
		String eventtype=request.getParameter("eventtype");
	%>

<form action="updateBooking" method="post">
	<table>
		<tr>
  <td>Booking ID</td>
 <td> <input type="text" name="bookingid" value="<%= bookingid%>"readonly></td>
 </tr>
 <tr>
 <td> name</td>
 <td><input type="text" id="name" name="name" value="<%= name%>"readonly></td>
 </tr>
 <tr>
  <td>Date</td>
  <td><input type="date" id="date" name="date" value="<%= date%>"></td>
</tr>
<tr>
  <td>Event Type</td>
  <td><input type="text" id="eventtype" name="eventtype" value="<%= eventtype%>"readonly></td>
</tr>
</table>
  
  
  <input type="submit" name="submit" value="Update Details">
</form>

</body>
</html>