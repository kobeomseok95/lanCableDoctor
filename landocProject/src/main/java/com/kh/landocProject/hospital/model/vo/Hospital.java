package com.kh.landocProject.hospital.model.vo;

import java.util.Arrays;

public class Hospital {
	private int hpNo;
	private String hpName;
	private String hpPhone;
	private String postCode;
	private String address;
	private int[] categoryCode;
	
	public Hospital() {
	}


	public Hospital(int hpNo, String hpName, String hpPhone, String postCode, String address, int[] categoryCode) {
		this.hpNo = hpNo;
		this.hpName = hpName;
		this.hpPhone = hpPhone;
		this.postCode = postCode;
		this.address = address;
		this.categoryCode = categoryCode;
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


	public String getPostCode() {
		return postCode;
	}


	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public int[] getCategoryCode() {
		return categoryCode;
	}


	public void setCategoryCode(int[] categoryCode) {
		this.categoryCode = categoryCode;
	}
	
	public int getHpNo() {
		return hpNo;
	}

	public void setHpNo(int hpNo) {
		this.hpNo = hpNo;
	}
	
	@Override
	public String toString() {
		return "Hospital [hpNo=" + hpNo + ", hpName=" + hpName + ", hpPhone=" + hpPhone + ", postCode=" + postCode
				+ ", address=" + address + ", categoryCode=" + Arrays.toString(categoryCode) + "]";
	}
	
	
}
