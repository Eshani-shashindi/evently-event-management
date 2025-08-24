package com.admin;


import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.booking.DBConnection;
import com.staff.Staff;




public class AdminDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	
	//Validate login
	public static boolean validate(String email, String password){
		
		
			try {
			
				con = DBConnection.getConnection();
				stmt = con.createStatement();
				String sql = "select * from admin where email='"+email+"' and password='"+password+"'";
				
				rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					isSuccess = true;
				} else {
					isSuccess = false;
				}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return isSuccess;
		
	}
	
	//Retrive Admin Details relevant to the login
	public static List<Admin> getAdmin(String email) {
	ArrayList<Admin> admin = new ArrayList<>();
	
	try {
		con = DBConnection.getConnection();
		stmt = con.createStatement();
		String sql = "select * from admin where email='"+email+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String ademail = rs.getString(3);
			String adpassword = rs.getString(4);
			String phone = rs.getString(5);
			
			Admin adm = new Admin(id, name, ademail, adpassword, phone);
			admin.add(adm);
		}
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return admin;
}
	
	
	//Update Admin Profile
	public static boolean updateadmin(String id, String name, String email, String password, String phone) {
		
		try {
			
				con = DBConnection.getConnection();
				stmt = con.createStatement();
				String sql = "update admin set name='"+name+"',email='"+email+"',password='"+password+"',phone='"+phone+"'where adminID='"+id+"'";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
			//Get updated Admin Details
			public static List<Admin> getAdminDetails(String id) {
		
					int convertedID = Integer.parseInt(id);
		
					ArrayList<Admin> adm = new ArrayList<>();
		
					try {
							con = DBConnection.getConnection();
							stmt = con.createStatement();
							String sql = "select * from admin where adminID='"+convertedID+"'";
							rs = stmt.executeQuery(sql);
							
							while(rs.next()) {
								int aid = rs.getInt(1);
								String name = rs.getString(2);
								String email = rs.getString(3);
								String password = rs.getString(4);
								String phone = rs.getString(5);
								
								Admin a = new Admin(aid, name, email, password, phone);
								adm.add(a);
								
								}
			
					}
					catch(Exception e) {
						e.printStackTrace();
					}
		
					return adm;
		}
			//Delete Admin Profile
			public static boolean deleteadmin(String id) {
				int convertedID = Integer.parseInt(id);
				
				try {
						con = DBConnection.getConnection();
						stmt = con.createStatement();
						String sql = "delete from admin where adminID='"+convertedID+"'";
						int rs = stmt.executeUpdate(sql);
						
						if(rs > 0) {
							isSuccess = true;
						}else {
							isSuccess = false;
						}
				
				}
				catch(Exception e) {
					e.printStackTrace();
				}
				
				return isSuccess;
			}
			
			//Get details of all Staff Members
			public static List<Staff> getStaffDetails() {
				
				
				
				ArrayList<Staff> stf = new ArrayList<>();
				
				try {
						con = DBConnection.getConnection();
						stmt = con.createStatement();
						String sql = "select * from staff";
						rs = stmt.executeQuery(sql);
						
						while(rs.next()) {
							int sid = rs.getInt(1);
							String name = rs.getString(2);
							String email = rs.getString(3);
							String password = rs.getString(4);
							String phone = rs.getString(5);
							String des = rs.getString(6);
							
							Staff s = new Staff(sid, name, email, password, phone, des);
							stf.add(s);
							
							}
		
				}
				catch(Exception e) {
					e.printStackTrace();
				}
	
				return stf;
	}
			
			//Delete staff member
			public static boolean deletestaff(String id) {
				int convertedID = Integer.parseInt(id);
				
				try {
						con = DBConnection.getConnection();
						stmt = con.createStatement();
						String sql = "delete from staff where staff_ID='"+convertedID+"'";
						int rs = stmt.executeUpdate(sql);
						
						if(rs > 0) {
							isSuccess = true;
						}else {
							isSuccess = false;
						}
				
				}
				catch(Exception e) {
					e.printStackTrace();
				}
				
				return isSuccess;
			}
			
			
			//Get Staff Member details for confirmation
			public static List<Staff> getStaffMember(String id) {
				
				int convertedID = Integer.parseInt(id);
	
				ArrayList<Staff> stf = new ArrayList<>();
	
				try {
						con = DBConnection.getConnection();
						stmt = con.createStatement();
						String sql = "select * from staff where staff_ID='"+convertedID+"'";
						rs = stmt.executeQuery(sql);
						
						while(rs.next()) {
							int sid = rs.getInt(1);
							String name = rs.getString(2);
							String email = rs.getString(3);
							String password = rs.getString(4);
							String phone = rs.getString(5);
							String des = rs.getString(6);
							
							Staff s = new Staff(sid, name, email, password, phone, des);
							stf.add(s);
							
							}
		
				}
				catch(Exception e) {
					e.printStackTrace();
				}
	
				return stf;
	}
				
				
				
			

}
