package com.staff;

import java.sql.Connection;

import java.sql.Statement;

import com.booking.DBConnection;

public class StaffDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	
		
		//Add new staff member
		public static boolean addstaff(String name, String email, String password, String phone, String designation) {
			
			boolean isSuccess = false;
			
			
			
			
			try {
				
				con = DBConnection.getConnection();
				stmt = con.createStatement();
				String sql = "insert into staff values (0,'"+name+"','"+email+"','"+password+"','"+phone+"','"+designation+"')";
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
}
