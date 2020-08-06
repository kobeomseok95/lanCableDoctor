package com.kh.landocProject.product.model.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class Product implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 4732738950087708984L;
	private int pdNo;
	private String pdName;
	private int originPrice;
	private int discountPer;
	private int sellPrice;
	private String volume;
	private String subExplicate;
	private String drugWay;
	private Date shelflife;
	private int recommendCount;
	private int categoryCode;
	private String categoryName;
	private int viewCount;
	List<ProductPhoto> photos;
	List<ProductQna> qnas;
	List<ProductReview> reviews;
	public Product() {
	}
	
	public Product(int pdNo, String pdName, int originPrice, int discountPer, int sellPrice, String volume,
			String subExplicate, String drugWay, Date shelflife, int recommendCount, int categoryCode,
			String categoryName, int viewCount, List<ProductPhoto> photos, List<ProductQna> qnas,
			List<ProductReview> reviews) {
		this.pdNo = pdNo;
		this.pdName = pdName;
		this.originPrice = originPrice;
		this.discountPer = discountPer;
		this.sellPrice = sellPrice;
		this.volume = volume;
		this.subExplicate = subExplicate;
		this.drugWay = drugWay;
		this.shelflife = shelflife;
		this.recommendCount = recommendCount;
		this.categoryCode = categoryCode;
		this.categoryName = categoryName;
		this.viewCount = viewCount;
		this.photos = photos;
		this.qnas = qnas;
		this.reviews = reviews;
	}

	public int getPdNo() {
		return pdNo;
	}
	public void setPdNo(int pdNo) {
		this.pdNo = pdNo;
	}
	public String getPdName() {
		return pdName;
	}
	public void setPdName(String pdName) {
		this.pdName = pdName;
	}
	public int getOriginPrice() {
		return originPrice;
	}
	public void setOriginPrice(int originPrice) {
		this.originPrice = originPrice;
	}
	public int getDiscountPer() {
		return discountPer;
	}
	public void setDiscountPer(int discountPer) {
		this.discountPer = discountPer;
	}
	public int getSellPrice() {
		return sellPrice;
	}
	public void setSellPrice(int sellPrice) {
		this.sellPrice = sellPrice;
	}
	public String getVolume() {
		return volume;
	}
	public void setVolume(String volume) {
		this.volume = volume;
	}
	public String getSubExplicate() {
		return subExplicate;
	}
	public void setSubExplicate(String subExplicate) {
		this.subExplicate = subExplicate;
	}
	public String getDrugWay() {
		return drugWay;
	}
	public void setDrugWay(String drugWay) {
		this.drugWay = drugWay;
	}
	public Date getShelflife() {
		return shelflife;
	}
	public void setShelflife(Date shelflife) {
		this.shelflife = shelflife;
	}
	public int getRecommendCount() {
		return recommendCount;
	}
	public void setRecommendCount(int recommendCount) {
		this.recommendCount = recommendCount;
	}
	public int getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(int categoryCode) {
		this.categoryCode = categoryCode;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public List<ProductPhoto> getPhotos() {
		return photos;
	}
	public void setPhotos(List<ProductPhoto> photos) {
		this.photos = photos;
	}
	public List<ProductQna> getQnas() {
		return qnas;
	}
	public void setQnas(List<ProductQna> qnas) {
		this.qnas = qnas;
	}
	public List<ProductReview> getReviews() {
		return reviews;
	}
	public void setReviews(List<ProductReview> reviews) {
		this.reviews = reviews;
	}
	public void printPhotos() {
		System.out.println("********************");
		for(ProductPhoto p : photos) {
			System.out.println(p);
		}
	}
	public void printQnas() {
		System.out.println("********************");
		for(ProductQna q : qnas) {
			System.out.println(q);
		}
	}
	public void printReviews() {
		System.out.println("********************");
		for(ProductReview r : reviews) {
			System.out.println(r);
		}
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	@Override
	public String toString() {
		return "Product [pdNo=" + pdNo + ", pdName=" + pdName + ", originPrice=" + originPrice + ", discountPer="
				+ discountPer + ", sellPrice=" + sellPrice + ", volume=" + volume + ", subExplicate=" + subExplicate
				+ ", drugWay=" + drugWay + ", shelflife=" + shelflife + ", recommendCount=" + recommendCount
				+ ", categoryCode=" + categoryCode + ", categoryName=" + categoryName + ", viewCount=" + viewCount
				+ ", photos=" + photos + ", qnas=" + qnas + ", reviews=" + reviews + "]";
	}
	
}
