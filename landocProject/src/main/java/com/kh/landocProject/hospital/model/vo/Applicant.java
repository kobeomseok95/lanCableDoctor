package com.kh.landocProject.hospital.model.vo;

import java.io.Serializable;
import java.util.List;

public class Applicant implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 2073745198576574248L;
	private int aNo;
	private int hpNo;
	private String applicantName;
	private String applicantEmail;
	private String applicantPhone;
	private String checkMarketing;
	
	public Applicant() {
	}

	public Applicant(int aNo, int hpNo, String applicantName, String applicantEmail, String applicantPhone,
			String checkMarketing) {
		this.aNo = aNo;
		this.hpNo = hpNo;
		this.applicantName = applicantName;
		this.applicantEmail = applicantEmail;
		this.applicantPhone = applicantPhone;
		this.checkMarketing = checkMarketing;
	}

	public int getaNo() {
		return aNo;
	}

	public void setaNo(int aNo) {
		this.aNo = aNo;
	}

	public int getHpNo() {
		return hpNo;
	}

	public void setHpNo(int hpNo) {
		this.hpNo = hpNo;
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

	public String getCheckMarketing() {
		return checkMarketing;
	}

	public void setCheckMarketing(String checkMarketing) {
		this.checkMarketing = checkMarketing;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Applicant [aNo=" + aNo + ", hpNo=" + hpNo + ", applicantName=" + applicantName + ", applicantEmail="
				+ applicantEmail + ", applicantPhone=" + applicantPhone + ", checkMarketing=" + checkMarketing + "]";
	}

}
