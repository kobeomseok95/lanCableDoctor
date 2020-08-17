package com.kh.landocProject.product.model.vo;

import java.io.Serializable;

public class ProductRecommand implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1596146290711819944L;
	
	private int pdNo;
	private String pdName;
	private int originPrice;
	private int sellPrice;
	private String volume;
	private String pdpRename;
	private String recommand;
	private int ctCode;
	private int discount;
	protected ProductRecommand() {
	}
	protected ProductRecommand(int pdNo, String pdName, int originPrice, int sellPrice, String volume, String pdpRename,
			String recommand, int ctCode, int discount) {
		this.pdNo = pdNo;
		this.pdName = pdName;
		this.originPrice = originPrice;
		this.sellPrice = sellPrice;
		this.volume = volume;
		this.pdpRename = pdpRename;
		this.recommand = recommand;
		this.ctCode = ctCode;
		this.discount = discount;
	}
	public int getPdNo() {
		return pdNo;
	}
	public void setPdNo(int pdNo) {
		this.pdNo = pdNo;
	}
	public String getPdName() {
		return pdName;
	}
	public void setPdName(String pdName) {
		this.pdName = pdName;
	}
	public int getOriginPrice() {
		return originPrice;
	}
	public void setOriginPrice(int originPrice) {
		this.originPrice = originPrice;
	}
	public int getSellPrice() {
		return sellPrice;
	}
	public void setSellPrice(int sellPrice) {
		this.sellPrice = sellPrice;
	}
	public String getVolume() {
		return volume;
	}
	public void setVolume(String volume) {
		this.volume = volume;
	}
	public String getPdpRename() {
		return pdpRename;
	}
	public void setPdpRename(String pdpRename) {
		this.pdpRename = pdpRename;
	}
	public String getRecommand() {
		return recommand;
	}
	public void setRecommand(String recommand) {
		this.recommand = recommand;
	}
	public int getCtCode() {
		return ctCode;
	}
	public void setCtCode(int ctCode) {
		this.ctCode = ctCode;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "ProductRecommand [pdNo=" + pdNo + ", pdName=" + pdName + ", originPrice=" + originPrice + ", sellPrice="
				+ sellPrice + ", volume=" + volume + ", pdpRename=" + pdpRename + ", recommand=" + recommand
				+ ", ctCode=" + ctCode + ", discount=" + discount + "]";
	}
	
	
	
}
