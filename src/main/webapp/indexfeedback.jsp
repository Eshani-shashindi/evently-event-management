<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/style.css">
    <title>Add Feedback</title>
</head>
<body>

    <h1>Add your Feedback</h1>
    <form action="SaveServlet" method="post">
        <table>
            <tr>
                <td>Customer Name:</td>
                <td><input type="text" name="cname" required /></td>
            </tr>
            <tr>
                <td>Event Name:</td>
                <td><input type="text" name="ename" required /></td>
            </tr>
            <tr>
                <td>Feedback Date:</td>
                <td><input type="date" name="fdate" required /></td>
            </tr>
            <tr>
                <td>Feedback Comment:</td>
                <td><textarea name="fcomment" rows="4" cols="50" required></textarea></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" value="Save Feedback" />
                </td>
            </tr>
        </table>
    </form>

    <br />
    <!-- Changed the link into a button -->
    <div class="view-feedback-button">
        <a href="ViewServlet">View Feedbacks</a>
    </div>

</body>
</html>