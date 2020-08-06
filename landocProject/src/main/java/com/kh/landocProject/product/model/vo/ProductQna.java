package com.kh.landocProject.product.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class ProductQna implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 8744762527288551902L;
	private int pdNo;
	private int pdqNo;
	private String title;
	private String content;
	private Date submitDate;
	private String status;
	private String answerContent;
	public ProductQna() {
	}
	public ProductQna(int pdNo, int pdqNo, String title, String content, Date submitDate, String status,
			String answerContent) {
		this.pdNo = pdNo;
		this.pdqNo = pdqNo;
		this.title = title;
		this.content = content;
		this.submitDate = submitDate;
		this.status = status;
		this.answerContent = answerContent;
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
	public int getPdNo() {
		return pdNo;
	}
	public void setPdNo(int pdNo) {
		this.pdNo = pdNo;
	}
	@Override
	public String toString() {
		return "ProductQna [pdNo=" + pdNo + ", pdqNo=" + pdqNo + ", title=" + title + ", Content=" + content
				+ ", submitDate=" + submitDate + ", status=" + status + ", answerContent=" + answerContent + "]";
	}
}
