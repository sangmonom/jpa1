package com.mmit.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mmit.models.Counter;
@WebServlet("/scopes")
public class CounterControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private static final String COUNTER="counter";
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//session scope
		HttpSession session=request.getSession(true);
		Counter countersession=(Counter)session.getAttribute(COUNTER);
		if(countersession==null)
			countersession=new Counter();
		countersession.increaseCount();
		session.setAttribute(COUNTER,countersession);
		
		//request scope
		Counter counterrequest=(Counter) request.getAttribute(COUNTER);
		if(counterrequest==null)
			counterrequest=new Counter();
		counterrequest.increaseCount();
		request.setAttribute(COUNTER,counterrequest);
		
		//application scope
		ServletContext application=request.getServletContext();
		Counter counterapp=(Counter) application.getAttribute(COUNTER);
		if(counterapp==null)
			counterapp=new Counter();
		counterapp.increaseCount();
		application.setAttribute(COUNTER,counterapp);
		
		getServletContext().getRequestDispatcher("/home.jsp").forward(request, response);
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
