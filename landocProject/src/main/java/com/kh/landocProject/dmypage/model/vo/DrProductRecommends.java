package com.kh.landocProject.dmypage.model.vo;

import java.sql.Date;

public class DrProductRecommends {
	private int drrmNo;
	private String comment;
	private int pdNo;
	private String drNo;
	private String drName;
	private String profileFileName;
	private String hpNo;
	private Date submitDate;
	public DrProductRecommends() {
	}
	public DrProductRecommends(int drrmNo, String comment, int pdNo, String drNo, String drName, String profileFileName,
			String hpNo, Date submitDate) {
		this.drrmNo = drrmNo;
		this.comment = comment;
		this.pdNo = pdNo;
		this.drNo = drNo;
		this.drName = drName;
		this.profileFileName = profileFileName;
		this.hpNo = hpNo;
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
	public String getHpNo() {
		return hpNo;
	}
	public void setHpNo(String hpNo) {
		this.hpNo = hpNo;
	}
	public Date getSubmitDate() {
		return submitDate;
	}
	public void setSubmitDate(Date submitDate) {
		this.submitDate = submitDate;
	}
	@Override
	public String toString() {
		return "DrProductRecommends [drrmNo=" + drrmNo + ", comment=" + comment + ", pdNo=" + pdNo + ", drNo=" + drNo
				+ ", drName=" + drName + ", profileFileName=" + profileFileName + ", hpNo=" + hpNo + ", submitDate="
				+ submitDate + "]";
	}
}
