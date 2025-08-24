package com.staff;

public class Staff {
	
	private int id;
	private String name;
	private String email;
	private String password;
	private String phone;
	private String designation;
	
	
	//Constructor
	public Staff(int id, String name, String email, String password, String phone, String designation) {
		
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.phone = phone;
		this.designation = designation;
	}
	
	//Getters
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public String getPassword() {
		return password;
	}
	public String getDesignation() {
		return designation;
	}
	public String getPhone() {
		return phone;
	}
		
	

}
