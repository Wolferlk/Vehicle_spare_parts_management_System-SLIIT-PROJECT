package com.test;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/ItemAdd")
public class ItemAdd  extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String item_name = request.getParameter("itemName");
        String price = request.getParameter("price");
        double conPrice = Double.parseDouble(price);
        
        String description = request.getParameter("description");
        String item_type = request.getParameter("itemType");

        boolean isTrue;
        
        
        	
        	isTrue = AdminDButill.AddItems(item_name, conPrice, description, item_type);
        	
        	if(isTrue == true) {
        		
        		RequestDispatcher dis = request.getRequestDispatcher("add_item_ok.jsp");
        		dis.forward(request, response);
        		
        	}else {
        		
        		
        	}
        	
        	
      
        
    }
}

	

