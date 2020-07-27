package com.kh.landocProject.askDr.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class AskDrReply implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 8805967674015665475L;
	private int adrNo;
	private int bNo;
	private String drClientNo;
	private Date replyDate;
	private String content;
	private String chooseStatus;
	private int parentNo;
	private int orderNo;
	private int groupNo;
	private int depthNo;
	
	public AskDrReply() {
	}
	
	public AskDrReply(int adrNo, int bNo, String drClientNo, Date replyDate, String content, String chooseStatus,
			int parentNo, int orderNo, int groupNo, int depthNo) {
		this.adrNo = adrNo;
		this.bNo = bNo;
		this.drClientNo = drClientNo;
		this.replyDate = replyDate;
		this.content = content;
		this.chooseStatus = chooseStatus;
		this.parentNo = parentNo;
		this.orderNo = orderNo;
		this.groupNo = groupNo;
		this.depthNo = depthNo;
	}

	public int getAdrNo() {
		return adrNo;
	}
	public void setAdrNo(int adrNo) {
		this.adrNo = adrNo;
	}
	public int getbNo() {
		return bNo;
	}
	public void setbNo(int bNo) {
		this.bNo = bNo;
	}
	public String getDrClientNo() {
		return drClientNo;
	}
	public void setDrClientNo(String drClientNo) {
		this.drClientNo = drClientNo;
	}
	public Date getReplyDate() {
		return replyDate;
	}
	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getChooseStatus() {
		return chooseStatus;
	}
	public void setChooseStatus(String chooseStatus) {
		this.chooseStatus = chooseStatus;
	}
	public int getParentNo() {
		return parentNo;
	}
	public void setParentNo(int parentNo) {
		this.parentNo = parentNo;
	}
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public int getGroupNo() {
		return groupNo;
	}
	public void setGroupNo(int groupNo) {
		this.groupNo = groupNo;
	}
	public int getDepthNo() {
		return depthNo;
	}
	public void setDepthNo(int depthNo) {
		this.depthNo = depthNo;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "AskDrReply [adrNo=" + adrNo + ", bNo=" + bNo + ", drClientNo=" + drClientNo + ", replyDate=" + replyDate
				+ ", content=" + content + ", chooseStatus=" + chooseStatus + ", parentNo=" + parentNo + ", orderNo="
				+ orderNo + ", groupNo=" + groupNo + ", depthNo=" + depthNo + "]";
	}
	
}
