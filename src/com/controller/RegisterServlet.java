package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.registrationDAO;
import com.model.Registration;


/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public RegisterServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String gender=request.getParameter("gender");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		String pin=request.getParameter("pin");
		String comments=request.getParameter("comment");
		PrintWriter out=response.getWriter();
		
		
		out.println(phone);
		long mobile=Long.parseLong(phone);
		out.println(mobile);
		int pincode=Integer.parseInt(pin);
		
		
		Registration bean=new Registration();
		
		bean.setFname(fname);
		bean.setLname(lname);
		bean.setEmail(email);
		bean.setGender(gender);
		bean.setPhone(mobile);
		bean.setAddress(address);
		bean.setCity(city);
		bean.setState(state);
		bean.setPin(pincode);
		bean.setComment(comments);
		
		registrationDAO dao=new registrationDAO();
		int a=dao.add(bean);
	
		request.setAttribute("status", a);
		RequestDispatcher des=request.getRequestDispatcher("register1.jsp");
		des.forward(request, response);
			
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
