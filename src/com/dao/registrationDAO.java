package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import com.model.Registration;


public class registrationDAO {

	public int add(Registration bean) {
		int rs=0;
	
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/assignment","root","root");  
			//here assignment is database name, root is username and password  
			
			Statement stmt=con.createStatement();
			
				 rs=stmt.executeUpdate("insert into register values('"+bean.getFname()+"','"+bean.getLname()+"','"+bean.getGender()+"','"+bean.getEmail()+"','"+bean.getPhone()+"','"+bean.getAddress()+"','"+bean.getCity()+"','"+bean.getState()+"','"+bean.getPin()+"','"+bean.getComment()+"')");
			
				}catch(Exception e){
				e.printStackTrace();
				}
		return rs;
		
	}
	
	
	
	public List<Registration> show() 
	{
	
		
		List<Registration> list=null;

		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/assignment","root","root");  
			 
			Statement stmt=null;
			ResultSet rs=null;
			
			list=new ArrayList<Registration>();
				stmt=con.createStatement();
				 rs=stmt.executeQuery("select * from register");
			 while(rs.next()){
				 Registration bean=new Registration();
				 bean.setFname(rs.getString("fname"));
				 bean.setLname(rs.getString("lname"));
				 bean.setGender(rs.getString("gender"));
				 bean.setEmail(rs.getString("email"));
				 bean.setPhone(rs.getLong("mobile_no"));
				 bean.setAddress(rs.getString("address"));
				 bean.setCity(rs.getString("city"));
				 bean.setState(rs.getString("state"));
				 bean.setPin(rs.getInt("pin"));
				 bean.setComment(rs.getString("comment"));
				list.add(bean);
				}
			
			
	}catch(Exception e){
		e.printStackTrace();
		}
		return list;
	
	
	}
	public int delete(String fname) {
		int rs=0;
		String sql="delete from register where fname='"+fname+"'";
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/assignment","root","root");  
			//here sonoo is database name, root is username and password  
			
			Statement stmt=con.createStatement();
			
				 rs=stmt.executeUpdate(sql);
				}catch(Exception e){
				e.printStackTrace();
				}
		return rs;
		
	
}



	public int update(Registration bean) {
		
		int rs=0;
		
		String sql="update register set fname='"+bean.getFname()+"',lname='"+bean.getLname()+"',email='"+bean.getEmail()+"',mobile_no='"+bean.getPhone()+"',address='"+bean.getAddress()+"',city='"+bean.getCity()+"',pin='"+bean.getPin()+"' where email='"+bean.getEmail()+"'";
		
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/assignment","root","root");  
			//here sonoo is database name, root is username and password  
			
			Statement stmt=con.createStatement();
			
				 rs=stmt.executeUpdate(sql);
			
				}catch(Exception e){
				e.printStackTrace();
				}
		return rs;
		
	}
	
	public Registration retriveData(String fname) {
		Registration bean=new Registration();
		String query="select * from register where fname='"+fname+"'";
		
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/assignment","root","root");  
			 
			Statement stmt=null;
			ResultSet rs=null;
			
				stmt=con.createStatement();
				 rs=stmt.executeQuery(query);
			 while(rs.next()){
				 bean.setFname(rs.getString("fname"));
				 bean.setLname(rs.getString("lname"));
				 bean.setGender(rs.getString("gender"));
				 bean.setEmail(rs.getString("email"));
				 bean.setPhone(rs.getLong("mobile_no"));
				 bean.setAddress(rs.getString("address"));
				 bean.setCity(rs.getString("city"));
				 bean.setState(rs.getString("state"));
				 bean.setPin(rs.getInt("pin"));
				 bean.setComment(rs.getString("comment"));
				}
		
	}catch(Exception e){
		e.printStackTrace();
		}
		return bean;	
}
	public boolean validate(String fname) throws SQLException 
	{
		Registration bean=new Registration();
		String query="select fname from register where fname='"+fname+"'";
		
		ResultSet rs=null;
		//int rs=0;
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/assignment","root","root");  
			 
			Statement stmt=null;
			
			
				stmt=con.createStatement();
				
				rs=stmt.executeQuery(query);
			
	}catch(Exception e){
		e.printStackTrace();
		}
		if(rs.next()){
			return true;
			
		}
		else
		{
			return false;
		}
		
	}
	
	
}