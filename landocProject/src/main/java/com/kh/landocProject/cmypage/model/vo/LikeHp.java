package com.kh.landocProject.cmypage.model.vo;

import java.io.Serializable;

public class LikeHp implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -4793561637003452963L;
	private int likeNo;
	private int hpNo;
	private String hpName;
	private String hpPhone;
	private String hpPostcode;
	private String hpAddress;
	
	private double hpAvgRate;
	private String hpTime;
	private String proOrigin;
	private String proRename;
	private String proFilepath;
	private String CateName;

	private int reviewCount;
	
	public LikeHp() {
	}

	public LikeHp(int likeNo, int hpNo, String hpName, String hpPhone, String hpPostcode, String hpAddress,
			double hpAvgRate, String hpTime, String proOrigin, String proRename, String proFilepath, String cateName,
			int reviewCount) {
		this.likeNo = likeNo;
		this.hpNo = hpNo;
		this.hpName = hpName;
		this.hpPhone = hpPhone;
		this.hpPostcode = hpPostcode;
		this.hpAddress = hpAddress;
		this.hpAvgRate = hpAvgRate;
		this.hpTime = hpTime;
		this.proOrigin = proOrigin;
		this.proRename = proRename;
		this.proFilepath = proFilepath;
		CateName = cateName;
		this.reviewCount = reviewCount;
	}

	public int getLikeNo() {
		return likeNo;
	}

	public void setLikeNo(int likeNo) {
		this.likeNo = likeNo;
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

	public double getHpAvgRate() {
		return hpAvgRate;
	}

	public void setHpAvgRate(double hpAvgRate) {
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

	public int getReviewCount() {
		return reviewCount;
	}

	public void setReviewCount(int reviewCount) {
		this.reviewCount = reviewCount;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "LikeHp [likeNo=" + likeNo + ", hpNo=" + hpNo + ", hpName=" + hpName + ", hpPhone=" + hpPhone
				+ ", hpPostcode=" + hpPostcode + ", hpAddress=" + hpAddress + ", hpAvgRate=" + hpAvgRate + ", hpTime="
				+ hpTime + ", proOrigin=" + proOrigin + ", proRename=" + proRename + ", proFilepath=" + proFilepath
				+ ", CateName=" + CateName + ", reviewCount=" + reviewCount + "]";
	}


	


}
