package com.kh.landocProject.admin.order.model.vo;

import java.sql.Date;

public class OrderManage{
	private int orderNo;
	private String pdName;
	private String cId;
	private String drId;
	private Date orderDate;
	private String oName;
	private int oCode;
	private int pdNo;
	
	private String condition;
	private String search;
	public OrderManage() {
	}
	public OrderManage(int orderNo, String pdName, String cId, String drId, Date orderDate, String oName, int oCode,
			int pdNo, String condition, String search) {
		super();
		this.orderNo = orderNo;
		this.pdName = pdName;
		this.cId = cId;
		this.drId = drId;
		this.orderDate = orderDate;
		this.oName = oName;
		this.oCode = oCode;
		this.pdNo = pdNo;
		this.condition = condition;
		this.search = search;
	}
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public String getPdName() {
		return pdName;
	}
	public void setPdName(String pdName) {
		this.pdName = pdName;
	}
	public String getcId() {
		return cId;
	}
	public void setcId(String cId) {
		this.cId = cId;
	}
	public String getDrId() {
		return drId;
	}
	public void setDrId(String drId) {
		this.drId = drId;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public String getoName() {
		return oName;
	}
	public void setoName(String oName) {
		this.oName = oName;
	}
	public int getoCode() {
		return oCode;
	}
	public void setoCode(int oCode) {
		this.oCode = oCode;
	}
	public int getPdNo() {
		return pdNo;
	}
	public void setPdNo(int pdNo) {
		this.pdNo = pdNo;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	@Override
	public String toString() {
		return "OrderManage [orderNo=" + orderNo + ", pdName=" + pdName + ", cId=" + cId + ", drId=" + drId
				+ ", orderDate=" + orderDate + ", oName=" + oName + ", oCode=" + oCode + ", pdNo=" + pdNo
				+ ", condition=" + condition + ", search=" + search + "]";
	}
	
	
	
	
	
}
