package com.booking;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	private static String url="jdbc:mysql://127.0.0.1:3306/evently";
	private static String userName="root";
	private static String password="Eshani@it1";
	private static Connection con;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con=DriverManager.getConnection(url,userName,password);
		}
		catch(Exception e){
			System.out.print("Connection is not succesful");
		}
		return con;
	}
	
}
