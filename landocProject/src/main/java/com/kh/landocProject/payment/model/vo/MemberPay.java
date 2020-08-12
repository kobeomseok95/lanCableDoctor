package com.kh.landocProject.payment.model.vo;

import java.io.Serializable;

public class MemberPay implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1395599773194812832L;
	
	private String cNo;
	private String drNo;
	private String userName;
	private String phone;
	private String email;
	private String post;
	private String address;
	private int point;
	protected MemberPay() {
	}
	protected MemberPay(String cNo, String drNo, String userName, String phone, String email, String post,
			String address, int point) {
		this.cNo = cNo;
		this.drNo = drNo;
		this.userName = userName;
		this.phone = phone;
		this.email = email;
		this.post = post;
		this.address = address;
		this.point = point;
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
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "MemberPay [cNo=" + cNo + ", drNo=" + drNo + ", userName=" + userName + ", phone=" + phone + ", email="
				+ email + ", post=" + post + ", address=" + address + ", point=" + point + "]";
	}
		
}
