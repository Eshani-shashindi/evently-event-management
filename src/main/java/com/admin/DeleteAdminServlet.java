package com.admin;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteAdminServlet")
public class DeleteAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			
			String id = request.getParameter("id");
			boolean isTrue;
			isTrue = AdminDBUtil.deleteadmin(id);
			
			if(isTrue == true) {
				out.println("<script type='text/javascript'>");
				out.println("alert('Your profile deleted Successfully...!')");
				out.println("</script>");
				RequestDispatcher dis = request.getRequestDispatcher("adminlogin.jsp");
				dis.forward(request, response);
			}else {
				out.println("<script type='text/javascript'>");
				out.println("alert('Error occured while deleting your profile...!')");
				out.println("location='admindashboard.jsp'");
				out.println("</script>");
			}
		
	}

}
