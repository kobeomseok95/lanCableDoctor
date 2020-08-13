package com.kh.landocProject.payment.model.vo;

import java.io.Serializable;

public class PayProduct implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 767599283343121707L;
	
	private int pdNo;
	private String pdName;
	private int OriginPrice;
	private int discount;
	private int sellPrice;
	private String thumbnail;
	private int ctCode;
	private int productCount;
	private String pdpRename;
	
	protected PayProduct() {
	}

	protected PayProduct(int pdNo, String pdName, int originPrice, int discount, int sellPrice, String thumbnail,
			int ctCode, int productCount, String pdpRename) {
		this.pdNo = pdNo;
		this.pdName = pdName;
		OriginPrice = originPrice;
		this.discount = discount;
		this.sellPrice = sellPrice;
		this.thumbnail = thumbnail;
		this.ctCode = ctCode;
		this.productCount = productCount;
		this.pdpRename = pdpRename;
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
		return OriginPrice;
	}

	public void setOriginPrice(int originPrice) {
		OriginPrice = originPrice;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public int getSellPrice() {
		return sellPrice;
	}

	public void setSellPrice(int sellPrice) {
		this.sellPrice = sellPrice;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public int getCtCode() {
		return ctCode;
	}

	public void setCtCode(int ctCode) {
		this.ctCode = ctCode;
	}

	public int getProductCount() {
		return productCount;
	}

	public void setProductCount(int productCount) {
		this.productCount = productCount;
	}

	public String getPdpRename() {
		return pdpRename;
	}

	public void setPdpRename(String pdpRename) {
		this.pdpRename = pdpRename;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "PayProduct [pdNo=" + pdNo + ", pdName=" + pdName + ", OriginPrice=" + OriginPrice + ", discount="
				+ discount + ", sellPrice=" + sellPrice + ", thumbnail=" + thumbnail + ", ctCode=" + ctCode
				+ ", productCount=" + productCount + ", pdpRename=" + pdpRename + "]";
	}

	
}
