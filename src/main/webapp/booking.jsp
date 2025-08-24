<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Bookings</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/booking.css">
</head>

<body>
<div>
<form action="BookingView"method="post">
  
  <label for="name">User Name:</label>
  <input type="text" id="name" name="name"><br><br>
  
  <input type="submit" value="Submit">
</form>
</div>
</body>

</html>