<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Feedback List</title>
    <link rel="stylesheet" type="text/css" href="CSS/ViewServletStyle.css">
</head>
<body>

<h1>Feedback List</h1>

<!-- Display feedback records in table format -->
<table border="1" width="100%">
    <tr>
        <th>Feedback Id</th>
        <th>Customer Name</th>
        <th>Event Name</th>
        <th>Feedback Date</th>
        <th>Feedback Comment</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>

    <!-- Loop through feedbackList and display each feedback record -->
    <c:forEach var="feedback" items="${feedbackList}">
        <tr>
            <td>${feedback.id}</td>
            <td>${feedback.cname}</td>
            <td>${feedback.ename}</td>
            <td>${feedback.fdate}</td>
            <td>${feedback.fcomment}</td>
            <td><a class="button" href="EditServlet?id=${feedback.id}">edit</a></td>
            <td><a class="button" href="DeleteServlet?id=${feedback.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>

<!-- Footer with link to add new feedback -->
<footer>
    <a class="button" href="indexfeedback.jsp">Add New Feedback</a>
</footer>

</body>
</html>
