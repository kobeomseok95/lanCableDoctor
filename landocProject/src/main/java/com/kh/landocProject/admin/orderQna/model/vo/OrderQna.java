package com.kh.landocProject.admin.orderQna.model.vo;

import java.sql.Date;

public class OrderQna {
	private int oqnaNo;
	private int orderNo;
	private String pdName;
	private String cId;
	private String cNo;
	private String drId;
	private String dNo;
	private String oqnaTitle;
	private String oqnaContent;
	private Date oqnaDate;
	private String oqnaStatus;
	private String oqnaAnswer;
	
	// 검색위한 변수
	private String condition;
	private String search;
	public OrderQna() {
	}
	public OrderQna(int oqnaNo, int orderNo, String pdName, String cId, String cNo, String drId, String dNo,
			String oqnaTitle, String oqnaContent, Date oqnaDate, String oqnaStatus, String oqnaAnswer, String condition,
			String search) {
		super();
		this.oqnaNo = oqnaNo;
		this.orderNo = orderNo;
		this.pdName = pdName;
		this.cId = cId;
		this.cNo = cNo;
		this.drId = drId;
		this.dNo = dNo;
		this.oqnaTitle = oqnaTitle;
		this.oqnaContent = oqnaContent;
		this.oqnaDate = oqnaDate;
		this.oqnaStatus = oqnaStatus;
		this.oqnaAnswer = oqnaAnswer;
		this.condition = condition;
		this.search = search;
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
	public String getcNo() {
		return cNo;
	}
	public void setcNo(String cNo) {
		this.cNo = cNo;
	}
	public String getDrId() {
		return drId;
	}
	public void setDrId(String drId) {
		this.drId = drId;
	}
	public String getdNo() {
		return dNo;
	}
	public void setdNo(String dNo) {
		this.dNo = dNo;
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
		return "OrderQna [oqnaNo=" + oqnaNo + ", orderNo=" + orderNo + ", pdName=" + pdName + ", cId=" + cId + ", cNo="
				+ cNo + ", drId=" + drId + ", dNo=" + dNo + ", oqnaTitle=" + oqnaTitle + ", oqnaContent=" + oqnaContent
				+ ", oqnaDate=" + oqnaDate + ", oqnaStatus=" + oqnaStatus + ", oqnaAnswer=" + oqnaAnswer
				+ ", condition=" + condition + ", search=" + search + "]";
	}
	
	
	
	
}
