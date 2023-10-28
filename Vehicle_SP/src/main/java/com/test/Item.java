package com.test;

import java.math.BigDecimal;

public class Item {
	
	private int itemId;
	private String itemName;
	private BigDecimal price;
	private String description;
	private String type;
	
	public Item(int itemId, String itemName, BigDecimal price, String description, String type) {
		super();
		this.itemId = itemId;
		this.itemName = itemName;
		this.price = price;
		this.description = description;
		this.type = type;
	}


	public int getItemId() {
		return itemId;
	}
	
	public String getType() {
		
		return type;
	}


	public String getItemName() {
		return itemName;
	}


	public BigDecimal getPrice() {
		return price;
	}

	public String getDescription() {
		return description;
	}


}
