package com.kh.landocProject.payment.model.vo;

import java.io.Serializable;

public class OrderPay implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 385998573294379395L;
	
	private int pdNo;
	private int orderNo;
	private int opCount;
	protected OrderPay() {
	}
	protected OrderPay(int pdNo, int orderNo, int opCount) {
		this.pdNo = pdNo;
		this.orderNo = orderNo;
		this.opCount = opCount;
	}
	public int getPdNo() {
		return pdNo;
	}
	public void setPdNo(int pdNo) {
		this.pdNo = pdNo;
	}
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public int getOpCount() {
		return opCount;
	}
	public void setOpCount(int opCount) {
		this.opCount = opCount;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "OrderPay [pdNo=" + pdNo + ", orderNo=" + orderNo + ", opCount=" + opCount + "]";
	}
	
	
}
