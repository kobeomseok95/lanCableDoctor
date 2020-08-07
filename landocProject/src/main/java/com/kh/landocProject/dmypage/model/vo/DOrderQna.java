package com.kh.landocProject.dmypage.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class DOrderQna implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5253192844318318740L;
	private int oqnaNo;
	private int orderNo;
	private String oqnaTitle;
	private String oqnaContent;
	private Date oqnaDate;
	private String oqnaStatus;
	private String oqnaAnswer;
	private int pdNo;
	private String pdName;
	private String drNo;

	public DOrderQna() {
		super();
	}

	public DOrderQna(int oqnaNo, int orderNo, String oqnaTitle, String oqnaContent, Date oqnaDate, String oqnaStatus,
			String oqnaAnswer, int pdNo, String pdName, String drNo) {
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
		this.drNo = drNo;
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

	public String getDrNo() {
		return drNo;
	}

	public void setDrNo(String drNo) {
		this.drNo = drNo;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "DOrderQna [oqnaNo=" + oqnaNo + ", orderNo=" + orderNo + ", oqnaTitle=" + oqnaTitle + ", oqnaContent="
				+ oqnaContent + ", oqnaDate=" + oqnaDate + ", oqnaStatus=" + oqnaStatus + ", oqnaAnswer=" + oqnaAnswer
				+ ", pdNo=" + pdNo + ", pdName=" + pdName + ", drNo=" + drNo + "]";
	}

	

}
