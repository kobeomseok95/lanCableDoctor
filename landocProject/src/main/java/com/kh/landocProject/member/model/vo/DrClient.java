package com.kh.landocProject.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class DrClient implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5732201509184397564L;
	
	private String drNo;
	private int hpNo;
	private int hpCateCode;
	private String userName;
	private String userId;
	private String userPwd;
	private String email;
	private String phone;
	private String birth;
	private int point;
	private String status;
	private String approval;
	private Date enrollDate;
	private String profile;
	private String attachment;
	private String marketing;
	private String post;
	private String address;
	private int like;
	private int disLike;
	public DrClient() {
	}
	public DrClient(String drNo, int hpNo, int hpCateCode, String userName, String userId, String userPwd, String email,
			String phone, String birth, int point, String status, String approval, Date enrollDate, String profile,
			String attachment, String marketing, String post, String address, int like, int disLike) {
		this.drNo = drNo;
		this.hpNo = hpNo;
		this.hpCateCode = hpCateCode;
		this.userName = userName;
		this.userId = userId;
		this.userPwd = userPwd;
		this.email = email;
		this.phone = phone;
		this.birth = birth;
		this.point = point;
		this.status = status;
		this.approval = approval;
		this.enrollDate = enrollDate;
		this.profile = profile;
		this.attachment = attachment;
		this.marketing = marketing;
		this.post = post;
		this.address = address;
		this.like = like;
		this.disLike = disLike;
	}
	public String getDrNo() {
		return drNo;
	}
	public void setDrNo(String drNo) {
		this.drNo = drNo;
	}
	public int getHpNo() {
		return hpNo;
	}
	public void setHpNo(int hpNo) {
		this.hpNo = hpNo;
	}
	public int getHpCateCode() {
		return hpCateCode;
	}
	public void setHpCateCode(int hpCateCode) {
		this.hpCateCode = hpCateCode;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
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
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getApproval() {
		return approval;
	}
	public void setApproval(String approval) {
		this.approval = approval;
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
	public String getAttachment() {
		return attachment;
	}
	public void setAttachment(String attachment) {
		this.attachment = attachment;
	}
	public String getMarketing() {
		return marketing;
	}
	public void setMarketing(String marketing) {
		this.marketing = marketing;
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
	public int getLike() {
		return like;
	}
	public void setLike(int like) {
		this.like = like;
	}
	public int getDisLike() {
		return disLike;
	}
	public void setDisLike(int disLike) {
		this.disLike = disLike;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "DrClient [drNo=" + drNo + ", hpNo=" + hpNo + ", hpCateCode=" + hpCateCode + ", userName=" + userName
				+ ", userId=" + userId + ", userPwd=" + userPwd + ", email=" + email + ", phone=" + phone + ", birth="
				+ birth + ", point=" + point + ", status=" + status + ", approval=" + approval + ", enrollDate="
				+ enrollDate + ", profile=" + profile + ", attachment=" + attachment + ", marketing=" + marketing
				+ ", post=" + post + ", address=" + address + ", like=" + like + ", disLike=" + disLike + "]";
	}
	
	
	
	
}
