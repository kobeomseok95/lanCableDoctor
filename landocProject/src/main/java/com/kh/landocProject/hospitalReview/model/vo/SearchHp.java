package com.kh.landocProject.hospitalReview.model.vo;

import java.io.Serializable;

public class SearchHp implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8222162224956063296L;
	
	private int hpNo;
	private String hpName;
	private String hpPhone;
	private String hpAddress;
	
	public SearchHp() {
		
	}
	

	public SearchHp(int hpNo, String hpName, String hpPhone, String hpAddress) {
		this.hpNo = hpNo;
		this.hpName = hpName;
		this.hpPhone = hpPhone;
		this.hpAddress = hpAddress;
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

	public String getHpAddress() {
		return hpAddress;
	}

	public void setHpAddress(String hpAddress) {
		this.hpAddress = hpAddress;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "SearchHp [hpNo=" + hpNo + ", hpName=" + hpName + ", hpPhone=" + hpPhone + ", hpAddress=" + hpAddress
				+ "]";
	}
	
	//범석 확인!
	
	
	
	
	
}
