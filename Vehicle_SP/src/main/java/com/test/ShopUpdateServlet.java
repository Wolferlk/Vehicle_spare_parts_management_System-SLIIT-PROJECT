package com.test;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/ShopUpdateServlet")
public class ShopUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String shopId = request.getParameter("shopId");
		
		int converted = Integer.parseInt(shopId);
		
		String shopName= request.getParameter("shopName");
		String shopAddress= request.getParameter("shopAddress");
		String shopOwner= request.getParameter("shopOwner");
		String shopPhone= request.getParameter("shopPhone");
		String shopEmail= request.getParameter("shopEmail");
		String shopUsername= request.getParameter("shopUsername");
		String shopPassword= request.getParameter("shopPassword");
		
		boolean isTrue;
		 
		 isTrue = AdminDButill.updateShops(converted, shopName, shopAddress, shopOwner, shopPhone, shopEmail, shopUsername, shopPassword);
		 
		 if(isTrue == true) {
			 			 			 
			 
			 response.sendRedirect(request.getContextPath() + "/GetShopsServlet");
			 
		 }else {
			 
			 RequestDispatcher dis = request.getRequestDispatcher("addshopunsuccess.jsp");
			 dis.forward(request, response);
		 }
		
		
;		
	}

}
