package com.kh.landocProject.hospital.model.vo;

import java.io.Serializable;
import java.util.List;

public class HpTime implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -3108480778142069279L;

	private int no;
	private int hpNo;
	private String day;
	private String openTime;
	private String closeTime;
	
	private List<HpTime> hpTimeList;
	
	public HpTime() {
	}

	public HpTime(int no, int hpNo, String day, String openTime, String closeTime, List<HpTime> hpTimeList) {
		this.no = no;
		this.hpNo = hpNo;
		this.day = day;
		this.openTime = openTime;
		this.closeTime = closeTime;
		this.hpTimeList = hpTimeList;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getHpNo() {
		return hpNo;
	}

	public void setHpNo(int hpNo) {
		this.hpNo = hpNo;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getOpenTime() {
		return openTime;
	}

	public void setOpenTime(String openTime) {
		this.openTime = openTime;
	}

	public String getCloseTime() {
		return closeTime;
	}

	public void setCloseTime(String closeTime) {
		this.closeTime = closeTime;
	}

	public List<HpTime> getHpTimeList() {
		return hpTimeList;
	}

	public void setHpTimeList(List<HpTime> hpTimeList) {
		this.hpTimeList = hpTimeList;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "HpTime [no=" + no + ", hpNo=" + hpNo + ", day=" + day + ", openTime=" + openTime + ", closeTime="
				+ closeTime + ", hpTimeList=" + hpTimeList + "]";
	}
	
	
}
