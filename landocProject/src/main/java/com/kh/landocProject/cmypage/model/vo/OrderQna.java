package com.kh.landocProject.cmypage.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class OrderQna implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -2314193615492368928L;
	private int oqnaNo;
	private int orderNo;
	private String oqnaTitle;
	private String oqnaContent;
	private Date oqnaDate;
	private String oqnaStatus;
	private String oqnaAnswer;
	private int pdNo;
	private String pdName;
	private String cNo;
	public OrderQna() {
		super();
	}
	public OrderQna(int oqnaNo, int orderNo, String oqnaTitle, String oqnaContent, Date oqnaDate, String oqnaStatus,
			String oqnaAnswer, int pdNo, String pdName, String cNo) {
		super();
		this.oqnaNo = oqnaNo;
		this.orderNo = orderNo;
		this.oqnaTitle = oqnaTitle;
		this.oqnaContent = oqnaContent;
		this.oqnaDate = oqnaDate;
		this.oqnaStatus = oqnaStatus;
		this.oqnaAnswer = oqnaAnswer;
		this.pdNo = pdNo;
		this.pdName = pdName;
		this.cNo = cNo;
	}
	public int getOqnaNo() {
		return oqnaNo;
	}
	public void setOqnaNo(int oqnaNo) {
		this.oqnaNo = oqnaNo;
	}
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public String getOqnaTitle() {
		return oqnaTitle;
	}
	public void setOqnaTitle(String oqnaTitle) {
		this.oqnaTitle = oqnaTitle;
	}
	public String getOqnaContent() {
		return oqnaContent;
	}
	public void setOqnaContent(String oqnaContent) {
		this.oqnaContent = oqnaContent;
	}
	public Date getOqnaDate() {
		return oqnaDate;
	}
	public void setOqnaDate(Date oqnaDate) {
		this.oqnaDate = oqnaDate;
	}
	public String getOqnaStatus() {
		return oqnaStatus;
	}
	public void setOqnaStatus(String oqnaStatus) {
		this.oqnaStatus = oqnaStatus;
	}
	public String getOqnaAnswer() {
		return oqnaAnswer;
	}
	public void setOqnaAnswer(String oqnaAnswer) {
		this.oqnaAnswer = oqnaAnswer;
	}
	public int getPdNo() {
		return pdNo;
	}
	public void setPdNo(int pdNo) {
		this.pdNo = pdNo;
	}
	public String getPdName() {
		return pdName;
	}
	public void setPdName(String pdName) {
		this.pdName = pdName;
	}
	public String getcNo() {
		return cNo;
	}
	public void setcNo(String cNo) {
		this.cNo = cNo;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "OrderQna [oqnaNo=" + oqnaNo + ", orderNo=" + orderNo + ", oqnaTitle=" + oqnaTitle + ", oqnaContent="
				+ oqnaContent + ", oqnaDate=" + oqnaDate + ", oqnaStatus=" + oqnaStatus + ", oqnaAnswer=" + oqnaAnswer
				+ ", pdNo=" + pdNo + ", pdName=" + pdName + ", cNo=" + cNo + "]";
	}

	
	
	
	
}
