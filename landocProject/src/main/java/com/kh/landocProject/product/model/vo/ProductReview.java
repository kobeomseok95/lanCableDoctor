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
	private String cNickname;
	private String drNo;
	private String drName;
	
	public ProductReview() {
	}

	public ProductReview(int pdNo, int reviewNo, String content, int orderNo, String cNo, String cNickname, String drNo,
			String drName) {
		this.pdNo = pdNo;
		this.reviewNo = reviewNo;
		this.content = content;
		this.orderNo = orderNo;
		this.cNo = cNo;
		this.cNickname = cNickname;
		this.drNo = drNo;
		this.drName = drName;
	}

	public int getPdNo() {
		return pdNo;
	}

	public void setPdNo(int pdNo) {
		this.pdNo = pdNo;
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

	public String getcNo() {
		return cNo;
	}

	public void setcNo(String cNo) {
		this.cNo = cNo;
	}

	public String getcNickname() {
		return cNickname;
	}

	public void setcNickname(String cNickname) {
		this.cNickname = cNickname;
	}

	public String getDrNo() {
		return drNo;
	}

	public void setDrNo(String drNo) {
		this.drNo = drNo;
	}

	public String getDrName() {
		return drName;
	}

	public void setDrName(String drName) {
		this.drName = drName;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ProductReview [pdNo=" + pdNo + ", reviewNo=" + reviewNo + ", content=" + content + ", orderNo="
				+ orderNo + ", cNo=" + cNo + ", cNickname=" + cNickname + ", drNo=" + drNo + ", drName=" + drName + "]";
	}
}
