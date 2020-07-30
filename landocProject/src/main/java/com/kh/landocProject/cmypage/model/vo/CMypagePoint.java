package com.kh.landocProject.cmypage.model.vo;

public class CMypagePoint {
	private String allSumUsePoint;		// 총 사용 포인트
	private String monthSumUsePoint;	// 이번달 사용 포인트
	private String nowMonth;			// 현재 달
	private String cPoint;				// 잔여포인트
	private String useSavePoint;		// 사용 or 적립 포인트
	private String useSaveDate;			// 사용 or 적립 날짜
	private String pdHpName;			// 상품 or 병원 이름
	private String hpReNo;					// 리뷰 넘버
	private String adrNo;					// 답글 넘버
	public CMypagePoint() {
	}
	public CMypagePoint(String allSumUsePoint, String monthSumUsePoint, String nowMonth, String cPoint,
			String useSavePoint, String useSaveDate, String pdHpName, String hpReNo, String adrNo) {
		this.allSumUsePoint = allSumUsePoint;
		this.monthSumUsePoint = monthSumUsePoint;
		this.nowMonth = nowMonth;
		this.cPoint = cPoint;
		this.useSavePoint = useSavePoint;
		this.useSaveDate = useSaveDate;
		this.pdHpName = pdHpName;
		this.hpReNo = hpReNo;
		this.adrNo = adrNo;
	}
	public String getAllSumUsePoint() {
		return allSumUsePoint;
	}
	public void setAllSumUsePoint(String allSumUsePoint) {
		this.allSumUsePoint = allSumUsePoint;
	}
	public String getMonthSumUsePoint() {
		return monthSumUsePoint;
	}
	public void setMonthSumUsePoint(String monthSumUsePoint) {
		this.monthSumUsePoint = monthSumUsePoint;
	}
	public String getNowMonth() {
		return nowMonth;
	}
	public void setNowMonth(String nowMonth) {
		this.nowMonth = nowMonth;
	}
	public String getcPoint() {
		return cPoint;
	}
	public void setcPoint(String cPoint) {
		this.cPoint = cPoint;
	}
	public String getUseSavePoint() {
		return useSavePoint;
	}
	public void setUseSavePoint(String useSavePoint) {
		this.useSavePoint = useSavePoint;
	}
	public String getUseSaveDate() {
		return useSaveDate;
	}
	public void setUseSaveDate(String useSaveDate) {
		this.useSaveDate = useSaveDate;
	}
	public String getPdHpName() {
		return pdHpName;
	}
	public void setPdHpName(String pdHpName) {
		this.pdHpName = pdHpName;
	}
	public String getHpReNo() {
		return hpReNo;
	}
	public void setHpReNo(String hpReNo) {
		this.hpReNo = hpReNo;
	}
	public String getAdrNo() {
		return adrNo;
	}
	public void setAdrNo(String adrNo) {
		this.adrNo = adrNo;
	}
	@Override
	public String toString() {
		return "CMypagePoint [allSumUsePoint=" + allSumUsePoint + ", monthSumUsePoint=" + monthSumUsePoint
				+ ", nowMonth=" + nowMonth + ", cPoint=" + cPoint + ", useSavePoint=" + useSavePoint + ", useSaveDate="
				+ useSaveDate + ", pdHpName=" + pdHpName + ", hpReNo=" + hpReNo + ", adrNo=" + adrNo + "]";
	}
	
	
	
	
	
	
}
