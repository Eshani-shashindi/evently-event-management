package com.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		boolean isTrue;
		
		isTrue = AdminDBUtil.validate(email, password);
		
		if (isTrue == true) {
			List<Admin> admDetails = AdminDBUtil.getAdmin(email);
			request.setAttribute("admDetails", admDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("admindashboard.jsp");
			dis.forward(request, response);
			
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Incorrect email or password')");
			out.println("location='adminlogin.jsp'");
			out.println("</script>");
		}
		
		try {
		
		
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}

}
	
}
