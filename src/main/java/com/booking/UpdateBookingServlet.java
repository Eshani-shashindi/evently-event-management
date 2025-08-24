package com.booking;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateBookingDetails")
public class UpdateBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String bid=request.getParameter("bookingid");
		String date=request.getParameter("date");
		
	
	
	boolean isTrue;
	
	isTrue=BookingDBUtil.updateCustomer(bid,date);
		if(isTrue==true) {
			
			List<booking> book=BookingDBUtil.getBookingDetails(bid);
			request.setAttribute("bookingDetails", book);
			
			RequestDispatcher dis=request.getRequestDispatcher("UserBookingDetails.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis=request.getRequestDispatcher("CreateBookingUnsuccess.jsp");
			dis.forward(request, response);
		}
	
	}
}
