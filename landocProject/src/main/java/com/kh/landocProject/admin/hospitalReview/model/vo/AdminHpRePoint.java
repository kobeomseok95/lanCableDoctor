package com.kh.landocProject.admin.hospitalReview.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class AdminHpRePoint implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 418296216032600907L;
	
	private int psNo;
	private int getPoint;
	private Date getDate;
	private int hpReNo;
	private String cNo;

	public AdminHpRePoint() {
	}

	public AdminHpRePoint(int psNo, int getPoint, Date getDate, int hpReNo, String cNo) {
		this.psNo = psNo;
		this.getPoint = getPoint;
		this.getDate = getDate;
		this.hpReNo = hpReNo;
		this.cNo = cNo;
	}

	public int getPsNo() {
		return psNo;
	}

	public void setPsNo(int psNo) {
		this.psNo = psNo;
	}

	public int getGetPoint() {
		return getPoint;
	}

	public void setGetPoint(int getPoint) {
		this.getPoint = getPoint;
	}

	public Date getGetDate() {
		return getDate;
	}

	public void setGetDate(Date getDate) {
		this.getDate = getDate;
	}

	public int getHpReNo() {
		return hpReNo;
	}

	public void setHpReNo(int hpReNo) {
		this.hpReNo = hpReNo;
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
		return "AdminHpRePoint [psNo=" + psNo + ", getPoint=" + getPoint + ", getDate=" + getDate + ", hpReNo=" + hpReNo
				+ ", cNo=" + cNo + "]";
	}
	

}
