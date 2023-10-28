package com.test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@jakarta.servlet.annotation.WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String message = request.getParameter("message");

        try {
            // Get a database connection from the DbConn class
            Connection conn = DbConn.getConnection();

            if (conn != null) {
                // Prepare an SQL statement to insert data into the table
                String sql = "INSERT INTO contact_info (name, email, phone, message) VALUES (?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, name);
                pstmt.setString(2, email);
                pstmt.setString(3, phone);
                pstmt.setString(4, message);

                // Execute the SQL statement
                pstmt.executeUpdate();

                // Close the database connection
                conn.close();

                // Redirect to a thank you page or show a confirmation message
                response.sendRedirect("contact_ok.jsp");
            } else {
                // Handle database connection error
                response.sendRedirect("contact_erro.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            // Handle any exceptions here
            response.sendRedirect("contact_erro.jsp");
        }
    }
}
