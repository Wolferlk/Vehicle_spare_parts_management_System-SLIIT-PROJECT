package com.test;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/GetShopsServlet")
public class GetShopsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
						
		List<Shops> shopList = AdminDButill.getShopDetails();
		request.setAttribute("shopList", shopList);	
		
		
		RequestDispatcher dis = request .getRequestDispatcher("EditShop_srch.jsp");
		dis.forward(request, response);
		
	
	}

}
