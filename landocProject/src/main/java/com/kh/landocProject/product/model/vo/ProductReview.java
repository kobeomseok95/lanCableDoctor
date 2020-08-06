package com.kh.landocProject.product.model.vo;

import java.io.Serializable;

public class ProductReview implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 6605244872116028180L;
	private int pdNo;
	private int reviewNo;
	private String content;
	private int orderNo;
	private String cNo;
	private String drNo;
	public ProductReview() {
	}
	public ProductReview(int reviewNo, String content, int orderNo, int pdNo, String cNo, String drNo) {
		this.reviewNo = reviewNo;
		this.content = content;
		this.orderNo = orderNo;
		this.pdNo = pdNo;
		this.cNo = cNo;
		this.drNo = drNo;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public int getPdNo() {
		return pdNo;
	}
	public void setPdNo(int pdNo) {
		this.pdNo = pdNo;
	}
	public String getcNo() {
		return cNo;
	}
	public void setcNo(String cNo) {
		this.cNo = cNo;
	}
	public String getDrNo() {
		return drNo;
	}
	public void setDrNo(String drNo) {
		this.drNo = drNo;
	}
	@Override
	public String toString() {
		return "ProductReview [reviewNo=" + reviewNo + ", content=" + content + ", orderNo=" + orderNo + ", pdNo="
				+ pdNo + ", cNo=" + cNo + ", drNo=" + drNo + "]";
	}
}
