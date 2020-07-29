package com.kh.landocProject.member.model.vo;

import java.io.Serializable;

public class ProfilePhoto implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -3124288651364253290L;
	
	private int proNo;
	private String proOrigin;
	private String proRename;
	private String proFilepath;
	private String drNo;
	private String cNo;
	private int  hpNo;
	public ProfilePhoto() {
		
	}
	public ProfilePhoto(int proNo, String proOrigin, String proRename, String proFilepath, String drNo, String cNo,
			int hpNo) {
		this.proNo = proNo;
		this.proOrigin = proOrigin;
		this.proRename = proRename;
		this.proFilepath = proFilepath;
		this.drNo = drNo;
		this.cNo = cNo;
		this.hpNo = hpNo;
	}
	public int getProNo() {
		return proNo;
	}
	public void setProNo(int proNo) {
		this.proNo = proNo;
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
	public String getDrNo() {
		return drNo;
	}
	public void setDrNo(String drNo) {
		this.drNo = drNo;
	}
	public String getcNo() {
		return cNo;
	}
	public void setcNo(String cNo) {
		this.cNo = cNo;
	}
	public int getHpNo() {
		return hpNo;
	}
	public void setHpNo(int hpNo) {
		this.hpNo = hpNo;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "ProfilePhoto [proNo=" + proNo + ", proOrigin=" + proOrigin + ", proRename=" + proRename
				+ ", proFilepath=" + proFilepath + ", drNo=" + drNo + ", cNo=" + cNo + ", hpNo=" + hpNo + "]";
	}
	
	
}
