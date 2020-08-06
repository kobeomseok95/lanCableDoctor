package com.kh.landocProject.product.model.vo;

import java.io.Serializable;

public class ProductPhoto implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -2211001370999420262L;
	private int pdNo;
	private int pdpNo;
	private String fileName;
	private String filePath;
	private int photoType;
	public ProductPhoto() {
	}
	public ProductPhoto(int pdNo, int pdpNo, String fileName, String filePath, int photoType) {
		this.pdNo = pdNo;
		this.pdpNo = pdpNo;
		this.fileName = fileName;
		this.filePath = filePath;
		this.photoType = photoType;
	}
	public int getPdNo() {
		return pdNo;
	}
	public void setPdNo(int pdNo) {
		this.pdNo = pdNo;
	}
	public int getPdpNo() {
		return pdpNo;
	}
	public void setPdpNo(int pdpNo) {
		this.pdpNo = pdpNo;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public int getPhotoType() {
		return photoType;
	}
	public void setPhotoType(int photoType) {
		this.photoType = photoType;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "ProductPhoto [pdNo=" + pdNo + ", pdpNo=" + pdpNo + ", fileName=" + fileName + ", filePath=" + filePath
				+ ", photoType=" + photoType + "]";
	}
	
}
