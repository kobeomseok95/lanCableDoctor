package com.kh.landocProject.member.model.vo;

import java.io.Serializable;

public class JoinHospital implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -8249333400090761561L;
	
	private int hpNo;
	private String hpName;
	private String hpStatus;
	protected JoinHospital() {
	}
	protected JoinHospital(int hpNo, String hpName) {
		this.hpNo = hpNo;
		this.hpName = hpName;
	}
	
	protected JoinHospital(int hpNo, String hpName, String hpStatus) {
		this.hpNo = hpNo;
		this.hpName = hpName;
		this.hpStatus = hpStatus;
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
		return "JoinHospital [hpNo=" + hpNo + ", hpName=" + hpName + ", hpStatus=" + hpStatus + "]";
	}
	
	
}
