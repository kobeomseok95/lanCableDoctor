package com.kh.landocProject.cmypage.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class PdReview implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 6470713093132428807L;
	private String pdReviewContent;
	private int orderNo;
	private int pdNo;
	private Date orderDate;
	private String pdName;
	private int pdReviewNo;
	public PdReview() {
	}
	public PdReview(String pdReviewContent, int orderNo, int pdNo, Date orderDate, String pdName, int pdReviewNo) {
		super();
		this.pdReviewContent = pdReviewContent;
		this.orderNo = orderNo;
		this.pdNo = pdNo;
		this.orderDate = orderDate;
		this.pdName = pdName;
		this.pdReviewNo = pdReviewNo;
	}
	public String getPdReviewContent() {
		return pdReviewContent;
	}
	public void setPdReviewContent(String pdReviewContent) {
		this.pdReviewContent = pdReviewContent;
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
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public String getPdName() {
		return pdName;
	}
	public void setPdName(String pdName) {
		this.pdName = pdName;
	}
	public int getPdReviewNo() {
		return pdReviewNo;
	}
	public void setPdReviewNo(int pdReviewNo) {
		this.pdReviewNo = pdReviewNo;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "PdReview [pdReviewContent=" + pdReviewContent + ", orderNo=" + orderNo + ", pdNo=" + pdNo
				+ ", orderDate=" + orderDate + ", pdName=" + pdName + ", pdReviewNo=" + pdReviewNo + "]";
	}
	
	
	
	
}
