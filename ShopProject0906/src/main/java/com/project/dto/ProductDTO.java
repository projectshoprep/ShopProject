package com.project.dto;

import org.apache.ibatis.type.Alias;

@Alias("Product")
public class ProductDTO {
	private String productno;
	private String color;
	private String category;
	private String productname;
	private String receivingdate;
	private String sizename;
	private String inquantity;
	private int productstock;
	private int cost;
	private int price;
	
	public ProductDTO() {
		super();
	}
	public ProductDTO(String productno, String color, String category, String productname, String receivingdate,
			String sizename, String inquantity, int productstock, int cost, int price) {
		super();
		this.productno = productno;
		this.color = color;
		this.category = category;
		this.productname = productname;
		this.receivingdate = receivingdate;
		this.sizename = sizename;
		this.inquantity = inquantity;
		this.productstock = productstock;
		this.cost = cost;
		this.price = price;
	}
	public String getProductno() {
		return productno;
	}
	public void setProductno(String productno) {
		this.productno = productno;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getReceivingdate() {
		return receivingdate;
	}
	public void setReceivingdate(String receivingdate) {
		this.receivingdate = receivingdate;
	}
	public String getsizename() {
		return sizename;
	}
	public void setsizename(String sizename) {
		this.sizename = sizename;
	}
	public String getInquantity() {
		return inquantity;
	}
	public void setInquantity(String inquantity) {
		this.inquantity = inquantity;
	}
	public int getProductstock() {
		return productstock;
	}
	public void setProductstock(int productstock) {
		this.productstock = productstock;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "ProductDTO [productno=" + productno + ", color=" + color + ", category=" + category + ", productname="
				+ productname + ", receivingdate=" + receivingdate + ", sizename=" + sizename + ", inquantity=" + inquantity
				+ ", productstock=" + productstock + ", cost=" + cost + ", price=" + price + "]";
	}
	
	
	
   
}
