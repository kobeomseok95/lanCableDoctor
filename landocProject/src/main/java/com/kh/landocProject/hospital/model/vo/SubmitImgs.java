package com.kh.landocProject.hospital.model.vo;

public class SubmitImgs {
	private int hpNo;
	private int photoCode;
	private String photoName;
	
	public SubmitImgs() {
	}

	

	public SubmitImgs(int hpNo, int photoCode, String photoName) {
		this.hpNo = hpNo;
		this.photoCode = photoCode;
		this.photoName = photoName;
	}



	public int getPhotoCode() {
		return photoCode;
	}

	public void setPhotoCode(int photoCode) {
		this.photoCode = photoCode;
	}

	public String getPhotoName() {
		return photoName;
	}

	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}
	public int getHpNo() {
		return hpNo;
	}

	public void setHpNo(int hpNo) {
		this.hpNo = hpNo;
	}

	@Override
	public String toString() {
		return "SubmitImgs [hpNo=" + hpNo + ", photoCode=" + photoCode + ", photoName=" + photoName + "]";
	}
	
	
}
