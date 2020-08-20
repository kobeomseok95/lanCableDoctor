package com.kh.landocProject.hospital.model.vo;

import java.util.Arrays;
import java.util.List;

public class Applicant {
	private int aNo;
	private String applicantName;
	private String applicantEmail;
	private String applicantPhone;
	private List<String> checkService;
	
	
	public Applicant() {
	}
	
	public Applicant(int aNo, String applicantName, String applicantEmail, String applicantPhone,
			List<String> checkService) {
		this.aNo = aNo;
		this.applicantName = applicantName;
		this.applicantEmail = applicantEmail;
		this.applicantPhone = applicantPhone;
		this.checkService = checkService;
	}

	public int getaNo() {
		return aNo;
	}

	public void setaNo(int aNo) {
		this.aNo = aNo;
	}

	public String getApplicantName() {
		return applicantName;
	}

	public void setApplicantName(String applicantName) {
		this.applicantName = applicantName;
	}

	public String getApplicantEmail() {
		return applicantEmail;
	}

	public void setApplicantEmail(String applicantEmail) {
		this.applicantEmail = applicantEmail;
	}

	public String getApplicantPhone() {
		return applicantPhone;
	}

	public void setApplicantPhone(String applicantPhone) {
		this.applicantPhone = applicantPhone;
	}

	public List<String> getCheckService() {
		return checkService;
	}

	public void setCheckService(List<String> checkService) {
		this.checkService = checkService;
	}

	@Override
	public String toString() {
		return "Applicant [aNo=" + aNo + ", applicantName=" + applicantName + ", applicantEmail=" + applicantEmail
				+ ", applicantPhone=" + applicantPhone + ", checkService=" + checkService + "]";
	}

	
}
