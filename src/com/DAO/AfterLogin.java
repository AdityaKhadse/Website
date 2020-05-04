package com.DAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AfterLogin extends HttpServlet {
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
        resp.setContentType("text/html");
        String uname   =   req.getParameter("uname");
        String pass    =   req.getParameter("pass");
        DBConnection db=new DBConnection();
        String dbpass=db.checkPassword(uname);
        System.out.println(dbpass);
        if(pass.equals(dbpass))
        {
            resp.sendRedirect("Profile.jsp");
        }
        else
        {
            //System.out.println("INVALID");

            resp.sendRedirect("Error.jsp");
        }
    }
}
