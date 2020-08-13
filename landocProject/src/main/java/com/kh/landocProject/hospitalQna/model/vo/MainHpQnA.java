package com.kh.landocProject.hospitalQna.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class MainHpQnA implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -3281806959776837450L;

	private int hpQnANo;		// 병원 qna번호
	private String qnaTitle;	// 제목
	private Date qnaDate;		// 작성날짜
	private Date qnaReDate;		// 답변날짜
	private String reply;		// 답변내용
	private String yn;			// 답변유무
	private String cNo;			// 일반 회원번호
	private String cNickName;	// 일반 회원 닉네임
	private String drNo;		// 의사 회원번호
	private String drName;		// 의사 이름
	private String drProfile;	// 의사 프로필 사진
	private int hpNo;			// 병원 번호
	
	
	public MainHpQnA() {
	}


	public MainHpQnA(int hpQnANo, String qnaTitle, Date qnaDate, Date qnaReDate, String reply, String yn, String cNo,
			String cNickName, String drNo, String drName, String drProfile, int hpNo) {
		this.hpQnANo = hpQnANo;
		this.qnaTitle = qnaTitle;
		this.qnaDate = qnaDate;
		this.qnaReDate = qnaReDate;
		this.reply = reply;
		this.yn = yn;
		this.cNo = cNo;
		this.cNickName = cNickName;
		this.drNo = drNo;
		this.drName = drName;
		this.drProfile = drProfile;
		this.hpNo = hpNo;
	}


	public int getHpQnANo() {
		return hpQnANo;
	}


	public void setHpQnANo(int hpQnANo) {
		this.hpQnANo = hpQnANo;
	}


	public String getQnaTitle() {
		return qnaTitle;
	}


	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}


	public Date getQnaDate() {
		return qnaDate;
	}


	public void setQnaDate(Date qnaDate) {
		this.qnaDate = qnaDate;
	}


	public Date getQnaReDate() {
		return qnaReDate;
	}


	public void setQnaReDate(Date qnaReDate) {
		this.qnaReDate = qnaReDate;
	}


	public String getReply() {
		return reply;
	}


	public void setReply(String reply) {
		this.reply = reply;
	}


	public String getYn() {
		return yn;
	}


	public void setYn(String yn) {
		this.yn = yn;
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


	public String getDrProfile() {
		return drProfile;
	}


	public void setDrProfile(String drProfile) {
		this.drProfile = drProfile;
	}


	public int getHpNo() {
		return hpNo;
	}


	public void setHpNo(int hpNo) {
		this.hpNo = hpNo;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "MainHpQnA [hpQnANo=" + hpQnANo + ", qnaTitle=" + qnaTitle + ", qnaDate=" + qnaDate + ", qnaReDate="
				+ qnaReDate + ", reply=" + reply + ", yn=" + yn + ", cNo=" + cNo + ", cNickName=" + cNickName
				+ ", drNo=" + drNo + ", drName=" + drName + ", drProfile=" + drProfile + ", hpNo=" + hpNo + "]";
	}


	
	
}
