package com.booking;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class BookingDBUtil {
	
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	private static boolean isSuccess;
	
	public static boolean uservalidate(String userName,String password) {
		
try {
			
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			String sql="select * from user where uname='"+userName+"'and upassword='"+password+"'";
			
			rs=stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

	public static List<booking> getBooking(String username,String nic){
		
		ArrayList<booking> book =new ArrayList<>();
		
		try {
			
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			String sql="select bookingid,bookingdate,eventtype,cusname from booking where cusname='"+username+"' and nic='"+nic+"'";
			
			rs=stmt.executeQuery(sql);
			
			if(rs.next()) {
				int bid=rs.getInt(1);
				String date=rs.getString(2);
				String eventtype=rs.getString(3);
				String name=rs.getString(4);
				
				
				booking b =new booking(bid,date,eventtype,name);
				book.add(b);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return book;
	}
	
	public static boolean createBooking(String date,String eventtype,String name,String nic ) {
		boolean isSuccess=false;
		
		try {
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
		
			String sql="insert into booking values(0,'"+date+"','"+eventtype+"','"+name+"','"+nic+"')";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static boolean updateCustomer(String id,String date) {
		try {
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			String sql="update booking set bookingdate='"+date+"'" +"where bookingid='"+id+"'";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	public static List<booking>getBookingDetails(String bid){
		
		int convertedBid=Integer.parseInt(bid);
		
		ArrayList<booking> book=new ArrayList<>();
		
		try {
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			String sql="select * from booking where bookingid='"+convertedBid+"'";
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				int Bid=rs.getInt(1);
				String date=rs.getString(2);
				String etype=rs.getString(3);
				String name=rs.getString(4);
				
				
				booking b=new booking(Bid, date, etype,name);
				book.add(b);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return book;
	}
	
	public static boolean deletebooking(String bid) {
		int convertedbid=Integer.parseInt(bid);
		
		try {
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			String sql="delete from booking where bookingid='"+convertedbid+"'";
			int r=stmt.executeUpdate(sql);
			
			if(r>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
}
