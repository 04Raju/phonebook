package com.phones;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;


public class UserDAO {
private Connection con;

public UserDAO(Connection con) {
	super();
	this.con= con;
	
}
public boolean userRegister(User u) {
	boolean f= false;
	
	try {
		String sql="INSERT INTO Users(Fname,Email,Password,Status) values(?,?,?,0)";
		System.out.println(sql); 
	
		
		PreparedStatement  ps = con.prepareStatement(sql); 
		ps.setString(1,u.getName() );
		ps.setString(2,u.getEmail());
		ps.setString(3, u.getPassword());
		
	int i = ps.executeUpdate();
	
	System.out.println(ps);
		if(i == 1) {
			f= true;
		}
		
	}catch(Exception e) {
		e.printStackTrace();
		System.out.println("==> "+e.getMessage());
	}
	return f;
}




public User loginUser(String e, String p) {
	User user=null;
	try {
		String sql="SELECT * FROM Users WHERE Email=? AND Password=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,e);
		ps.setString(2, p);
		
		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
			user= new User();
			user.setId(rs.getInt(1));
			user.setName(rs.getString(2));
			user.setEmail(rs.getString(3));
			user.setPassword(rs.getString(4));
	//		user.setStatus(rs.getInt(5));
			
		}
		
	}catch(Exception ex) {
		ex.printStackTrace();
	}
	return user;
}
}

