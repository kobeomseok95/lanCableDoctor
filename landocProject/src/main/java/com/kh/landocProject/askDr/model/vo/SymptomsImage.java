package com.kh.landocProject.askDr.model.vo;

import java.io.Serializable;

public class SymptomsImage implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -5129454759274865129L;
	private int adpNo; 				//AskDrBoardNo 인위적식별자
	private String fileName;
	private String filePath;
	public SymptomsImage() {
	}
	public SymptomsImage(int adpNo, String fileName, String filePath) {
		this.adpNo = adpNo;
		this.fileName = fileName;
		this.filePath = filePath;
	}
	public int getAdpNo() {
		return adpNo;
	}
	public void setAdpNo(int adpNo) {
		this.adpNo = adpNo;
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
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "SymptomsImage [adpNo=" + adpNo + ", fileName=" + fileName + ", filePath=" + filePath + "]";
	}
}
