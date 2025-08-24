package com.booking;


public class booking {

	private int bookingId;
	private String bookingDate;
	private String eventType;
	private String name;
	
	
	
	
	public booking(int bookingId, String bookingDate, String eventType,String name) {
		super();
		this.bookingId = bookingId;
		this.bookingDate = bookingDate;
		this.eventType = eventType;
		this.name=name;
		
	}
	

	public int getBookingId() {
		return bookingId;
	}
	
	public String getBookingDate() {
		return bookingDate;
	}
	
	public String getEventType() {
		return eventType;
	}
	
	public String getName() {
		return name;
	}
}
