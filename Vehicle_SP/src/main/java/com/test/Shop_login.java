package com.test;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/shoplogin")
public class Shop_login  extends HttpServlet {
	    private static final long serialVersionUID = 1L;

	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String shopUsername = request.getParameter("username");
	        String shopPassword = request.getParameter("password");

	        try {
	            List<Shops> shopDetails = shopdbUtill.validate(shopUsername, shopPassword);
	            request.setAttribute("shopDetails", shopDetails);

	            if (!shopDetails.isEmpty()) {
	               
	                RequestDispatcher dispatcher = request.getRequestDispatcher("shopDashboard.jsp");
	                dispatcher.forward(request, response);
	            } else {
	                
	                RequestDispatcher dispatcher = request.getRequestDispatcher("Login_error.jsp");
	                dispatcher.forward(request, response);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	}
