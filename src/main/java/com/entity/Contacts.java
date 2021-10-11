package com.entity;

public class Contacts {
	private int id;
	private String fname;
	private String lname;
	private String email;
	private String phone;
	private String aphone;
	private String label;
	private String company;
	private String about;
	private int Userid;
	
	
	public Contacts() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Contacts(String fname, String lname, String email, String phone, String aphone, String label, String company,String about, int userid) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.phone = phone;
		this.aphone = aphone;
		this.label = label;
		this.company = company;
		this.about = about;
		Userid = userid;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}
	

	public String getFname() {
		return fname;
	}


	public void setFname(String fname) {
		this.fname = fname;
	}


	public String getLname() {
		return lname;
	}


	public void setLname(String lname) {
		this.lname = lname;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getAphone() {
		return aphone;
	}


	public void setAphone(String aphone) {
		this.aphone = aphone;
	}


	public String getLabel() {
		return label;
	}


	public void setLabel(String label) {
		this.label = label;
	}


	public String getCompany() {
		return company;
	}


	public void setCompany(String company) {
		this.company = company;
	}
	
	public String getAbout() {
		return about;
	}
	
	public void setAbout(String about) {
		this.about = about;
	}

	public int getUserid() {
		return Userid;
	}


	public void setUserid(int userid) {
		Userid = userid;
	}
	
	
	

}