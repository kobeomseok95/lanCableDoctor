package com.kh.landocProject.admin.member.drClient.model.vo;

import java.io.Serializable;

public class DrClientSearchCondition implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 4172755953820632071L;

	private String none;
	private String drNo;
	private String userName;
	private String nickName;
	public DrClientSearchCondition() {
	}
	protected DrClientSearchCondition(String none, String drNo, String userName, String nickName) {
		this.none = none;
		this.drNo = drNo;
		this.userName = userName;
		this.nickName = nickName;
	}
	public String getNone() {
		return none;
	}
	public void setNone(String none) {
		this.none = none;
	}
	public String getDrNo() {
		return drNo;
	}
	public void setDrNo(String drNo) {
		this.drNo = drNo;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "DrClientSearchCondition [none=" + none + ", drNo=" + drNo + ", userName=" + userName + ", nickName="
				+ nickName + "]";
	}
	
	
}
