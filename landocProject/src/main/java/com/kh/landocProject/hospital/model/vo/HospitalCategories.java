package com.kh.landocProject.hospital.model.vo;

import java.io.Serializable;

public class HospitalCategories implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 6637330469709307356L;
	private int hpNo;
	private int categoryNo;
	private String categoryName;
	
	public HospitalCategories() {
	}

	public HospitalCategories(int hpNo, int categoryNo, String categoryName) {
		this.hpNo = hpNo;
		this.categoryNo = categoryNo;
		this.categoryName = categoryName;
	}

	public int getHpNo() {
		return hpNo;
	}

	public void setHpNo(int hpNo) {
		this.hpNo = hpNo;
	}

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	@Override
	public String toString() {
		return "HospitalCategories [hpNo=" + hpNo + ", categoryNo=" + categoryNo + ", categoryName=" + categoryName
				+ "]";
	}
}
