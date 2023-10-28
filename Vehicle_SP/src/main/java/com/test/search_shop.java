package com.test;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;



@WebServlet("/search")
public class search_shop extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public search_shop() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		// TODO Auto-generated method stub
		
		String shopName = request.getParameter("shop_name");
		search_shopDbutill.validate(shopName);
		try {
		List<Shops> shopdetails = search_shopDbutill.validate(shopName);
		request.setAttribute("shopdetails", shopdetails);
		}catch(Exception e) {
			
		}
		
		RequestDispatcher dis = request .getRequestDispatcher("EditShop.jsp");
		dis.forward(request, response);
		
		
		
	}}
		
		
		
		
		
		
		
	
