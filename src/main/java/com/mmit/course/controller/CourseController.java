package com.mmit.course.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mmit.course.models.Course;

@WebServlet({"/save-course","/add-course"})
public class CourseController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action=request.getServletPath();
		if(("/save-course").equals(action)) {
			String name=request.getParameter("name");
			String level=request.getParameter("level");
			String fees=request.getParameter("fees");
			
			Course course=new Course();
			course.setName(name);
			course.setLevel(level);
			course.setFees(Integer.parseInt(fees));
			
			//get session object
			HttpSession session = request.getSession(true);
			List<Course>list=(ArrayList<Course>)session.getAttribute("courses");
				if(list==null)
				{
					list=new ArrayList<Course>();
				}
				list.add(course);
				//add obj course to session
				session.setAttribute("courses", list);
//				getServletContext().getRequestDispatcher("/course-list.jsp").forward(request, response);
				response.sendRedirect(request.getContextPath().concat("/course-list.jsp"));
			
		}else if(("/add-course").equals(action)){
			String name=request.getParameter("name");
			String level=request.getParameter("level");
			String fees=request.getParameter("fees");
			
			Course course=new Course();
			course.setName(name);
			course.setLevel(level);
			course.setFees(Integer.parseInt(fees));
			
			//add to request
			request.setAttribute("courses", course);
			getServletContext().getRequestDispatcher("/course-display.jsp").forward(request, response);
		}
		
		
		//add object to session
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
