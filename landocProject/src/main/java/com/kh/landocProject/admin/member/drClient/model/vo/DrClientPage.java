package com.kh.landocProject.admin.member.drClient.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class DrClientPage implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 7620706844339711698L;
	
	private int rowNum;
	private String drNo;
	private String userId;
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
	private String approval;
	private String proRename;
	private String proOrigin;
	private String hpCateName;
	private String hpName;
	private int hpNo;
	private int hpCateCode;
	protected DrClientPage() {
	}
	protected DrClientPage(int rowNum, String drNo, String userId, String userName, String birth, String phone,
			String email, int point, String post, String address, String profile, String marketing, Date enrollDate,
			String status, String approval, String proRename, String proOrigin, String hpCateName, String hpName,
			int hpNo, int hpCateCode) {
		this.rowNum = rowNum;
		this.drNo = drNo;
		this.userId = userId;
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
		this.approval = approval;
		this.proRename = proRename;
		this.proOrigin = proOrigin;
		this.hpCateName = hpCateName;
		this.hpName = hpName;
		this.hpNo = hpNo;
		this.hpCateCode = hpCateCode;
	}
	public int getRowNum() {
		return rowNum;
	}
	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}
	public String getDrNo() {
		return drNo;
	}
	public void setDrNo(String drNo) {
		this.drNo = drNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
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
	public String getApproval() {
		return approval;
	}
	public void setApproval(String approval) {
		this.approval = approval;
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
	public String getHpCateName() {
		return hpCateName;
	}
	public void setHpCateName(String hpCateName) {
		this.hpCateName = hpCateName;
	}
	public String getHpName() {
		return hpName;
	}
	public void setHpName(String hpName) {
		this.hpName = hpName;
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
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "DrClientPage [rowNum=" + rowNum + ", drNo=" + drNo + ", userId=" + userId + ", userName=" + userName
				+ ", birth=" + birth + ", phone=" + phone + ", email=" + email + ", point=" + point + ", post=" + post
				+ ", address=" + address + ", profile=" + profile + ", marketing=" + marketing + ", enrollDate="
				+ enrollDate + ", status=" + status + ", approval=" + approval + ", proRename=" + proRename
				+ ", proOrigin=" + proOrigin + ", hpCateName=" + hpCateName + ", hpName=" + hpName + ", hpNo=" + hpNo
				+ ", hpCateCode=" + hpCateCode + "]";
	}
	
	
	
}
