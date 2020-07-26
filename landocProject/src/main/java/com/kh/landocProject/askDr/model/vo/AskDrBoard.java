package com.kh.landocProject.askDr.model.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class AskDrBoard implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -5916975588710992341L;
	private int rNo;					//rowNo
	private int bNo;					//boardNo
	private String bTitle;
	private String nickname;
	private String memberNo;
	private Date submitDate;
	private int height;
	private int weight;
	private int age;
	private String gender;
	private String caution;
	private String symptoms;
	private String categoryNo;
	private List<MultipartFile> symptomPicture;
	private int countImage;
	
	public AskDrBoard() {
	}

	public AskDrBoard(int rNo, int bNo, String bTitle, String nickname, String memberNo, Date submitDate, int height,
			int weight, int age, String gender, String caution, String symptoms, String categoryNo,
			List<MultipartFile> symptomPicture, int countImage) {
		this.rNo = rNo;
		this.bNo = bNo;
		this.bTitle = bTitle;
		this.nickname = nickname;
		this.memberNo = memberNo;
		this.submitDate = submitDate;
		this.height = height;
		this.weight = weight;
		this.age = age;
		this.gender = gender;
		this.caution = caution;
		this.symptoms = symptoms;
		this.categoryNo = categoryNo;
		this.symptomPicture = symptomPicture;
		this.countImage = countImage;
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
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

	public String getSymptoms() {
		return symptoms;
	}

	public void setSymptoms(String symptoms) {
		this.symptoms = symptoms;
	}

	public String getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(String categoryNo) {
		this.categoryNo = categoryNo;
	}

	public List<MultipartFile> getSymptomPicture() {
		return symptomPicture;
	}

	public void setSymptomPicture(List<MultipartFile> symptomPicture) {
		this.symptomPicture = symptomPicture;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public int getCountImage() {
		return countImage;
	}
	
	public void setCountImage(int countImage) {
		this.countImage = countImage;
	}

	@Override
	public String toString() {
		return "AskDrBoard [rNo=" + rNo + ", bNo=" + bNo + ", bTitle=" + bTitle + ", nickname=" + nickname
				+ ", memberNo=" + memberNo + ", submitDate=" + submitDate + ", height=" + height + ", weight=" + weight
				+ ", age=" + age + ", gender=" + gender + ", caution=" + caution + ", symptoms=" + symptoms
				+ ", categoryNo=" + categoryNo + ", symptomPicture=" + symptomPicture + ", countImage=" + countImage
				+ "]";
	}
	
	
}
