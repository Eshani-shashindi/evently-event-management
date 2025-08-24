package com.staff;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.AdminDBUtil;




@WebServlet("/AddStaffServlet")
public class AddStaffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String designation = request.getParameter("des");
		
		boolean isTrue;
		
		isTrue=StaffDBUtil.addstaff(name, email, password, phone, designation);
		
		if(isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Staff Member added Successfully...!')");
			out.println("</script>");
			
			List<Staff> staff = AdminDBUtil.getStaffDetails();
			request.setAttribute("staff", staff);
			
			RequestDispatcher dis = request.getRequestDispatcher("viewstaff.jsp");
			dis.forward(request, response);
		}else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Error occured while adding staff member...!')");
			out.println("</script>");
			List<Staff> staff = AdminDBUtil.getStaffDetails();
			request.setAttribute("staff", staff);
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
		
	}

}
