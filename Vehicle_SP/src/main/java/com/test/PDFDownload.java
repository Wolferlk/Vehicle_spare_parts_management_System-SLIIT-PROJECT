package com.test;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

@WebServlet("/PDFDownload")
public class PDFDownload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			List<Item> items = AdminDButill.getItem();
			
			Document document = new Document();
			
			response.setContentType("application/pdf");
			
			response.setHeader("Content-Disposition", "attachment; filename=database-data.pdf");
			
			PdfWriter.getInstance(document, response.getOutputStream());
			
			document.open();
			
			 Font titleFont = new Font(Font.FontFamily.HELVETICA, 16, Font.BOLD, BaseColor.BLACK);
	            Paragraph title = new Paragraph("Database Data Report", titleFont);
	            title.setAlignment(Element.ALIGN_CENTER);
	            document.add(title);
	            
	            document.add(new Paragraph(" "));
			
			PdfPTable table = new PdfPTable(4);
			table.setWidthPercentage(98);
			
			Font headerFont = new Font(Font.FontFamily.HELVETICA, 12, Font.BOLD, BaseColor.BLACK);
			
			table.addCell(new PdfPCell(new Phrase("ID", headerFont)));
			table.addCell(new PdfPCell(new Phrase("Name", headerFont)));
			table.addCell(new PdfPCell(new Phrase("Price", headerFont)));
			table.addCell(new PdfPCell(new Phrase("Description", headerFont)));
			
			double totalPurchasePrice = 0;
			double totalSoldPrice = 0;
			
			for(Item item : items) {
				
				table.addCell(new PdfPCell(new Phrase(String.valueOf(item.getItemId()))));
				table.addCell(new PdfPCell(new Phrase(item.getItemName())));
				table.addCell(new PdfPCell(new Phrase(String.valueOf(item.getPrice()) + "LKR")));
				table.addCell(new PdfPCell(new Phrase(item.getDescription())));
				
			}
			
			
			
			document.add(table);
			
			document.close();
			
		}catch(Exception e) {
			
			e.printStackTrace();
			response.getWriter().write("An error occurred while generate the PDF.");
		}
		
		response.sendRedirect(request.getContextPath() + "/Landing");
	}

}
