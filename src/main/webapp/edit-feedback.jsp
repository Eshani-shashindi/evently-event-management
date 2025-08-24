<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Feedback</title>
    <link rel="stylesheet" type="text/css" href="CSS/EditServletStyle.css">
</head>
<body>

<h1>Update Feedback</h1>

<!-- Feedback edit form pre-filled with feedback data -->
<form action="EditServlet2" method="post">
    <table>
        <!-- Hidden input for the feedback ID -->
        <tr>
            <td></td>
            <td><input type="hidden" name="id" value="${feedback.id}"/></td>
        </tr>
        
        <!-- Customer Name -->
        <tr>
            <td>Customer Name:</td>
            <td><input type="text" name="cname" value="${feedback.cname}"/></td>
        </tr>
        
        <!-- Event Name -->
        <tr>
            <td>Event Name:</td>
            <td><input type="text" name="ename" value="${feedback.ename}"/></td>
        </tr>

        <!-- Feedback Date -->
        <tr>
            <td>Feedback Date:</td>
            <td><input type="date" name="fdate" value="${feedback.fdate}"/></td>
        </tr>

        <!-- Feedback Comment -->
        <tr>
            <td>Feedback Comment:</td>
            <td><input type="text" name="fcomment" value="${feedback.fcomment}"/></td>
        </tr>
        
        <!-- Submit Button -->
        <tr>
            <td colspan="2"><input type="submit" value="Update & Save"/></td>
        </tr>
    </table>
</form>

</body>
</html>
