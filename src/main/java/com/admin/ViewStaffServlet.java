package com.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import com.staff.Staff;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ViewStaffServlet")
public class ViewStaffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		List<Staff> staff = new ArrayList<>();
		staff = AdminDBUtil.getStaffDetails();
		
		
			RequestDispatcher dis = request.getRequestDispatcher("viewstaff.jsp");
			request.setAttribute("staff", staff);
			dis.forward(request, response);
		
		
	}
	
	

}
