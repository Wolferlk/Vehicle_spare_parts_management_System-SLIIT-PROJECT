	package com.test;

	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.Statement;
	import java.util.ArrayList;
	import java.util.List;

public class WM_DButill {
		
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;

		public static List<WM_CLASS> validate(String UserName,String Password){
			
			ArrayList<WM_CLASS> WHM = new ArrayList<>();
			
			try {
				con = DbConn.getConnection();
		        stmt = con.createStatement();			
				String sql = "select * from wh_manager where username = '"+UserName+"' and password ='"+Password+"' ";
				ResultSet rs = stmt.executeQuery(sql);
				
				
				if(rs.next()) {
					int wmid = rs.getInt(1);
					String wmname = rs.getString(2);
					String wmusername = rs.getString(3);
					String wmpassword = rs.getString(4);
					
					
					WM_CLASS warehousemanager = new WM_CLASS(wmid,wmusername,wmname,wmpassword);
					WHM.add(warehousemanager);
				}
				
				 
			}
			catch(Exception e) {
				
				e.printStackTrace();
				
			}		
			
			return WHM;
					
		}
	
}
