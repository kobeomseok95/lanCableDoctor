package com.kh.landocProject.dmypage.model.vo;

public class DrProductRecommends {
	private int drrmNo;
	private String comment;
	private int pdNo;
	private String drNo;
	private String drName;
	public DrProductRecommends() {
	}
	public DrProductRecommends(int drrmNo, String comment, int pdNo, String drNo, String drName) {
		this.drrmNo = drrmNo;
		this.comment = comment;
		this.pdNo = pdNo;
		this.drNo = drNo;
		this.drName = drName;
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
	@Override
	public String toString() {
		return "DrProductRecommends [drrmNo=" + drrmNo + ", comment=" + comment + ", pdNo=" + pdNo + ", drNo=" + drNo
				+ ", drName=" + drName + "]";
	}
}
