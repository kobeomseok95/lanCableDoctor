package com.kh.landocProject.product.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class ProductQna implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 8744762527288551902L;
	private int pdNo;
	private String pdName;
	private int rno;
	private int pdqNo;
	private String title;
	private String content;
	private Date submitDate;
	private String status;
	private String answerContent;
	private String cNo;
	private String cNickname;
	private String drNo;
	private String drName;
	private String secretStatus;
	private String secretPwd;
	
	public ProductQna() {
	}
	
	

	public ProductQna(int pdNo, String pdName, int rno, int pdqNo, String title, String content, Date submitDate,
			String status, String answerContent, String cNo, String cNickname, String drNo, String drName,
			String secretStatus, String secretPwd) {
		this.pdNo = pdNo;
		this.setPdName(pdName);
		this.rno = rno;
		this.pdqNo = pdqNo;
		this.title = title;
		this.content = content;
		this.submitDate = submitDate;
		this.status = status;
		this.answerContent = answerContent;
		this.cNo = cNo;
		this.cNickname = cNickname;
		this.drNo = drNo;
		this.drName = drName;
		this.secretStatus = secretStatus;
		this.secretPwd = secretPwd;
	}



	public int getPdNo() {
		return pdNo;
	}

	public void setPdNo(int pdNo) {
		this.pdNo = pdNo;
	}

	public int getPdqNo() {
		return pdqNo;
	}

	public void setPdqNo(int pdqNo) {
		this.pdqNo = pdqNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getSubmitDate() {
		return submitDate;
	}

	public void setSubmitDate(Date submitDate) {
		this.submitDate = submitDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAnswerContent() {
		return answerContent;
	}

	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}

	public String getcNo() {
		return cNo;
	}

	public void setcNo(String cNo) {
		this.cNo = cNo;
	}

	public String getcNickname() {
		return cNickname;
	}

	public void setcNickname(String cNickname) {
		this.cNickname = cNickname;
	}

	public String getDrNo() {
		return drNo;
	}

	public void setDrNo(String drNo) {
		this.drNo = drNo;
	}

	public String getDrName() {
		return drName;
	}

	public void setDrName(String drName) {
		this.drName = drName;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public String getSecretStatus() {
		return secretStatus;
	}

	public void setSecretStatus(String secretStatus) {
		this.secretStatus = secretStatus;
	}

	public String getSecretPwd() {
		return secretPwd;
	}

	public void setSecretPwd(String secretPwd) {
		this.secretPwd = secretPwd;
	}

	public String getPdName() {
		return pdName;
	}

	public void setPdName(String pdName) {
		this.pdName = pdName;
	}



	@Override
	public String toString() {
		return "ProductQna [pdNo=" + pdNo + ", pdName=" + pdName + ", rno=" + rno + ", pdqNo=" + pdqNo + ", title="
				+ title + ", content=" + content + ", submitDate=" + submitDate + ", status=" + status
				+ ", answerContent=" + answerContent + ", cNo=" + cNo + ", cNickname=" + cNickname + ", drNo=" + drNo
				+ ", drName=" + drName + ", secretStatus=" + secretStatus + ", secretPwd=" + secretPwd + "]";
	}

	
}
