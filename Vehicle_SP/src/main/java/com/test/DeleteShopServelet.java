package com.test;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DeleteShopServelet")
public class DeleteShopServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String shopId = request.getParameter("shopId");
		
		int convertedId = Integer.parseInt(shopId);
		
		boolean isTrue;
		
		isTrue = AdminDButill.deleteShops(convertedId);
				
		
		if(isTrue == true) {
			
			response.sendRedirect(request.getContextPath() + "/GetShopsServlet");
	
		}else {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("addshopunsuccess.jsp");
			dispatcher.forward(request, response);
		}
	}

}
