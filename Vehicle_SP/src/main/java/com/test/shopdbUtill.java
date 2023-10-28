package com.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class shopdbUtill {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;


    public static boolean addsop(String name, String address, String owner, String phone, String email, String username, String password) {
	
	boolean isSuccess = false;
	
	try {
		
		con = DbConn.getConnection();
		stmt = con.createStatement();
	    String sql = "insert into shops values(0,'"+name+"','"+address+"','"+owner+"','"+phone+"','"+email+"','"+username+"','"+password+"')";
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		} else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}
    
    
    public static List<Shops> validate(String username, String password) {
        List<Shops> shopDetails = new ArrayList<>();

        try {
            con = DbConn.getConnection();
            stmt = con.createStatement();
            String sql = "SELECT * FROM shops WHERE username = '"+username+"' and password ='"+password+"'";
            ResultSet rs = stmt.executeQuery(sql);
            
          
            if(rs.next()) {
            	int id = rs.getInt(1);
				String s_name = rs.getString(2);
				String s_add = rs.getString(3);
				String S_owner = rs.getString(4);
				String S_phone = rs.getString(5);
				String s_mail= rs.getString(6);
				String S_user = rs.getString(7);
				String S_passw = rs.getString(8);

				
                Shops shop = new Shops(id, s_name, s_add, S_owner, S_phone, s_mail, S_user, S_passw); // Create a Shop object with retrieved data
                shopDetails.add(shop);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } 
        return shopDetails;
    }
    
    
    
    
}