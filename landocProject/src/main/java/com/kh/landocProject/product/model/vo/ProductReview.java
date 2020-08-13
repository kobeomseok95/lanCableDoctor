package com.kh.landocProject.product.model.vo;

import java.io.Serializable;
import java.sql.Date;

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
	private int hpNo;
	private String hpName;
	private Date submitDate;
	private String clientProfile;
	private String drProfile;
	private String reviewFile;
	
	public ProductReview() {
	}
	
	public ProductReview(int pdNo, int reviewNo, String content, int orderNo, String cNo, String cNickname, String drNo,
			String drName, int hpNo, String hpName, Date submitDate, String clientProfile, String drProfile,
			String reviewFile) {
		this.pdNo = pdNo;
		this.reviewNo = reviewNo;
		this.content = content;
		this.orderNo = orderNo;
		this.cNo = cNo;
		this.cNickname = cNickname;
		this.drNo = drNo;
		this.drName = drName;
		this.hpNo = hpNo;
		this.hpName = hpName;
		this.submitDate = submitDate;
		this.clientProfile = clientProfile;
		this.drProfile = drProfile;
		this.reviewFile = reviewFile;
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

	public Date getSubmitDate() {
		return submitDate;
	}

	public void setSubmitDate(Date submitDate) {
		this.submitDate = submitDate;
	}
	
	public String getClientProfile() {
		return clientProfile;
	}

	public void setClientProfile(String clientProfile) {
		this.clientProfile = clientProfile;
	}

	public String getDrProfile() {
		return drProfile;
	}

	public void setDrProfile(String drProfile) {
		this.drProfile = drProfile;
	}

	public int getHpNo() {
		return hpNo;
	}

	public void setHpNo(int hpNo) {
		this.hpNo = hpNo;
	}

	public String getHpName() {
		return hpName;
	}

	public void setHpName(String hpName) {
		this.hpName = hpName;
	}
	
	public String getReviewFile() {
		return reviewFile;
	}

	public void setReviewFile(String reviewFile) {
		this.reviewFile = reviewFile;
	}

	@Override
	public String toString() {
		return "ProductReview [pdNo=" + pdNo + ", reviewNo=" + reviewNo + ", content=" + content + ", orderNo="
				+ orderNo + ", cNo=" + cNo + ", cNickname=" + cNickname + ", drNo=" + drNo + ", drName=" + drName
				+ ", hpNo=" + hpNo + ", hpName=" + hpName + ", submitDate=" + submitDate + ", clientProfile="
				+ clientProfile + ", drProfile=" + drProfile + ", reviewFile=" + reviewFile + "]";
	}
}
