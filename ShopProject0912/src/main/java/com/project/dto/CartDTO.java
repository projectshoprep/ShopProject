package com.project.dto;

import org.apache.ibatis.type.Alias;

@Alias("cart")
public class CartDTO {
	private String photopath;
	private String productname;
	private int price;
	private int orderquantity;

	public CartDTO() {
	}

	public CartDTO(String photopath, String productname, int price, int orderquantity) {
		super();
		this.photopath = photopath;
		this.productname = productname;
		this.price = price;
		this.orderquantity = orderquantity;
	}

	public String getPhotopath() {
		return photopath;
	}

	public void setPhotopath(String photopath) {
		this.photopath = photopath;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getOrderquantity() {
		return orderquantity;
	}

	public void setOrderquantity(int orderquantity) {
		this.orderquantity = orderquantity;
	}

	@Override
	public String toString() {
		return "CartDTO [photopath=" + photopath + ", productname=" + productname + ", price=" + price
				+ ", orderquantity=" + orderquantity + "]";
	}

}
