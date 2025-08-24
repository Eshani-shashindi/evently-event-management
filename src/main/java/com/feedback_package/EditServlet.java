package com.feedback_package;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EditServlet
 */
@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Get feedback id from request
        String sid = request.getParameter("id");
        int id = Integer.parseInt(sid);

        // Fetch the feedback data by id using feedbackDao
        feedback e = feedbackDao.getFeedbackById(id);

        // Set the feedback data as a request attribute
        request.setAttribute("feedback", e);

        // Forward the request to the JSP page (edit-feedback.jsp) for display
        RequestDispatcher dispatcher = request.getRequestDispatcher("edit-feedback.jsp");
        dispatcher.forward(request, response);
    }
}
