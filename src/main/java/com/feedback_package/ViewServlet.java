package com.feedback_package;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewServlet
 */
@WebServlet("/ViewServlet")
public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Fetch all feedback records from feedbackDao
        List<feedback> list = feedbackDao.getAllFeedbacks();

        // Set the feedback list as a request attribute
        request.setAttribute("feedbackList", list);

        // Forward the request to the JSP page (view-feedback.jsp)
        RequestDispatcher dispatcher = request.getRequestDispatcher("ViewFeedback.jsp");
        dispatcher.forward(request, response);
    }
}
