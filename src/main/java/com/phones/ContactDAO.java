package com.phones;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Contacts;

public class ContactDAO {

	private Connection con;
	
	public ContactDAO(Connection con) {
		super();
		this.con = con;
	};
	public boolean saveContact(Contacts c) {
		boolean f= false;
		try {
			String sql="INSERT INTO Contacts (UserId,Fname,Lname,Email,Phone,APhone,Label,Company,About,Status) VALUES(?,?,?,?,?,?,?,?,?,0)";
			System.out.println(sql);
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setInt(1, c.getUserid());
			ps.setString(2, c.getFname());
			ps.setString(3, c.getLname());
			ps.setString(4, c.getEmail());
			ps.setString(5, c.getPhone());
			ps.setString(6, c.getAphone());
			ps.setString(7, c.getLabel());
			ps.setString(8, c.getCompany());
			ps.setString(9, c.getAbout());
		
			
			int i = ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		}catch(Exception e){
			System.out.print(e.getMessage());
			e.printStackTrace();
		}
		return f;
	}
	
	public List<Contacts> getAllContacts(int uid){
		
		List<Contacts> list =new ArrayList<Contacts>();
		Contacts c= null;
		try {
			String Sql="SELECT * FROM Contacts WHERE UserId = ?";
			PreparedStatement ps= con.prepareStatement(Sql);
			ps.setInt(1, uid);
			
			ResultSet rs= ps.executeQuery();
			
			while(rs.next()) {
				c= new Contacts();
				c.setId(rs.getInt(1));
				c.setUserid(rs.getInt(2));
				c.setFname(rs.getString(3));
				c.setLname(rs.getString(4));
				c.setEmail(rs.getString(5));
				c.setPhone(rs.getString(6));
				c.setAphone(rs.getString(7));
				c.setLabel(rs.getString(8));
				c.setCompany(rs.getString(9));
				c.setAbout(rs.getString(10));
				list.add(c);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
}
