package com.test;

public class Shops {
	
	private int shopId;
	private String shopName;
	private String shopAddress;
	private String shopOwner;
	private String phone;
	private String Email;
	private String username;
	private String password;
	
	public Shops(int shopId, String shopName, String shopAddress, String shopOwner, String phone, String email,
			String username, String password) {
		
		this.shopId = shopId;
		this.shopName = shopName;
		this.shopAddress = shopAddress;
		this.shopOwner = shopOwner;
		this.phone = phone;
		this.Email = email;
		this.username = username;
		this.password = password;
	}

	public int getShopId() {
		return shopId;
	}

	
	public String getShopName() {
		return shopName;
	}



	public String getShopAddress() {
		return shopAddress;
	}


	public String getShopOwner() {
		return shopOwner;
	}


	public String getPhone() {
		return phone;
	}


	public String getEmail() {
		return Email;
	}


	public String getUsername() {
		return username;
	}

	
	public String getPassword() {
		return password;
	}
	

}
