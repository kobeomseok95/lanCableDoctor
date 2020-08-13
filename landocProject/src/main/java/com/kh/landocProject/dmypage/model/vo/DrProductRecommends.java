package com.kh.landocProject.dmypage.model.vo;

import java.sql.Date;

public class DrProductRecommends {
	private int drrmNo;
	private String comment;
	private int pdNo;
	private String drNo;
	private String drName;
	private String profileFileName;
	private int hpNo;
	private String hpName;
	private Date submitDate;
	public DrProductRecommends() {
	}
	public DrProductRecommends(int drrmNo, String comment, int pdNo, String drNo, String drName, String profileFileName,
			int hpNo, String hpName, Date submitDate) {
		this.drrmNo = drrmNo;
		this.comment = comment;
		this.pdNo = pdNo;
		this.drNo = drNo;
		this.drName = drName;
		this.profileFileName = profileFileName;
		this.hpNo = hpNo;
		this.hpName = hpName;
		this.submitDate = submitDate;
	}
	public int getDrrmNo() {
		return drrmNo;
	}
	public void setDrrmNo(int drrmNo) {
		this.drrmNo = drrmNo;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public int getPdNo() {
		return pdNo;
	}
	public void setPdNo(int pdNo) {
		this.pdNo = pdNo;
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
	public String getProfileFileName() {
		return profileFileName;
	}
	public void setProfileFileName(String profileFileName) {
		this.profileFileName = profileFileName;
	}
	public int getHpNo() {
		return hpNo;
	}
	public void setHpNo(int hpNo) {
		this.hpNo = hpNo;
	}
	public Date getSubmitDate() {
		return submitDate;
	}
	public void setSubmitDate(Date submitDate) {
		this.submitDate = submitDate;
	}
	public String getHpName() {
		return hpName;
	}
	public void setHpName(String hpName) {
		this.hpName = hpName;
	}

	@Override
	public String toString() {
		return "DrProductRecommends [drrmNo=" + drrmNo + ", comment=" + comment + ", pdNo=" + pdNo + ", drNo=" + drNo
				+ ", drName=" + drName + ", profileFileName=" + profileFileName + ", hpNo=" + hpNo + ", hpName="
				+ hpName + ", submitDate=" + submitDate + "]";
	}
}
