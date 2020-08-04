package com.kh.landocProject.askDr.model.vo;

public class DrClient {
	private String drNo;
	private int hpNo;
	private String drName;
	private String drEmail;
	private int drLike;
	private int drDislike;
	private int profileNo;
	private String profileFileName;
	private String hpName;
	private String hpPostcode;
	private String hpAddress;
	private String hpCategoryName;
	private int chooseCount;
	private int answerCount;
	private int choosePer;
	
	public DrClient() {
	}

	public DrClient(String drNo, int hpNo, String drName, String drEmail, int drLike, int drDislike, int profileNo,
			String profileFileName, String hpName, String hpPostcode, String hpAddress, String hpCategoryName,
			int chooseCount, int answerCount, int choosePer) {
		this.drNo = drNo;
		this.hpNo = hpNo;
		this.drName = drName;
		this.drEmail = drEmail;
		this.drLike = drLike;
		this.drDislike = drDislike;
		this.profileNo = profileNo;
		this.profileFileName = profileFileName;
		this.hpName = hpName;
		this.hpPostcode = hpPostcode;
		this.hpAddress = hpAddress;
		this.hpCategoryName = hpCategoryName;
		this.chooseCount = chooseCount;
		this.answerCount = answerCount;
		this.choosePer = choosePer;
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

	public String getDrName() {
		return drName;
	}

	public void setDrName(String drName) {
		this.drName = drName;
	}

	public String getDrEmail() {
		return drEmail;
	}

	public void setDrEmail(String drEmail) {
		this.drEmail = drEmail;
	}

	public int getDrLike() {
		return drLike;
	}

	public void setDrLike(int drLike) {
		this.drLike = drLike;
	}

	public int getDrDislike() {
		return drDislike;
	}

	public void setDrDislike(int drDislike) {
		this.drDislike = drDislike;
	}

	public int getProfileNo() {
		return profileNo;
	}

	public void setProfileNo(int profileNo) {
		this.profileNo = profileNo;
	}

	public String getProfileFileName() {
		return profileFileName;
	}

	public void setProfileFileName(String profileFileName) {
		this.profileFileName = profileFileName;
	}

	public String getHpName() {
		return hpName;
	}

	public void setHpName(String hpName) {
		this.hpName = hpName;
	}

	public String getHpPostcode() {
		return hpPostcode;
	}

	public void setHpPostcode(String hpPostcode) {
		this.hpPostcode = hpPostcode;
	}

	public String getHpAddress() {
		return hpAddress;
	}

	public void setHpAddress(String hpAddress) {
		this.hpAddress = hpAddress;
	}

	public String getHpCategoryName() {
		return hpCategoryName;
	}

	public void setHpCategoryName(String hpCategoryName) {
		this.hpCategoryName = hpCategoryName;
	}

	public int getChooseCount() {
		return chooseCount;
	}

	public void setChooseCount(int chooseCount) {
		this.chooseCount = chooseCount;
	}

	public int getAnswerCount() {
		return answerCount;
	}

	public void setAnswerCount(int answerCount) {
		this.answerCount = answerCount;
	}

	public int getChoosePer() {
		return choosePer;
	}

	public void setChoosePer(int choosePer) {
		this.choosePer = choosePer;
	}

	@Override
	public String toString() {
		return "DrClient [drNo=" + drNo + ", hpNo=" + hpNo + ", drName=" + drName + ", drEmail=" + drEmail + ", drLike="
				+ drLike + ", drDislike=" + drDislike + ", profileNo=" + profileNo + ", profileFileName="
				+ profileFileName + ", hpName=" + hpName + ", hpPostcode=" + hpPostcode + ", hpAddress=" + hpAddress
				+ ", hpCategoryName=" + hpCategoryName + ", chooseCount=" + chooseCount + ", answerCount=" + answerCount
				+ ", choosePer=" + choosePer + "]";
	}
	
	
}
