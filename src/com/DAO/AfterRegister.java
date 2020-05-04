package com.DAO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AfterRegister extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html");
		String uname   =   req.getParameter("uname");
		String pass    =   req.getParameter("pass");
		String fname   =   req.getParameter("fname");
		String lname   =   req.getParameter("lname");
		String email   =   req.getParameter("email");
		
		RegistrationPojo p=new RegistrationPojo();
		p.setUname(uname);
		p.setPwd(pass);
		p.setFname(fname);
		p.setLname(lname);
		p.setEmail(email);
		
		DBConnection db=new DBConnection();
		db.add(p);
		if(db.insertionCheck()==1)
		{
			resp.sendRedirect("Registration.jsp");
		}
		
		
		
	}

}
