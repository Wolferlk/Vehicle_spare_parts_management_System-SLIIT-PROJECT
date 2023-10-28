package com.test;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.util.List;

@WebServlet("/login")
public class adminlogservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String username = request.getParameter("adusername");
        String password = request.getParameter("adpassword");
		
        
        try {
        	List<admin> addetails =  AdminDButill.validate(username, password);
        	request.setAttribute("addetails", addetails);
        	
        	if(addetails != null && !addetails.isEmpty()) {
        		
        		RequestDispatcher dis = request .getRequestDispatcher("AdminDash.jsp");
        		dis.forward(request, response);
        		
        	}else {
        		
        		RequestDispatcher dis = request.getRequestDispatcher("Login_error.jsp");
        		dis.forward(request, response);
        		
        	}
        }catch(Exception e){
        	
        	e.printStackTrace();
        	
        	
        }
        
	}
	}


