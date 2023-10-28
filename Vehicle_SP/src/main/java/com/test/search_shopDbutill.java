package com.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class search_shopDbutill {

	public static List<Shops> validate(String shopName){
		
		ArrayList<Shops> sshop = new ArrayList<>();
		 String jdbcURL = "jdbc:mysql://localhost:3306/vspmsystem";
         String dbUser = "root";
         String dbPassword = "asus";
		
		
     	try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
			Statement stmt =  conn.createStatement();
			
			
			String sql = "select * from shop where shopname = '"+shopName+"'";
			 ResultSet rs = stmt.executeQuery(sql);
			
			
			if(rs.next()) {
				int Sid = rs.getInt(1);
				String sname = rs.getString(2);
				String Sadd = rs.getString(3);
				String Sowner = rs.getString(4);
				String sphone = rs.getString(5);
				String semail = rs.getString(6);
				String suser = rs.getString(7);
				String spasswords = rs.getString(8);
			
				
				
			Shops c = new Shops(Sid,sname,Sadd,Sowner,sphone,semail,suser, spasswords);
				sshop.add(c);
			}
			
			 
		}
		catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		return sshop;
	}
}
