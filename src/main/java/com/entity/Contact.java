package com.entity;

public class Contact {
	private int id;
	private String name;
	private String Email;
	private String phone;
	private String about;
	private String role;
	private int Userid;
	
	public Contact() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Contact(String name, String email, String phone, String about, String role, int userid) {
		super();
		this.name = name;
		Email = email;
		this.phone = phone;
		this.about = about;
		this.role = role;
		Userid = userid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public int getUserid() {
		return Userid;
	}

	public void setUserid(int userid) {
		Userid = userid;
	}
	

}
