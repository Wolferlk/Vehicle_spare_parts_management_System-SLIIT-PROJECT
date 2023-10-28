package com.test;

	import jakarta.servlet.RequestDispatcher;
	import jakarta.servlet.ServletException;
	import jakarta.servlet.annotation.WebServlet;
	import jakarta.servlet.http.HttpServlet;
	import jakarta.servlet.http.HttpServletRequest;
	import jakarta.servlet.http.HttpServletResponse;
	import java.io.IOException;
	import java.util.List;


@WebServlet("/WMlogin")
public class WM_login_Servlet extends HttpServlet {


		private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String username = request.getParameter("username");
	        String password = request.getParameter("password");
			
	        
	        try {
	        	List<WM_CLASS> addetails =  WM_DButill.validate(username, password);
	        	request.setAttribute("addetails", addetails);
	        	
	        	if(!addetails.isEmpty()) {
	        		
	        		RequestDispatcher dis = request .getRequestDispatcher("WM_Dash.jsp");
	        		dis.forward(request, response);
	        		
	        	}else {
	        		
	        		RequestDispatcher dis = request.getRequestDispatcher("Login_error.jsp");
	        		dis.forward(request, response);
	        		
	        	}
	        }catch(Exception e){
	        	
	        	e.printStackTrace();
	        	request.getRequestDispatcher("Login_error.jsp");
	        }
	        
		}
		}



	
