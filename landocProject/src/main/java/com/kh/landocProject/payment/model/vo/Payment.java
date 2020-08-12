package com.kh.landocProject.payment.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Payment implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7700648375947609081L;
	
	private int orderNo;
	private Date orderDate;
	private int amountPrice;
	private String paymentWay;
	private String paymentComment;
	private int usePoint;
	private Date useDate;
	private String cNo;
	private String drNo;
	protected Payment() {
	}
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public int getAmountPrice() {
		return amountPrice;
	}
	public void setAmountPrice(int amountPrice) {
		this.amountPrice = amountPrice;
	}
	public String getPaymentWay() {
		return paymentWay;
	}
	public void setPaymentWay(String paymentWay) {
		this.paymentWay = paymentWay;
	}
	public String getPaymentComment() {
		return paymentComment;
	}
	public void setPaymentComment(String paymentComment) {
		this.paymentComment = paymentComment;
	}
	public int getUsePoint() {
		return usePoint;
	}
	public void setUsePoint(int usePoint) {
		this.usePoint = usePoint;
	}
	public Date getUseDate() {
		return useDate;
	}
	public void setUseDate(Date useDate) {
		this.useDate = useDate;
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
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Payment [orderNo=" + orderNo + ", orderDate=" + orderDate + ", amountPrice=" + amountPrice
				+ ", paymentWay=" + paymentWay + ", paymentComment=" + paymentComment + ", usePoint=" + usePoint
				+ ", useDate=" + useDate + ", cNo=" + cNo + ", drNo=" + drNo + "]";
	}
	
}
