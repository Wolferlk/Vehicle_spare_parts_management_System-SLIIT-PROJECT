package com.test;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AdminDButill {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List<admin> validate(String UserName,String Password){
		
		ArrayList<admin> adm = new ArrayList<>();
		
		try {
			con = DbConn.getConnection();
	        stmt = con.createStatement();			
			String sql = "select * from admins where username = '"+UserName+"' and password ='"+Password+"' ";
			ResultSet rs = stmt.executeQuery(sql);
			
			
			if(rs.next()) {
				int addid = rs.getInt(1);
				String addnic = rs.getString(2);
				String addname = rs.getString(3);
				String addusername = rs.getString(4);
				String addpassword = rs.getString(5);
				
				
			admin ad = new admin(addid,addnic,addname,addusername,addpassword);
				adm.add(ad);
			}
			
			 
		}
		catch(Exception e) {
			
			e.printStackTrace();
			
		}		
		
		return adm;
				
	}
	
	public static List<Item> getItem(){
		
		ArrayList<Item> it = new ArrayList<>();
		
		try {
			con = DbConn.getConnection();
	        stmt = con.createStatement();			
			String sql = "select DISTINCT * from items";
			rs = stmt.executeQuery(sql);
			
			
			while(rs.next()) {
				int itemId = rs.getInt(1);
				String name = rs.getString(2);
				BigDecimal price = rs.getBigDecimal(3);
				String des = rs.getString(4);
				String type = rs.getString(5);
				
				
			Item item = new Item(itemId, name, price, des, type);
			it.add(item);
			}
			
			 
		}
		catch(Exception e) {
			
			e.printStackTrace();
			
		}		
		
		return it;
				
	}
	
	public static List<Item> searchItem(String desc){
		
		ArrayList<Item> it = new ArrayList<>();
		
		try {
			con = DbConn.getConnection();
	        stmt = con.createStatement();			
			String sql = "select DISTINCT * from items where item_name LIKE '%"+desc+"%' OR description LIKE '%"+desc+"%'";
			rs = stmt.executeQuery(sql);
			
			
			while(rs.next()) {
				int itemId = rs.getInt(1);
				String name = rs.getString(2);
				BigDecimal price = rs.getBigDecimal(3);
				String des = rs.getString(4);
				String type = rs.getString(5);
				
				
			Item item = new Item(itemId, name, price, des, type);
			it.add(item);
			}
			
			 
		}
		catch(Exception e) {
			
			e.printStackTrace();
			
		}		
		
		return it;
				
	}
	
	public static List<Shops> getShopDetails(){
		
		ArrayList<Shops> it = new ArrayList<>();
		
		try {
			con = DbConn.getConnection();
	        stmt = con.createStatement();			
			String sql = "select * from shops";
			rs = stmt.executeQuery(sql);
			
			
			while(rs.next()) {
				int shopId = rs.getInt(1);
				String name = rs.getString(2);
				String saddress = rs.getString(3);
				String sowner = rs.getString(4);
				String phone = rs.getString(5);
				String email = rs.getString(6);
				String uname = rs.getString(7);
				String pass = rs.getString(8);
				
			Shops shop = new Shops(shopId, name, saddress, sowner, phone, email, uname, pass);
			it.add(shop);
			}
			
			 
		}
		catch(Exception e) {
			
			e.printStackTrace();
			
		}		
		
		return it;
				
	}
	
	public static boolean updateShops(int id, String name, String address, String owner, String phone, String email, String username, String password ) {
		
		boolean isSuccess = false;
		
		try {
			con = DbConn.getConnection();
			stmt = con.createStatement();
			String sql = "update shops set shop_name='"+name+"', shop_address='"+address+"', shop_owner='"+owner+"', phone='"+phone+"', email='"+email+"', username='"+username+"', password='"+password+"' where shop_id="+id+";";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean deleteShops(int shopId) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DbConn.getConnection();
			stmt = con.createStatement();
			String sql = "DELETE FROM shops WHERE shop_id='"+shopId+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				
				isSuccess = true;
			}else {
				
				isSuccess = false;
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean AddShops(String name, String address, String owner, String phone, String email, String username, String password) {
		
		isSuccess = false;
		
		try {
	        con = DbConn.getConnection();
	        stmt = con.createStatement();
	        
	        String sql = "INSERT INTO shops VALUES(0, '"+name+"', '"+address+"', '"+owner+"', '"+phone+"', '"+email+"', '"+username+"', '"+password+"');";
	        
	        int rs = stmt.executeUpdate(sql);
	        
	        if (rs > 0) {
	            isSuccess = true;
	        } else {
	            isSuccess = false;
	        }
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
	    return isSuccess;

	    }
	
	public static boolean AddItems(String name, double price, String description, String type ) {
		
		isSuccess = false;
		
		try {
	        con = DbConn.getConnection();
	        stmt = con.createStatement();
	        
	        String sql = "INSERT INTO items VALUES(0, '"+name+"', '"+price+"', '"+description+"', '"+type+"');";
	        
	        int rs = stmt.executeUpdate(sql);
	        
	        if (rs > 0) {
	            isSuccess = true;
	        } else {
	            isSuccess = false;
	        }
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
	    return isSuccess;

	    }
}
