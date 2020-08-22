package com.kh.landocProject.hospital.model.vo;

import java.util.Arrays;

import org.springframework.web.multipart.MultipartFile;

public class Hospital {
	private int hpNo;
	private String hpName;
	private String hpPhone;
	private String postCode;
	private String address;
	private int[] categoryCode;
	private MultipartFile businessRegistration;
	private MultipartFile identifyDocument;
	private MultipartFile drLicense;
	private String brFileName;
	private String idFileName;
	private String dlFileName;
	
	public Hospital() {
	}

	public Hospital(int hpNo, String hpName, String hpPhone, String postCode, String address, int[] categoryCode,
			MultipartFile businessRegistration, MultipartFile identifyDocument, MultipartFile drLicense,
			String brFileName, String idFileName, String dlFileName) {
		this.hpNo = hpNo;
		this.hpName = hpName;
		this.hpPhone = hpPhone;
		this.postCode = postCode;
		this.address = address;
		this.categoryCode = categoryCode;
		this.businessRegistration = businessRegistration;
		this.identifyDocument = identifyDocument;
		this.drLicense = drLicense;
		this.brFileName = brFileName;
		this.idFileName = idFileName;
		this.dlFileName = dlFileName;
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
	public MultipartFile getBusinessRegistration() {
		return businessRegistration;
	}
	public void setBusinessRegistration(MultipartFile businessRegistration) {
		this.businessRegistration = businessRegistration;
	}
	public MultipartFile getIdentifyDocument() {
		return identifyDocument;
	}
	public void setIdentifyDocument(MultipartFile identifyDocument) {
		this.identifyDocument = identifyDocument;
	}
	public MultipartFile getDrLicense() {
		return drLicense;
	}
	public void setDrLicense(MultipartFile drLicense) {
		this.drLicense = drLicense;
	}
	public String getBrFileName() {
		return brFileName;
	}
	public void setBrFileName(String brFileName) {
		this.brFileName = brFileName;
	}
	public String getIdFileName() {
		return idFileName;
	}
	public void setIdFileName(String idFileName) {
		this.idFileName = idFileName;
	}
	public String getDlFileName() {
		return dlFileName;
	}
	public void setDlFileName(String dlFileName) {
		this.dlFileName = dlFileName;
	}

	@Override
	public String toString() {
		return "Hospital [hpNo=" + hpNo + ", hpName=" + hpName + ", hpPhone=" + hpPhone + ", postCode=" + postCode
				+ ", address=" + address + ", categoryCode=" + Arrays.toString(categoryCode) + ", businessRegistration="
				+ businessRegistration + ", identifyDocument=" + identifyDocument + ", drLicense=" + drLicense
				+ ", brFileName=" + brFileName + ", idFileName=" + idFileName + ", dlFileName=" + dlFileName + "]";
	}
	
}
