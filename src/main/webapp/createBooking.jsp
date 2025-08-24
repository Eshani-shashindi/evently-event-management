<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create booking</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/createBooking.css">
<script>
document.addEventListener('DOMContentLoaded', function() {
  document.getElementById('event-form').addEventListener('submit', function(event) {
    const date = document.getElementById('datetime').value;
    const eventType = document.getElementById('eventtype').value;
    const name = document.getElementById('name').value;
    const nic = document.getElementById('nic').value;
    
    const today = new Date().toISOString().split('T')[0];

    if (date < today) {
      alert('Date cannot be in the past.');
      event.preventDefault();
    }

    if (eventType === "") {
      alert('Please select an event type.');
      event.preventDefault();
    }

    if (name.length < 3) {
      alert('Name must be at least 3 characters long.');
      event.preventDefault();
    }

    if (!/^(\d{9}[vV]|\d{12})$/.test(nic)) {
      alert('NIC format is incorrect.');
      event.preventDefault();
    }
  });
});
</script>

</head>
<body>
<form id="event-form" action="CreateBooking" method="post">
  <label for="date">Date:</label>
  <input type="date" id="datetime" name="date"><br><br>
  
  <label for="eventtype">Event Type:</label>
  <select id="eventtype" name="eventtype">
    <option value="">Select an option</option>
    <option value="birthday">Birthday</option>
    <option value="anniversary">Anniversary</option>
    <option value="wedding">Wedding</option>
  </select><br><br>
  
  <label for="name">Name:</label>
  <input type="text" id="name" name="name"><br><br>
  
  <label for="nic">NIC:</label>
  <input type="text" id="nic" name="nic" maxlength="13"><br><br>
  
  <input type="submit" value="Submit">
</form>

</body>
</html>
