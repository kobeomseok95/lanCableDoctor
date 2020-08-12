package com.kh.landocProject.payment.model.vo;

import java.io.Serializable;

public class OrderMg implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1952096105229367276L;
	
	private int orderNo;
	private String cNo;
	private String drNo;
	private int oCode;
	protected OrderMg() {
	}
	protected OrderMg(int orderNo, String cNo, String drNo, int oCode) {
		this.orderNo = orderNo;
		this.cNo = cNo;
		this.drNo = drNo;
		this.oCode = oCode;
	}
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public String getcNo() {
		return cNo;
	}
	public void setcNo(String cNo) {
		this.cNo = cNo;
	}
	public String getDrNo() {
		return drNo;
	}
	public void setDrNo(String drNo) {
		this.drNo = drNo;
	}
	public int getoCode() {
		return oCode;
	}
	public void setoCode(int oCode) {
		this.oCode = oCode;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "OrderMg [orderNo=" + orderNo + ", cNo=" + cNo + ", drNo=" + drNo + ", oCode=" + oCode + "]";
	}
	
	
}
