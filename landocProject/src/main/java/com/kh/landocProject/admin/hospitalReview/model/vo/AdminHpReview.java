package com.kh.landocProject.admin.hospitalReview.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class AdminHpReview implements Serializable{

   /**
    * 
    */
   private static final long serialVersionUID = 2891398709656254210L;
   
   private int hpNo;
   private String hpName;
   private int hpCateNo;
   private String hpCateName;
   private String cNo;
   private String cId;
   private String approval;
   
   private int hpReNo;
   private String hpReContent;
   private String like;
   private double avgRate;
   private double explanation;
   private double kindness;
   private double waitingTime;
   private double trResult;
   private double sanitary;
   private double price;
   private double count;
   private Date writeDate;
   private String originFile;
   private String renameFile;
   private String filePath;
   
   
   public AdminHpReview() {
   }


   public AdminHpReview(int hpNo, String hpName, int hpCateNo, String hpCateName, String cNo, String cId,
         String approval, int hpReNo, String hpReContent, String like, double avgRate, double explanation,
         double kindness, double waitingTime, double trResult, double sanitary, double price, double count,
         Date writeDate, String originFile, String renameFile, String filePath) {
      this.hpNo = hpNo;
      this.hpName = hpName;
      this.hpCateNo = hpCateNo;
      this.hpCateName = hpCateName;
      this.cNo = cNo;
      this.cId = cId;
      this.approval = approval;
      this.hpReNo = hpReNo;
      this.hpReContent = hpReContent;
      this.like = like;
      this.avgRate = avgRate;
      this.explanation = explanation;
      this.kindness = kindness;
      this.waitingTime = waitingTime;
      this.trResult = trResult;
      this.sanitary = sanitary;
      this.price = price;
      this.count = count;
      this.writeDate = writeDate;
      this.originFile = originFile;
      this.renameFile = renameFile;
      this.filePath = filePath;
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


   public int getHpCateNo() {
      return hpCateNo;
   }


   public void setHpCateNo(int hpCateNo) {
      this.hpCateNo = hpCateNo;
   }


   public String getHpCateName() {
      return hpCateName;
   }


   public void setHpCateName(String hpCateName) {
      this.hpCateName = hpCateName;
   }


   public String getcNo() {
      return cNo;
   }


   public void setcNo(String cNo) {
      this.cNo = cNo;
   }


   public String getcId() {
      return cId;
   }


   public void setcId(String cId) {
      this.cId = cId;
   }


   public String getApproval() {
      return approval;
   }


   public void setApproval(String approval) {
      this.approval = approval;
   }


   public int getHpReNo() {
      return hpReNo;
   }


   public void setHpReNo(int hpReNo) {
      this.hpReNo = hpReNo;
   }


   public String getHpReContent() {
      return hpReContent;
   }


   public void setHpReContent(String hpReContent) {
      this.hpReContent = hpReContent;
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


   public double getCount() {
      return count;
   }


   public void setCount(double count) {
      this.count = count;
   }


   public Date getWriteDate() {
      return writeDate;
   }


   public void setWriteDate(Date writeDate) {
      this.writeDate = writeDate;
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
      return "AdminHpReview [hpNo=" + hpNo + ", hpName=" + hpName + ", hpCateNo=" + hpCateNo + ", hpCateName="
            + hpCateName + ", cNo=" + cNo + ", cId=" + cId + ", approval=" + approval + ", hpReNo=" + hpReNo
            + ", hpReContent=" + hpReContent + ", like=" + like + ", avgRate=" + avgRate + ", explanation="
            + explanation + ", kindness=" + kindness + ", waitingTime=" + waitingTime + ", trResult=" + trResult
            + ", sanitary=" + sanitary + ", price=" + price + ", count=" + count + ", writeDate=" + writeDate
            + ", originFile=" + originFile + ", renameFile=" + renameFile + ", filePath=" + filePath + "]";
   }


   


}