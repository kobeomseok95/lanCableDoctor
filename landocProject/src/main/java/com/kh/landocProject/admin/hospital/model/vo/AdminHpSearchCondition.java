package com.kh.landocProject.admin.hospital.model.vo;

import java.io.Serializable;

public class AdminHpSearchCondition implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6065562632612290022L;
	
	private String none;
	private int hpNo;
	private String hpName;
	private int hpCateCode;
	private String hpCateName;
	private String hpStatus;

	
	public AdminHpSearchCondition() {
	}
	public AdminHpSearchCondition(String none, int hpNo, String hpName, int hpCateCode, String hpCateName,
			String hpStatus) {
		this.none = none;
		this.hpNo = hpNo;
		this.hpName = hpName;
		this.hpCateCode = hpCateCode;
		this.hpCateName = hpCateName;
		this.hpStatus = hpStatus;
	}
	public String getNone() {
		return none;
	}
	public void setNone(String none) {
		this.none = none;
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
	public int getHpCateCode() {
		return hpCateCode;
	}
	public void setHpCateCode(int hpCateCode) {
		this.hpCateCode = hpCateCode;
	}
	public String getHpCateName() {
		return hpCateName;
	}
	public void setHpCateName(String hpCateName) {
		this.hpCateName = hpCateName;
	}
	public String getHpStatus() {
		return hpStatus;
	}
	public void setHpStatus(String hpStatus) {
		this.hpStatus = hpStatus;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "AdminHpSearchCondition [none=" + none + ", hpNo=" + hpNo + ", hpName=" + hpName + ", hpCateCode="
				+ hpCateCode + ", hpCateName=" + hpCateName + ", hpStatus=" + hpStatus + "]";
	}
	
	

}
