package com.kh.landocProject.hospitalReview.model.vo;

import java.io.Serializable;

public class HpLike implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -8432880660641030934L;

	private int likeNo;
	private String cNo;
	private String dNo;
	private int hpNo;
	
	public HpLike() {
	}

	public HpLike(int likeNo, String cNo, String dNo, int hpNo) {
		this.likeNo = likeNo;
		this.cNo = cNo;
		this.dNo = dNo;
		this.hpNo = hpNo;
	}

	public int getLikeNo() {
		return likeNo;
	}

	public void setLikeNo(int likeNo) {
		this.likeNo = likeNo;
	}

	public String getcNo() {
		return cNo;
	}

	public void setcNo(String cNo) {
		this.cNo = cNo;
	}

	public String getdNo() {
		return dNo;
	}

	public void setdNo(String dNo) {
		this.dNo = dNo;
	}

	public int getHpNo() {
		return hpNo;
	}

	public void setHpNo(int hpNo) {
		this.hpNo = hpNo;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "HpLike [likeNo=" + likeNo + ", cNo=" + cNo + ", dNo=" + dNo + ", hpNo=" + hpNo + "]";
	}
	
	
}
