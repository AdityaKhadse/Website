package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBConnection {
	Connection con=null;
	PreparedStatement pr=null;
	int n;
	
	
	
public void add(RegistrationPojo p)
	{
		try
	{
		String url="jdbc:mysql://localhost:3306/website";
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url,"admin","admin");
		pr=con.prepareStatement("insert into details(f_name,l_name,u_name,email,pass) values(?,?,?,?,?)");
		pr.setString(1, p.getFname());
		pr.setString(2, p.getLname());
		pr.setString(3, p.getUname());
		pr.setString(4, p.getEmail());
		pr.setString(5, p.getPwd());
		
		n=pr.executeUpdate();
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	}
	public int insertionCheck()
	{
		return n;
	}
	
	public ResultSet showUsers()
	{
		ResultSet rs=null;
		try
		{
			String url="jdbc:mysql://localhost:3306/website";
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url,"admin","admin");
			pr=con.prepareStatement("select * from users");
			rs=pr.executeQuery();
			
	}
	
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return rs;	
	}
	
	public String checkPassword(String uname)
	{
		ResultSet rs=null;
		String pass=null;
		Statement stm=null;
		try
		{
			String url="jdbc:mysql://localhost:3306/website";
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url,"admin","admin");
			stm=con.createStatement();
			rs=stm.executeQuery("SELECT pass from details WHERE u_name='"+uname+"'");
			if(rs.next())
			pass=rs.getString(1);
		}
	
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return pass;	
	}
	
	
	

}
