package com.kh.landocProject.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Client implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2373499743047133082L;
	
	private String cNo;
	private String userName;
	private String nickName;
	private String userId;
	private String userPwd;
	private String email;
	private String phone;
	private String birth;
	private String status;
	private Date enrollDate;
	private String profile;
	private String marketing;
	private int point;
	private String post;
	private String address;
	public Client() {
	}
	public Client(String cNo, String userName, String nickName, String userId, String userPwd, String email,
			String phone, String birth, String status, Date enrollDate, String profile, String marketing, int point,
			String post, String address) {
		this.cNo = cNo;
		this.userName = userName;
		this.nickName = nickName;
		this.userId = userId;
		this.userPwd = userPwd;
		this.email = email;
		this.phone = phone;
		this.birth = birth;
		this.status = status;
		this.enrollDate = enrollDate;
		this.profile = profile;
		this.marketing = marketing;
		this.point = point;
		this.post = post;
		this.address = address;
	}
	public String getcNo() {
		return cNo;
	}
	public void setcNo(String cNo) {
		this.cNo = cNo;
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
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getMarketing() {
		return marketing;
	}
	public void setMarketing(String marketing) {
		this.marketing = marketing;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
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
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Client [cNo=" + cNo + ", userName=" + userName + ", nickName=" + nickName + ", userId=" + userId
				+ ", userPwd=" + userPwd + ", email=" + email + ", phone=" + phone + ", birth=" + birth + ", status="
				+ status + ", enrollDate=" + enrollDate + ", profile=" + profile + ", marketing=" + marketing
				+ ", point=" + point + ", post=" + post + ", address=" + address + "]";
	}
	
	
}
