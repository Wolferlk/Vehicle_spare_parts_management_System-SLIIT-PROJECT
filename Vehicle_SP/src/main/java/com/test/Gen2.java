package com.test;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.sql.*;

import com.itextpdf.text.Document;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;


@WebServlet("/Gen2")
public class Gen2 extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/pdf");
        try {
            Document document = new Document();
            PdfWriter.getInstance(document, response.getOutputStream());
            document.open();

            // Establish a database connection and retrieve data
            Connection conn = DbConn.getConnection(); // Implement the DbConn class to return a database connection
            String query = "SELECT * FROM items";
            PreparedStatement pstmt = conn.prepareStatement(query);
            ResultSet rs = pstmt.executeQuery();

            // Create a table in the PDF document
            PdfPTable table = new PdfPTable(3);
            table.addCell("Item Name");
            table.addCell("Price");
            table.addCell("Description");

            while (rs.next()) {
                table.addCell(rs.getString("item_name"));
                table.addCell(rs.getString("price"));
                table.addCell(rs.getString("description"));
            }

            document.add(table);
            document.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
