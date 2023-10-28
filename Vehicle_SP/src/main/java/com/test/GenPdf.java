package com.test;

import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.text.Document;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

@WebServlet("/GenPdf")
public class GenPdf extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
        String jdbcURL = "jdbc:mysql://localhost:3306/vspmsystem";
        String dbUser = "root";
        String dbPassword = "asus";

        String file_name = "D:\\Sliit\\java\\projects\\VSPM_system\\Downloads\\User_Report2.pdf";
        Document document = new Document();

        try {
            PdfWriter.getInstance(document, new FileOutputStream(file_name));
            document.open();

            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Establish a database connection
            Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            Statement stmt = conn.createStatement();
            PreparedStatement ps = null;
            ResultSet rs = null;

            String query = "SELECT * FROM shops;";
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                Paragraph para = new Paragraph(
                    rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4) + " " + rs.getString(5));
                document.add(para);
                document.add(new Paragraph(""));
            }

            // Close the PDF document
            document.close();
            conn.close();
            
            // Provide the path to the generated PDF file to be displayed on the JSP page
            request.setAttribute("pdfPath", file_name);

            // Forward the request to the JSP page
            request.getRequestDispatcher("/ReportGenUsers.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
