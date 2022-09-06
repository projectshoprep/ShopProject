package com.project.dto;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("product")
public class ProductDTO {
   private String productNo;
   private String productName;
   private Date receivingDate;
   private int productStock;
   private int inquantity;
   private int cost;
   private int price;
   private String categoryNo;
   private String sizeNo;
   private String colorNo;
   private String productPhotoNo;
   private String photoPath;
   private String colorName;
   private String sizeKind;
   public String getProductNo() {
      return productNo;
   }
   public void setProductNo(String productNo) {
      this.productNo = productNo;
   }
   public String getProductName() {
      return productName;
   }
   public void setProductName(String productName) {
      this.productName = productName;
   }
   public Date getReceivingDate() {
      return receivingDate;
   }
   public void setReceiving(Date receivingDate) {
      this.receivingDate = receivingDate;
   }
   public int getProductStock() {
      return productStock;
   }
   public void setProductStock(int productStock) {
      this.productStock = productStock;
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
   public String getCategoryNo() {
      return categoryNo;
   }
   public void setCategoryNo(String categoryNo) {
      this.categoryNo = categoryNo;
   }
   public String getSizeNo() {
      return sizeNo;
   }
   public void setSizeNo(String sizeNo) {
      this.sizeNo = sizeNo;
   }
   public String getColorNo() {
      return colorNo;
   }
   public void setColorNo(String colorNo) {
      this.colorNo = colorNo;
   }
   public String getProductPhotoNo() {
      return productPhotoNo;
   }
   public void setProductPhotoNo(String productPhotoNo) {
      this.productPhotoNo = productPhotoNo;
   }
   public String getPhotoPath() {
      return photoPath;
   }
   public void setPhotoPath(String photoPath) {
      this.photoPath = photoPath;
   }
   public String getColorName() {
      return colorName;
   }
   public void setColorName(String colorName) {
      this.colorName = colorName;
   }
   public String getSizeKind() {
      return sizeKind;
   }
   public void setSizeKind(String sizeKind) {
      this.sizeKind = sizeKind;
   }
   @Override
   public String toString() {
      return "ProductDTO [productNo=" + productNo + ", productName=" + productName + ", receivingDate=" + receivingDate
            + ", productStock=" + productStock + ", inquantity=" + inquantity + ", cost=" + cost + ", price="
            + price + ", categoryNo=" + categoryNo + ", sizeNo=" + sizeNo + ", colorNo=" + colorNo
            + ", productPhotoNo=" + productPhotoNo + ", photoPath=" + photoPath + ", colorName=" + colorName
            + ", sizeKind=" + sizeKind + "]";
   }
}