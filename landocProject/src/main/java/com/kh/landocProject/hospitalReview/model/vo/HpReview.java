package com.kh.landocProject.hospitalReview.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class HpReview implements Serializable{

   /**
    * 
    */
   private static final long serialVersionUID = -3806802473883310262L;
   
   
   private int rowNum;
   private int hpReNo;
   private String cNo;
   private String cNickName;
   private String cProfile;
   private int hpNo;
   private int hpCateCode;
   private String hpReTitle;
   private String hpReContent;
   private Date hpReDate;
   private String like;
   private double avgRate;
   private double explanation;
   private double kindness;
   private double waitingTime;
   private double trResult;
   private double sanitary;
   private double price;
   private String status;
   private double count;
   private String originFile;
   private String renameFile;
   private String filePath;
   
   public HpReview() {
   }

public HpReview(int rowNum, int hpReNo, String cNo, String cNickName, String cProfile, int hpNo, int hpCateCode,
		String hpReTitle, String hpReContent, Date hpReDate, String like, double avgRate, double explanation,
		double kindness, double waitingTime, double trResult, double sanitary, double price, String status,
		double count, String originFile, String renameFile, String filePath) {
	this.rowNum = rowNum;
	this.hpReNo = hpReNo;
	this.cNo = cNo;
	this.cNickName = cNickName;
	this.cProfile = cProfile;
	this.hpNo = hpNo;
	this.hpCateCode = hpCateCode;
	this.hpReTitle = hpReTitle;
	this.hpReContent = hpReContent;
	this.hpReDate = hpReDate;
	this.like = like;
	this.avgRate = avgRate;
	this.explanation = explanation;
	this.kindness = kindness;
	this.waitingTime = waitingTime;
	this.trResult = trResult;
	this.sanitary = sanitary;
	this.price = price;
	this.status = status;
	this.count = count;
	this.originFile = originFile;
	this.renameFile = renameFile;
	this.filePath = filePath;
}

public int getRowNum() {
	return rowNum;
}

public void setRowNum(int rowNum) {
	this.rowNum = rowNum;
}

public int getHpReNo() {
	return hpReNo;
}

public void setHpReNo(int hpReNo) {
	this.hpReNo = hpReNo;
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

public String getcProfile() {
	return cProfile;
}

public void setcProfile(String cProfile) {
	this.cProfile = cProfile;
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

public String getHpReTitle() {
	return hpReTitle;
}

public void setHpReTitle(String hpReTitle) {
	this.hpReTitle = hpReTitle;
}

public String getHpReContent() {
	return hpReContent;
}

public void setHpReContent(String hpReContent) {
	this.hpReContent = hpReContent;
}

public Date getHpReDate() {
	return hpReDate;
}

public void setHpReDate(Date hpReDate) {
	this.hpReDate = hpReDate;
}

public String getLike() {
	return like;
}

public void setLike(String like) {
	this.like = like;
}

public double getAvgRate() {
	return avgRate;
}

public void setAvgRate(double avgRate) {
	this.avgRate = avgRate;
}

public double getExplanation() {
	return explanation;
}

public void setExplanation(double explanation) {
	this.explanation = explanation;
}

public double getKindness() {
	return kindness;
}

public void setKindness(double kindness) {
	this.kindness = kindness;
}

public double getWaitingTime() {
	return waitingTime;
}

public void setWaitingTime(double waitingTime) {
	this.waitingTime = waitingTime;
}

public double getTrResult() {
	return trResult;
}

public void setTrResult(double trResult) {
	this.trResult = trResult;
}

public double getSanitary() {
	return sanitary;
}

public void setSanitary(double sanitary) {
	this.sanitary = sanitary;
}

public double getPrice() {
	return price;
}

public void setPrice(double price) {
	this.price = price;
}

public String getStatus() {
	return status;
}

public void setStatus(String status) {
	this.status = status;
}

public double getCount() {
	return count;
}

public void setCount(double count) {
	this.count = count;
}

public String getOriginFile() {
	return originFile;
}

public void setOriginFile(String originFile) {
	this.originFile = originFile;
}

public String getRenameFile() {
	return renameFile;
}

public void setRenameFile(String renameFile) {
	this.renameFile = renameFile;
}

public String getFilePath() {
	return filePath;
}

public void setFilePath(String filePath) {
	this.filePath = filePath;
}

public static long getSerialversionuid() {
	return serialVersionUID;
}

@Override
public String toString() {
	return "HpReview [rowNum=" + rowNum + ", hpReNo=" + hpReNo + ", cNo=" + cNo + ", cNickName=" + cNickName
			+ ", cProfile=" + cProfile + ", hpNo=" + hpNo + ", hpCateCode=" + hpCateCode + ", hpReTitle=" + hpReTitle
			+ ", hpReContent=" + hpReContent + ", hpReDate=" + hpReDate + ", like=" + like + ", avgRate=" + avgRate
			+ ", explanation=" + explanation + ", kindness=" + kindness + ", waitingTime=" + waitingTime + ", trResult="
			+ trResult + ", sanitary=" + sanitary + ", price=" + price + ", status=" + status + ", count=" + count
			+ ", originFile=" + originFile + ", renameFile=" + renameFile + ", filePath=" + filePath + "]";
}



	   
	}