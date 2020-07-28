package com.kh.landocProject.admin.hospitalReview.model.vo;

import java.io.Serializable;

public class SearchCondition implements Serializable{

   /**
    * 
    */
   private static final long serialVersionUID = 9115853518256861285L;

   private String none;
   private int hpNo;
   private String hpName;
   private int hpCateNo;
   private String hpCateName;
   private String cNo;
   private String approval;
   
   public SearchCondition() {
   }

   public SearchCondition(String none, int hpNo, String hpName, int hpCateNo, String hpCateName, String cNo,
         String approval) {
      this.none = none;
      this.hpNo = hpNo;
      this.hpName = hpName;
      this.hpCateNo = hpCateNo;
      this.hpCateName = hpCateName;
      this.cNo = cNo;
      this.approval = approval;
   }

   public String getNone() {
      return none;
   }

   public void setNone(String none) {
      this.none = none;
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

   public String getApproval() {
      return approval;
   }

   public void setApproval(String approval) {
      this.approval = approval;
   }

   public static long getSerialversionuid() {
      return serialVersionUID;
   }

   @Override
   public String toString() {
      return "SearchCondition [none=" + none + ", hpNo=" + hpNo + ", hpName=" + hpName + ", hpCateNo=" + hpCateNo
            + ", hpCateName=" + hpCateName + ", cNo=" + cNo + ", approval=" + approval + "]";
   }

   
   
}