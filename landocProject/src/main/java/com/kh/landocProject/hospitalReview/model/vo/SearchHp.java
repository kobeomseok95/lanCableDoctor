package com.kh.landocProject.hospitalReview.model.vo;

import java.io.Serializable;
// 병원검색 모달창 vo
public class SearchHp implements Serializable{

   /**
    * 
    */
   private static final long serialVersionUID = 8222162224956063296L;
   
   private int hpNo;
   private String hpName;
   private String hpPhone;
   private String hpAddress;
  
   
   private int hpCateCode;
   private String hpCateName;
   
   public SearchHp() {
      
   }
   

   public SearchHp(int hpNo, String hpName, String hpPhone, String hpAddress) {
      this.hpNo = hpNo;
      this.hpName = hpName;
      this.hpPhone = hpPhone;
      this.hpAddress = hpAddress;
   }


	public SearchHp(int hpNo, String hpName, String hpPhone, String hpAddress, int hpCateCode, String hpCateName) {
		this.hpNo = hpNo;
		this.hpName = hpName;
		this.hpPhone = hpPhone;
		this.hpAddress = hpAddress;
		this.hpCateCode = hpCateCode;
		this.hpCateName = hpCateName;
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


	public String getHpPhone() {
		return hpPhone;
	}


	public void setHpPhone(String hpPhone) {
		this.hpPhone = hpPhone;
	}


	public String getHpAddress() {
		return hpAddress;
	}


	public void setHpAddress(String hpAddress) {
		this.hpAddress = hpAddress;
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


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "SearchHp [hpNo=" + hpNo + ", hpName=" + hpName + ", hpPhone=" + hpPhone + ", hpAddress=" + hpAddress
				+ ", hpCateCode=" + hpCateCode + ", hpCateName=" + hpCateName + "]";
	}

	
	
   
   
   
   
   
}