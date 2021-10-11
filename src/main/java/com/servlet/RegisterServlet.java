package com.servlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.User;
import com.phones.ConnectionProvider;
import com.phones.UserDAO;



@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		String name= request.getParameter("Fname");
		String email= request.getParameter("Email");
		String password= request.getParameter("Password");
		
		User u = new User(name,email,password);
		
		UserDAO dao = new UserDAO(ConnectionProvider.getConnection());
		boolean f= dao.userRegister(u);
		HttpSession session=  request.getSession();
		if(f) {
			System.out.println(name+" Register Successfully :) ");
			session.setAttribute("successMsg", name+" Register Successfully");
			response.sendRedirect("register.jsp");
		}
		else {
			System.out.println("Sorry "+name+" Something Went Wrong :( Try Again after some time");
			session.setAttribute("errorMsg", name+"Something Went Wrong :( ");
			response.sendRedirect("register.jsp");
		}
		
	}
	

}
