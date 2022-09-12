package com.project.dto;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("product")
public class ProductDTO {
	private String productno;
	private String productname;
	private Date receivingdate;
	private int productstock;
	private int inquantity;
	private int cost;
	private int price;
	private String category;
	private String sizename;
	private String color;
	private String productphotono;
	private String photopath;
	private String colorname;
	private String sizekind;

	public ProductDTO() {
		super();
	}

	public ProductDTO(String productno, String productname, Date receivingdate, int productstock, int inquantity,
			int cost, int price, String category, String sizename, String color, String productphotono,
			String photopath, String colorname, String sizekind) {
		super();
		this.productno = productno;
		this.productname = productname;
		this.receivingdate = receivingdate;
		this.productstock = productstock;
		this.inquantity = inquantity;
		this.cost = cost;
		this.price = price;
		this.category = category;
		this.sizename = sizename;
		this.color = color;
		this.productphotono = productphotono;
		this.photopath = photopath;
		this.colorname = colorname;
		this.sizekind = sizekind;
	}

	public String getProductno() {
		return productno;
	}

	public void setProductno(String productno) {
		this.productno = productno;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public Date getReceivingdate() {
		return receivingdate;
	}

	public void setReceivingdate(Date receivingdate) {
		this.receivingdate = receivingdate;
	}

	public int getProductstock() {
		return productstock;
	}

	public void setProductstock(int productstock) {
		this.productstock = productstock;
	}

	public int getInquantity() {
		return inquantity;
	}

	public void setInquantity(int inquantity) {
		this.inquantity = inquantity;
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

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getSizename() {
		return sizename;
	}

	public void setSizename(String sizename) {
		this.sizename = sizename;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getProductphotono() {
		return productphotono;
	}

	public void setProductphotono(String productphotono) {
		this.productphotono = productphotono;
	}

	public String getPhotopath() {
		return photopath;
	}

	public void setPhotopath(String photopath) {
		this.photopath = photopath;
	}

	public String getColorname() {
		return colorname;
	}

	public void setColorname(String colorname) {
		this.colorname = colorname;
	}

	public String getSizekind() {
		return sizekind;
	}

	public void setSizekind(String sizekind) {
		this.sizekind = sizekind;
	}

	@Override
	public String toString() {
		return "ProductDTO [productno=" + productno + ", productname=" + productname + ", receivingdate="
				+ receivingdate + ", productstock=" + productstock + ", inquantity=" + inquantity + ", cost=" + cost
				+ ", price=" + price + ", category=" + category + ", sizename=" + sizename + ", color=" + color
				+ ", productphotono=" + productphotono + ", photopath=" + photopath + ", colorname=" + colorname
				+ ", sizekind=" + sizekind + "]";
	}

}