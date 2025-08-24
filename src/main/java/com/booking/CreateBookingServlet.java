package com.booking;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CreateBookingServlet")
public class CreateBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String date=request.getParameter("date");
		String eventtype=request.getParameter("eventtype");
		String name=request.getParameter("name");
		String nic=request.getParameter("nic");
		
	 
		boolean isTrue;
		
		isTrue=BookingDBUtil.createBooking(date, eventtype, name, nic);
		
		if(isTrue==true) {
			List<booking> bookingDetails=BookingDBUtil.getBooking(name,nic);
			request.setAttribute("bookingDetails", bookingDetails);
			RequestDispatcher dis=request.getRequestDispatcher("UserBookingDetails.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2=request.getRequestDispatcher("CreateBookingUnsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
