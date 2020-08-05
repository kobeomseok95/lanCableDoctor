package com.kh.landocProject.admin.member.client.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class ClientPage implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 20619377642403936L;
	
	private int rowNum;
	private String cNo;
	private String userId;
	private String nickName;
	private String userName;
	private String birth;
	private String phone;
	private String email;
	private int point;
	private String post;
	private String address;
	private String profile;
	private String marketing;
	private Date enrollDate;
	private String status;
	private String proRename;
	private String proOrigin;
	
	protected ClientPage() {
	}

	protected ClientPage(int rowNum, String cNo, String userId, String nickName, String userName, String birth,
			String phone, String email, int point, String post, String address, String profile, String marketing,
			Date enrollDate, String status, String proRename, String proOrigin) {
		this.rowNum = rowNum;
		this.cNo = cNo;
		this.userId = userId;
		this.nickName = nickName;
		this.userName = userName;
		this.birth = birth;
		this.phone = phone;
		this.email = email;
		this.point = point;
		this.post = post;
		this.address = address;
		this.profile = profile;
		this.marketing = marketing;
		this.enrollDate = enrollDate;
		this.status = status;
		this.proRename = proRename;
		this.proOrigin = proOrigin;
	}

	public int getRowNum() {
		return rowNum;
	}

	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}

	public String getcNo() {
		return cNo;
	}

	public void setcNo(String cNo) {
		this.cNo = cNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
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

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getProRename() {
		return proRename;
	}

	public void setProRename(String proRename) {
		this.proRename = proRename;
	}

	public String getProOrigin() {
		return proOrigin;
	}

	public void setProOrigin(String proOrigin) {
		this.proOrigin = proOrigin;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ClientPage [rowNum=" + rowNum + ", cNo=" + cNo + ", userId=" + userId + ", nickName=" + nickName
				+ ", userName=" + userName + ", birth=" + birth + ", phone=" + phone + ", email=" + email + ", point="
				+ point + ", post=" + post + ", address=" + address + ", profile=" + profile + ", marketing="
				+ marketing + ", enrollDate=" + enrollDate + ", status=" + status + ", proRename=" + proRename
				+ ", proOrigin=" + proOrigin + "]";
	}
	
	
}