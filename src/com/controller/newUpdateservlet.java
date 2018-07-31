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
 * Servlet implementation class newUpdateservlet
 */
public class newUpdateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public newUpdateservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		//String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String city=request.getParameter("city");
		//String state=request.getParameter("state");
		String pin=request.getParameter("pin");
		//String comment=request.getParameter("comment");
		
		long mobile=Long.parseLong(phone);
	
		int pincode=Integer.parseInt(pin);
		
		Registration bean=new Registration(fname, lname, email, mobile, address, city, pincode);
		
		registrationDAO dao=new registrationDAO();
		int a=dao.update(bean);
		
		request.setAttribute("status", a);
		RequestDispatcher des=request.getRequestDispatcher("update2.jsp");
		des.forward(request, response);
				
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
