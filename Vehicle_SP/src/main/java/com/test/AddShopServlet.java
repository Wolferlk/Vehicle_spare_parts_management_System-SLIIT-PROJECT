package com.test;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AddShopServlet")
public class AddShopServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
    

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	String shopName = request.getParameter("shopName");
        String shopAddress = request.getParameter("shopAddress");
        String shopOwner = request.getParameter("shopOwner");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
            
        boolean isTrue;
		
		isTrue = AdminDButill.AddShops(shopName, shopAddress, shopOwner, phone, email, username, password);
		
		
		if(isTrue == true) {
			
			response.sendRedirect(request.getContextPath() + "/GetShopsServlet");
			
			
			
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("addshopunsuccess.jsp");
			dis2.forward(request, response);
		}
        
		
    }
    
}
       
