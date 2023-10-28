package com.test;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import java.sql.*;

import com.itextpdf.text.Document;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

//Servlet implementation class GenRep
@WebServlet("/GeneratePDFServlet")
public class GeneratePDFServlet extends HttpServlet {
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

            Class.forName("com.mysql.jdbc.Driver");
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

            document.close();
            conn.close();

            // Now that the PDF is generated, you can send it to the client's browser for display.
            response.setContentType("application/pdf");
            response.setHeader("Content-disposition", "inline; filename=User_Report2.pdf");
            FileInputStream pdfFile = new FileInputStream(file_name);
            int i;
            while ((i = pdfFile.read()) != -1) {
                response.getOutputStream().write(i);
            }
            pdfFile.close();
            response.getOutputStream().close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
