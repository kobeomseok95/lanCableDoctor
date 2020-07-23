package com.kh.landocProject.cmypage.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class OrderList implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -8680240868675734917L;
	private int orderNo;
	private Date orderDate;
	private String amountPrice;		//총 결제금액
	private String paymentWay;
	private int usePoint;
	private String cNo;
	private int pdNo;
	private int opCount;
	private String pdName;
	private String tumbnail;
	private int oCode;
	private String oName;
	private String discountPrice;	// 원가-판매가+사용포인트(총할인금액)
	private String originPrice;	
	private String cName;
	private int cPostCode;
	private String cAddress;
	private String cPhone;
	private String countMultiple;	// 수량 * 원가
	private String date; 			// 날짜 검색용 변수
	
	private Date calendarDate1;		// 달력 검색위한 변수
	private Date calendarDate2;		// 달력 검색위한 변수
	public OrderList() {
		super();
	}

	

	public OrderList(int orderNo, Date orderDate, String amountPrice, String cNo, int pdNo, String pdName,
			String tumbnail, int oCode, String oName) {
		this.orderNo = orderNo;
		this.orderDate = orderDate;
		this.amountPrice = amountPrice;
		this.cNo = cNo;
		this.pdNo = pdNo;
		this.pdName = pdName;
		this.tumbnail = tumbnail;
		this.oCode = oCode;
		this.oName = oName;
	}



	public OrderList(int orderNo, Date orderDate, String amountPrice, String paymentWay, int usePoint, String cNo,
			int pdNo, int opCount, String pdName, String tumbnail, int oCode, String oName, String discountPrice,
			String originPrice, String cName, int cPostCode, String cAddress, String cPhone, String countMultiple,
			String date, Date calendarDate1, Date calendarDate2) {
		super();
		this.orderNo = orderNo;
		this.orderDate = orderDate;
		this.amountPrice = amountPrice;
		this.paymentWay = paymentWay;
		this.usePoint = usePoint;
		this.cNo = cNo;
		this.pdNo = pdNo;
		this.opCount = opCount;
		this.pdName = pdName;
		this.tumbnail = tumbnail;
		this.oCode = oCode;
		this.oName = oName;
		this.discountPrice = discountPrice;
		this.originPrice = originPrice;
		this.cName = cName;
		this.cPostCode = cPostCode;
		this.cAddress = cAddress;
		this.cPhone = cPhone;
		this.countMultiple = countMultiple;
		this.date = date;
		this.calendarDate1 = calendarDate1;
		this.calendarDate2 = calendarDate2;
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



	public String getAmountPrice() {
		return amountPrice;
	}



	public void setAmountPrice(String amountPrice) {
		this.amountPrice = amountPrice;
	}



	public String getPaymentWay() {
		return paymentWay;
	}



	public void setPaymentWay(String paymentWay) {
		this.paymentWay = paymentWay;
	}



	public int getUsePoint() {
		return usePoint;
	}



	public void setUsePoint(int usePoint) {
		this.usePoint = usePoint;
	}



	public String getcNo() {
		return cNo;
	}



	public void setcNo(String cNo) {
		this.cNo = cNo;
	}



	public int getPdNo() {
		return pdNo;
	}



	public void setPdNo(int pdNo) {
		this.pdNo = pdNo;
	}



	public int getOpCount() {
		return opCount;
	}



	public void setOpCount(int opCount) {
		this.opCount = opCount;
	}



	public String getPdName() {
		return pdName;
	}



	public void setPdName(String pdName) {
		this.pdName = pdName;
	}



	public String getTumbnail() {
		return tumbnail;
	}



	public void setTumbnail(String tumbnail) {
		this.tumbnail = tumbnail;
	}



	public int getoCode() {
		return oCode;
	}



	public void setoCode(int oCode) {
		this.oCode = oCode;
	}



	public String getoName() {
		return oName;
	}



	public void setoName(String oName) {
		this.oName = oName;
	}



	public String getDiscountPrice() {
		return discountPrice;
	}



	public void setDiscountPrice(String discountPrice) {
		this.discountPrice = discountPrice;
	}



	public String getOriginPrice() {
		return originPrice;
	}



	public void setOriginPrice(String originPrice) {
		this.originPrice = originPrice;
	}



	public String getcName() {
		return cName;
	}



	public void setcName(String cName) {
		this.cName = cName;
	}



	public int getcPostCode() {
		return cPostCode;
	}



	public void setcPostCode(int cPostCode) {
		this.cPostCode = cPostCode;
	}



	public String getcAddress() {
		return cAddress;
	}



	public void setcAddress(String cAddress) {
		this.cAddress = cAddress;
	}



	public String getcPhone() {
		return cPhone;
	}



	public void setcPhone(String cPhone) {
		this.cPhone = cPhone;
	}



	public String getCountMultiple() {
		return countMultiple;
	}



	public void setCountMultiple(String countMultiple) {
		this.countMultiple = countMultiple;
	}



	public String getDate() {
		return date;
	}



	public void setDate(String date) {
		this.date = date;
	}



	public Date getCalendarDate1() {
		return calendarDate1;
	}



	public void setCalendarDate1(Date calendarDate1) {
		this.calendarDate1 = calendarDate1;
	}



	public Date getCalendarDate2() {
		return calendarDate2;
	}



	public void setCalendarDate2(Date calendarDate2) {
		this.calendarDate2 = calendarDate2;
	}



	public static long getSerialversionuid() {
		return serialVersionUID;
	}



	@Override
	public String toString() {
		return "OrderList [orderNo=" + orderNo + ", orderDate=" + orderDate + ", amountPrice=" + amountPrice
				+ ", paymentWay=" + paymentWay + ", usePoint=" + usePoint + ", cNo=" + cNo + ", pdNo=" + pdNo
				+ ", opCount=" + opCount + ", pdName=" + pdName + ", tumbnail=" + tumbnail + ", oCode=" + oCode
				+ ", oName=" + oName + ", discountPrice=" + discountPrice + ", originPrice=" + originPrice + ", cName="
				+ cName + ", cPostCode=" + cPostCode + ", cAddress=" + cAddress + ", cPhone=" + cPhone
				+ ", countMultiple=" + countMultiple + ", date=" + date + ", calendarDate1=" + calendarDate1
				+ ", calendarDate2=" + calendarDate2 + "]";
	}



	

	


	
	
	
}
