package com.kh.landocProject.cmypage.model.vo;

import java.io.Serializable;

public class LikeHp implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -4793561637003452963L;

	private int hpNo;
	private String hpName;
	private String hpPhone;
	private String hpPostcode;
	private String hpAddress;
	private String hpX;
	private String hpY;
	private int hpReview;
	private int hpAvgRate;
	private String hpTime;
	private String proOrigin;
	private String proRename;
	private String proFilepath;
	private String CateName;

	
	// 병원검색 위한 값
	private String area; 	// 지역
	public LikeHp() {
	}
	public LikeHp(int hpNo, String hpName, String hpPhone, String hpPostcode, String hpAddress, String hpX, String hpY,
			int hpReview, int hpAvgRate, String hpTime, String proOrigin, String proRename, String proFilepath,
			String cateName, String area) {
		this.hpNo = hpNo;
		this.hpName = hpName;
		this.hpPhone = hpPhone;
		this.hpPostcode = hpPostcode;
		this.hpAddress = hpAddress;
		this.hpX = hpX;
		this.hpY = hpY;
		this.hpReview = hpReview;
		this.hpAvgRate = hpAvgRate;
		this.hpTime = hpTime;
		this.proOrigin = proOrigin;
		this.proRename = proRename;
		this.proFilepath = proFilepath;
		CateName = cateName;
		this.area = area;
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
	public String getHpPhone() {
		return hpPhone;
	}
	public void setHpPhone(String hpPhone) {
		this.hpPhone = hpPhone;
	}
	public String getHpPostcode() {
		return hpPostcode;
	}
	public void setHpPostcode(String hpPostcode) {
		this.hpPostcode = hpPostcode;
	}
	public String getHpAddress() {
		return hpAddress;
	}
	public void setHpAddress(String hpAddress) {
		this.hpAddress = hpAddress;
	}
	public String getHpX() {
		return hpX;
	}
	public void setHpX(String hpX) {
		this.hpX = hpX;
	}
	public String getHpY() {
		return hpY;
	}
	public void setHpY(String hpY) {
		this.hpY = hpY;
	}
	public int getHpReview() {
		return hpReview;
	}
	public void setHpReview(int hpReview) {
		this.hpReview = hpReview;
	}
	public int getHpAvgRate() {
		return hpAvgRate;
	}
	public void setHpAvgRate(int hpAvgRate) {
		this.hpAvgRate = hpAvgRate;
	}
	public String getHpTime() {
		return hpTime;
	}
	public void setHpTime(String hpTime) {
		this.hpTime = hpTime;
	}
	public String getProOrigin() {
		return proOrigin;
	}
	public void setProOrigin(String proOrigin) {
		this.proOrigin = proOrigin;
	}
	public String getProRename() {
		return proRename;
	}
	public void setProRename(String proRename) {
		this.proRename = proRename;
	}
	public String getProFilepath() {
		return proFilepath;
	}
	public void setProFilepath(String proFilepath) {
		this.proFilepath = proFilepath;
	}
	public String getCateName() {
		return CateName;
	}
	public void setCateName(String cateName) {
		CateName = cateName;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "LikeHp [hpNo=" + hpNo + ", hpName=" + hpName + ", hpPhone=" + hpPhone + ", hpPostcode=" + hpPostcode
				+ ", hpAddress=" + hpAddress + ", hpX=" + hpX + ", hpY=" + hpY + ", hpReview=" + hpReview
				+ ", hpAvgRate=" + hpAvgRate + ", hpTime=" + hpTime + ", proOrigin=" + proOrigin + ", proRename="
				+ proRename + ", proFilepath=" + proFilepath + ", CateName=" + CateName + ", area=" + area + "]";
	}

	
	


}
