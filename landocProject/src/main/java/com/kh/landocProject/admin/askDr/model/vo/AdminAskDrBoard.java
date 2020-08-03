package com.kh.landocProject.admin.askDr.model.vo;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import com.kh.landocProject.askDr.model.vo.AskDrReply;
import com.kh.landocProject.askDr.model.vo.SymptomsImage;

public class AdminAskDrBoard {
	private int adNo;
	private int rNo;
	private String title;
	private Date submitDate;
	private int height;
	private int weight;
	private int age;
	private String gender;
	private String caution;
	private String symptom;
	private String chooseStatus;
	private String categoryName;
	private String nickname;
	private String cNo;
	private int viewCount;
	private List<SymptomsImage> imgs;
	private List<AskDrReply> replys;

	public AdminAskDrBoard() {
	}

	public AdminAskDrBoard(int adNo, int rNo, String title, Date submitDate, int height, int weight, int age,
			String gender, String caution, String symptom, String chooseStatus, String categoryName, String nickname,
			String cNo, int viewCount, List<SymptomsImage> imgs, List<AskDrReply> replys) {
		this.adNo = adNo;
		this.rNo = rNo;
		this.title = title;
		this.submitDate = submitDate;
		this.height = height;
		this.weight = weight;
		this.age = age;
		this.gender = gender;
		this.caution = caution;
		this.symptom = symptom;
		this.chooseStatus = chooseStatus;
		this.categoryName = categoryName;
		this.nickname = nickname;
		this.cNo = cNo;
		this.viewCount = viewCount;
		this.imgs = imgs;
		this.replys = replys;
	}

	public int getAdNo() {
		return adNo;
	}

	public void setAdNo(int adNo) {
		this.adNo = adNo;
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getSubmitDate() {
		return submitDate;
	}

	public void setSubmitDate(Date submitDate) {
		this.submitDate = submitDate;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCaution() {
		return caution;
	}

	public void setCaution(String caution) {
		this.caution = caution;
	}

	public String getSymptom() {
		return symptom;
	}

	public void setSymptom(String symptom) {
		this.symptom = symptom;
	}

	public String getChooseStatus() {
		return chooseStatus;
	}

	public void setChooseStatus(String chooseStatus) {
		this.chooseStatus = chooseStatus;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getcNo() {
		return cNo;
	}

	public void setcNo(String cNo) {
		this.cNo = cNo;
	}

	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}

	public List<SymptomsImage> getImgs() {
		return imgs;
	}

	public void setImgs(List<SymptomsImage> imgs) {
		this.imgs = imgs;
	}

	public List<AskDrReply> getReplys() {
		return replys;
	}

	public void setReplys(List<AskDrReply> replys) {
		this.replys = replys;
	}

	@Override
	public String toString() {
		return "AdminAskDrBoard [adNo=" + adNo + ", rNo=" + rNo + ", title=" + title + ", submitDate=" + submitDate
				+ ", height=" + height + ", weight=" + weight + ", age=" + age + ", gender=" + gender + ", caution="
				+ caution + ", symptom=" + symptom + ", chooseStatus=" + chooseStatus + ", categoryName=" + categoryName
				+ ", nickname=" + nickname + ", cNo=" + cNo + ", viewCount=" + viewCount + ", imgs=" + imgs
				+ ", replys=" + replys + "]";
	}
}
