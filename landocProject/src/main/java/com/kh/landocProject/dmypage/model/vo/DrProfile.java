package com.kh.landocProject.dmypage.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class DrProfile implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8614287130092337879L;

	// DRCLIENT
	private String drNo;
	private String drName;
	private int hpNo;
	private String hpName;
	private int hpCateCode;
	private String hpCateName;
	private String drEmail;
	private int likeNum;
	private int dislikeNum;
	
	// PROFILEPHOTO
	private String proRename;
	
	// ASKDRREPLY
	private int adNo;				// 게시글 번호
	private String chooseStatus;	// 채택상태
	private double choosePer;		// 채택률
	
	// DRCOMMENT
	private int commentRowNum;
	private int drCommentNo;
	private Date drCommentDate;
	private String drComment;
	private String cNo;
	private String cNickName;
	
	public DrProfile() {
	}


	public DrProfile(String drNo, String drName, int hpNo, String hpName, int hpCateCode, String hpCateName,
			String drEmail, int likeNum, int dislikeNum, String proRename, int adNo, String chooseStatus,
			double choosePer, int commentRowNum, int drCommentNo, Date drCommentDate, String drComment, String cNo,
			String cNickName) {
		this.drNo = drNo;
		this.drName = drName;
		this.hpNo = hpNo;
		this.hpName = hpName;
		this.hpCateCode = hpCateCode;
		this.hpCateName = hpCateName;
		this.drEmail = drEmail;
		this.likeNum = likeNum;
		this.dislikeNum = dislikeNum;
		this.proRename = proRename;
		this.adNo = adNo;
		this.chooseStatus = chooseStatus;
		this.choosePer = choosePer;
		this.commentRowNum = commentRowNum;
		this.drCommentNo = drCommentNo;
		this.drCommentDate = drCommentDate;
		this.drComment = drComment;
		this.cNo = cNo;
		this.cNickName = cNickName;
	}


	public String getDrNo() {
		return drNo;
	}


	public void setDrNo(String drNo) {
		this.drNo = drNo;
	}


	public String getDrName() {
		return drName;
	}


	public void setDrName(String drName) {
		this.drName = drName;
	}


	public int getHpNo() {
		return hpNo;
	}


	public void setHpNo(int hpNo) {
		this.hpNo = hpNo;
	}


	public String getHpName() {
		return hpName;
	}


	public void setHpName(String hpName) {
		this.hpName = hpName;
	}


	public int getHpCateCode() {
		return hpCateCode;
	}


	public void setHpCateCode(int hpCateCode) {
		this.hpCateCode = hpCateCode;
	}


	public String getHpCateName() {
		return hpCateName;
	}


	public void setHpCateName(String hpCateName) {
		this.hpCateName = hpCateName;
	}


	public String getDrEmail() {
		return drEmail;
	}


	public void setDrEmail(String drEmail) {
		this.drEmail = drEmail;
	}


	public int getLikeNum() {
		return likeNum;
	}


	public void setLikeNum(int likeNum) {
		this.likeNum = likeNum;
	}


	public int getDislikeNum() {
		return dislikeNum;
	}


	public void setDislikeNum(int dislikeNum) {
		this.dislikeNum = dislikeNum;
	}


	public String getProRename() {
		return proRename;
	}


	public void setProRename(String proRename) {
		this.proRename = proRename;
	}


	public int getAdNo() {
		return adNo;
	}


	public void setAdNo(int adNo) {
		this.adNo = adNo;
	}


	public String getChooseStatus() {
		return chooseStatus;
	}


	public void setChooseStatus(String chooseStatus) {
		this.chooseStatus = chooseStatus;
	}


	public double getChoosePer() {
		return choosePer;
	}


	public void setChoosePer(double choosePer) {
		this.choosePer = choosePer;
	}


	public int getCommentRowNum() {
		return commentRowNum;
	}


	public void setCommentRowNum(int commentRowNum) {
		this.commentRowNum = commentRowNum;
	}


	public int getDrCommentNo() {
		return drCommentNo;
	}


	public void setDrCommentNo(int drCommentNo) {
		this.drCommentNo = drCommentNo;
	}


	public Date getDrCommentDate() {
		return drCommentDate;
	}


	public void setDrCommentDate(Date drCommentDate) {
		this.drCommentDate = drCommentDate;
	}


	public String getDrComment() {
		return drComment;
	}


	public void setDrComment(String drComment) {
		this.drComment = drComment;
	}


	public String getcNo() {
		return cNo;
	}


	public void setcNo(String cNo) {
		this.cNo = cNo;
	}


	public String getcNickName() {
		return cNickName;
	}


	public void setcNickName(String cNickName) {
		this.cNickName = cNickName;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "DrProfile [drNo=" + drNo + ", drName=" + drName + ", hpNo=" + hpNo + ", hpName=" + hpName
				+ ", hpCateCode=" + hpCateCode + ", hpCateName=" + hpCateName + ", drEmail=" + drEmail + ", likeNum="
				+ likeNum + ", dislikeNum=" + dislikeNum + ", proRename=" + proRename + ", adNo=" + adNo
				+ ", chooseStatus=" + chooseStatus + ", choosePer=" + choosePer + ", commentRowNum=" + commentRowNum
				+ ", drCommentNo=" + drCommentNo + ", drCommentDate=" + drCommentDate + ", drComment=" + drComment
				+ ", cNo=" + cNo + ", cNickName=" + cNickName + "]";
	}


}
