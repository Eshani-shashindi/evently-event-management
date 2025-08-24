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


@WebServlet("/UpdateAdminServlet")
public class UpdateAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		
		boolean isTrue;
		
		isTrue = AdminDBUtil.updateadmin(id, name, email, password, phone);
		
		if(isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your profile updated Successfully...!')");
			out.println("</script>");
			
			List<Admin> admDetails = AdminDBUtil.getAdminDetails(id);
			request.setAttribute("admDetails", admDetails);
			RequestDispatcher dis = request.getRequestDispatcher("admindashboard.jsp");
			dis.forward(request, response);
		}else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Error occured...!')");
			out.println("</script>");
			List<Admin> admDetails = AdminDBUtil.getAdminDetails(id);
			request.setAttribute("admDetails", admDetails);
			RequestDispatcher dis = request.getRequestDispatcher("admindashboard.jsp");
			dis.forward(request, response);
		}
	}

}
