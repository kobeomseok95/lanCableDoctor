package com.kh.landocProject.member.model.vo;

import java.io.Serializable;

public class DrhpPhoto implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -532923500494474721L;
	
	private String drhpNo;
	private String drhpOrigin;
	private String drhpRename;
	private String drhpFilepath;
	private int phCode;
	private String drNo;
	private String hpNo;
	public DrhpPhoto() {
	}
	public DrhpPhoto(String drhpNo, String drhpOrigin, String drhpRename, String drhpFilepath, int phCode, String drNo,
			String hpNo) {
		this.drhpNo = drhpNo;
		this.drhpOrigin = drhpOrigin;
		this.drhpRename = drhpRename;
		this.drhpFilepath = drhpFilepath;
		this.phCode = phCode;
		this.drNo = drNo;
		this.hpNo = hpNo;
	}
	public String getDrhpNo() {
		return drhpNo;
	}
	public void setDrhpNo(String drhpNo) {
		this.drhpNo = drhpNo;
	}
	public String getDrhpOrigin() {
		return drhpOrigin;
	}
	public void setDrhpOrigin(String drhpOrigin) {
		this.drhpOrigin = drhpOrigin;
	}
	public String getDrhpRename() {
		return drhpRename;
	}
	public void setDrhpRename(String drhpRename) {
		this.drhpRename = drhpRename;
	}
	public String getDrhpFilepath() {
		return drhpFilepath;
	}
	public void setDrhpFilepath(String drhpFilepath) {
		this.drhpFilepath = drhpFilepath;
	}
	public int getPhCode() {
		return phCode;
	}
	public void setPhCode(int phCode) {
		this.phCode = phCode;
	}
	public String getDrNo() {
		return drNo;
	}
	public void setDrNo(String drNo) {
		this.drNo = drNo;
	}
	public String getHpNo() {
		return hpNo;
	}
	public void setHpNo(String hpNo) {
		this.hpNo = hpNo;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "DrhpPhoto [drhpNo=" + drhpNo + ", drhpOrigin=" + drhpOrigin + ", drhpRename=" + drhpRename
				+ ", drhpFilepath=" + drhpFilepath + ", phCode=" + phCode + ", drNo=" + drNo + ", hpNo=" + hpNo + "]";
	}
	
	
}
