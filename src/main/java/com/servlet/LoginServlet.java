package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.User;
import com.phones.ConnectionProvider;
import com.phones.UserDAO;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		UserDAO dao =new UserDAO(ConnectionProvider.getConnection());
		User u = dao.loginUser(email, password);
		HttpSession session=  req.getSession();
		
		if(u != null) {
			//System.out.println(u+" is present");
			session.setAttribute("user",u);
			resp.sendRedirect("index.jsp");
		
			
		}else {
			session.setAttribute("invalidMsg", "Invalid User or Password !!!");
			resp.sendRedirect("login.jsp");
			//System.out.println(u+" not present");
		}
		
		
		
	}

}
