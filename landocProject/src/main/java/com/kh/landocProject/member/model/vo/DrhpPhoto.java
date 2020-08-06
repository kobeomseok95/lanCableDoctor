package com.kh.landocProject.member.model.vo;

import java.io.Serializable;

public class DrhpPhoto implements Serializable {

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
	private String drhpOrigin1;
	private String drhpRename1;
	private String drhpOrigin2;
	private String drhpRename2;
	private String drhpOrigin3;
	private String drhpRename3;

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
	
	

	public DrhpPhoto(String drhpNo, String drhpOrigin, String drhpRename, String drhpFilepath, int phCode, String drNo,
			String hpNo, String drhpOrigin1, String drhpRename1, String drhpOrigin2, String drhpRename2,
			String drhpOrigin3, String drhpRename3) {
		this.drhpNo = drhpNo;
		this.drhpOrigin = drhpOrigin;
		this.drhpRename = drhpRename;
		this.drhpFilepath = drhpFilepath;
		this.phCode = phCode;
		this.drNo = drNo;
		this.hpNo = hpNo;
		this.drhpOrigin1 = drhpOrigin1;
		this.drhpRename1 = drhpRename1;
		this.drhpOrigin2 = drhpOrigin2;
		this.drhpRename2 = drhpRename2;
		this.drhpOrigin3 = drhpOrigin3;
		this.drhpRename3 = drhpRename3;
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
	
	

	public String getDrhpOrigin1() {
		return drhpOrigin1;
	}

	public void setDrhpOrigin1(String drhpOrigin1) {
		this.drhpOrigin1 = drhpOrigin1;
	}

	public String getDrhpRename1() {
		return drhpRename1;
	}

	public void setDrhpRename1(String drhpRename1) {
		this.drhpRename1 = drhpRename1;
	}

	public String getDrhpOrigin2() {
		return drhpOrigin2;
	}

	public void setDrhpOrigin2(String drhpOrigin2) {
		this.drhpOrigin2 = drhpOrigin2;
	}

	public String getDrhpRename2() {
		return drhpRename2;
	}

	public void setDrhpRename2(String drhpRename2) {
		this.drhpRename2 = drhpRename2;
	}

	public String getDrhpOrigin3() {
		return drhpOrigin3;
	}

	public void setDrhpOrigin3(String drhpOrigin3) {
		this.drhpOrigin3 = drhpOrigin3;
	}

	public String getDrhpRename3() {
		return drhpRename3;
	}

	public void setDrhpRename3(String drhpRename3) {
		this.drhpRename3 = drhpRename3;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "DrhpPhoto [drhpNo=" + drhpNo + ", drhpOrigin=" + drhpOrigin + ", drhpRename=" + drhpRename
				+ ", drhpFilepath=" + drhpFilepath + ", phCode=" + phCode + ", drNo=" + drNo + ", hpNo=" + hpNo
				+ ", drhpOrigin1=" + drhpOrigin1 + ", drhpRename1=" + drhpRename1 + ", drhpOrigin2=" + drhpOrigin2
				+ ", drhpRename2=" + drhpRename2 + ", drhpOrigin3=" + drhpOrigin3 + ", drhpRename3=" + drhpRename3
				+ "]";
	}

}
