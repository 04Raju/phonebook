package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.Contacts;
import com.phones.ConnectionProvider;
import com.phones.ContactDAO;

@WebServlet("/addContact")
public class AddContact  extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String Fname= req.getParameter("Fname");
		String Lname= req.getParameter("Lname");
		String Email= req.getParameter("Email");
		String Phone= req.getParameter("Phone");
		String Aphone= req.getParameter("APhone");
		String Label= req.getParameter("Label");
		String Company= req.getParameter("Company");
		String About= req.getParameter("About");
		int Userid =Integer.parseInt(req.getParameter("Userid"));
		
//		System.out.println(Userid+" "+Fname+" "+Lname);
//		System.out.println(Email+" "+Phone+" "+Aphone);
//		System.out.println(Label+" "+Company);
//		System.out.println(About);
		Contacts c= new Contacts(Fname,Lname,Email,Phone,Aphone,Label,Company,About,Userid);
		ContactDAO dao = new ContactDAO(ConnectionProvider.getConnection());
		
		HttpSession session = req.getSession();
		boolean f= dao.saveContact(c);
		if(f) {
			session.setAttribute("SuccMsg", "Contact Saved ");
			resp.sendRedirect("addContact.jsp");
			
		}else {
			session.setAttribute("FaildMsg", "Can't Save please Try again ");
			resp.sendRedirect("addContact.jsp");

			
		}
		
		
		
		
	}

	







}
